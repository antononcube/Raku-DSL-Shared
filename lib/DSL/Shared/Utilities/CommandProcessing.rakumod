use v6;

=begin pod

=head1 DSL::Shared::Utilities::CommandProcessing

The module C<DSL::Shared::Utilities::CommandProcessing> has general functions for interpretation of natural speech
commands that specify computational workflows.

=end pod

unit module DSL::Shared::Utilities::CommandProcessing;

use DSL::Shared::Utilities::FuzzyMatching;
use DSL::Shared::Utilities::MetaSpecsProcessing;

#-----------------------------------------------------------
#| Default target to separator rules.
my Str %targetToSeparator{Str} =
        "Julia"            => "\n",
        "Julia-DataFrames" => "\n",
        "Python"           => "\n",
        "Python-pandas"    => "\n",
        "R"                => ";\n",
        "R-base"           => ";\n",
        "R-tidyverse"      => " %>%\n",
        "Raku"             => ";\n",
        "Raku-Ecosystem"   => ";\n",
        "Raku-Reshapers"   => ";\n",
        "Raku-System"      => ";\n",
        "SQL"              => ";\n",
        "SQL-Standard"     => ";\n",
        "Mathematica"      => ";\n",
        "WL"               => ";\n",
        "WL-Ecosystem"     => ";\n",
        "WL-System"        => ";\n",
        "WL-Entity"        => ";\n",
        "Bulgarian"        => "\n",
        "Korean"           => "\n",
        "Spanish"          => "\n";

my Str %targetToSeparator2{Str} = %targetToSeparator.grep({ $_.key.contains('-') }).map({ $_.key.subst('-', '::').Str => $_.value.Str }).Hash;
%targetToSeparator = |%targetToSeparator , |%targetToSeparator2;

our sub target-separator-rules() is export {
  return %targetToSeparator;
}

#-----------------------------------------------------------
#| Single line / basic parsing
sub ToWorkflowCodeBasic(Str $command, Grammar :$grammar!, :$actions!, :$rule = 'TOP', :$args = []) {

    die "The grammar rule ⎡$rule⎦ does not have a corresponding method in :\$actions class."
    unless $rule (elem) $actions.^methods>>.name;

    my $match = $grammar.parse($command.trim, :$actions, :$rule,  :$args):ignorecase;

    die 'Cannot parse the given command.' unless $match;

    return $match.made;
}

#-----------------------------------------------------------
#| This function is used by dedicated modules.
our proto ToWorkflowCode(Str $command, Grammar :$grammar, |) is export {*}

#| Interface for target specs
multi ToWorkflowCode( Str $command,
                      Grammar :$grammar!,
                      :$rule = 'TOP',
                      :$grammar-args = [],
                      :%targetToAction!,
                      :%targetToSeparator!,
                      Str :$target!,
                      :$userID = Whatever,
                      :$splitter = Whatever,
                      UInt:D :$degree = 1,
                      :$batch = Whatever,
                      Str :$format = 'code',
                      *%args) {

    # Get target (e.g. 'R::tidyverse') using
    #   DSL::Shared::Utilities::MetaSpecsProcessing::get-dsl-spec
    my $specTarget = get-dsl-spec($command, 'target', :$splitter);
    my $specUserID = get-dsl-spec($command, 'user-id', :$splitter);

    $specTarget = $specTarget ?? $specTarget<DSLTARGET> !! $target;
    $specUserID = ($specUserID and $specUserID<USERID> !(elem) <NONE NULL>) ?? $specUserID<USERID> !! $userID;

    die 'Unknown target.' unless %targetToAction{$specTarget}:exists;

    # Get the actions class for target
    my $actions = %targetToAction{$specTarget};
    with $actions {
        if $specUserID.isa(Str) { $actions.userID = $specUserID }
    } else {
        $actions = $specUserID.isa(Str) ?? %targetToAction{$specTarget}.new(userID => $specUserID) !! %targetToAction{$specTarget}.new;
    }

    # Delegate
    ToWorkflowCode($command,
            :$grammar, :$actions, :$rule, :$grammar-args,
            :$splitter, separator => %targetToSeparator{$specTarget},
            :$degree, :$batch,
            :$format)
}


#| Multi-line parsing
multi ToWorkflowCode( Str $command,
                      Grammar :$grammar!,
                      :$rule = 'TOP',
                      :$grammar-args = [],
                      :$actions!,
                      :$separator = Whatever,
                      :$splitter = Whatever,
                      UInt:D :$degree = 1,
                      :$batch is copy = 1,
                      Str :$format = 'code',
                     ) {



    # Determine splitter
    my &rxSplit = process-splitter($splitter);

    # Split into single line commands
    my @commandLines = $command.trim.split(&rxSplit);

    @commandLines = @commandLines.grep({ $_.Str.chars > 0 });

    # Parse each single line command
    my @cmdLines = do if @commandLines.elems > 1 && $degree > 1 {
        # Determine the batch size
        given $batch {
            when $_ ~~ Int:D && $_ > 0 { }
            when Whatever {
                $batch = @commandLines.elems div $degree;
                if @cmdLines.elems mod $degree { $batch++ }
            }
            default {
                die 'The value of $batch is expected to be a positive integer or Whatever.'
            }
        }
        # Parallel execution
        @commandLines.hyper(:$degree, :$batch).map({ ToWorkflowCodeBasic($_, :$grammar, :$actions, :$rule, args => $grammar-args) });
    } else {
        # Sequential execution
        @commandLines.map({ ToWorkflowCodeBasic($_, :$grammar, :$actions, :$rule, args => $grammar-args) });
    }

    # Get the pairs results
    my %cmdPairs = grep { $_ ~~ Pair }, @cmdLines;

    # Remove parsing results that are pairs (like SETUPCODE or DSLTARGET)
    @cmdLines = grep { $_ !~~ Pair }, @cmdLines;

    # Get the separator
    my Str $sep;
    if $separator.isa(Whatever) {
        if 'separator' !(elem) $actions.^methods>>.name {
            die 'Cannot get a separator with the specified actions.'
        } else {
            $sep = $actions.separator()
        }
    } elsif $separator.isa(Str) {
        $sep = $separator
    } else {
        die 'The argument :$separator is expected to be a string or Whatever.'
    }

    # Post-processing
    my $res;
    if @cmdLines.all ~~ Str:D {
        # Remove empty lines and join with separator
        my $sep2 = $sep.trim;
        $res = @cmdLines.grep({ $_.trim.chars && $_.trim ne $sep2 }).join($sep).trim;

        # Remove empty lines with "monad semicolons" only
        # Keeping this here:
        # it was taking %50 of the computations after dld was replaced with edit-distance.
        # Because had the regex had to be compiled, etc.
        # $res = $res.subst(/ ^^ \h* <{ '\'' ~ $sep.trim ~ '\'' }> \h* /, ''):g;
    } else {
        $res = @cmdLines
    }

    # Result
    my %rakuRes = %cmdPairs , %(CODE => $res);
    return post-process-result(%rakuRes, $format);
}

#-----------------------------------------------------------
#| Post process interpretation results.
multi post-process-result( %rakuRes, Str $format ) {

    if $format.lc (elem) <object hash> {
        return %rakuRes;
    } elsif $format.lc eq 'raku' {
        return %rakuRes.raku;
    } elsif $format.lc eq 'code' {
        return %rakuRes<CODE>;
    } else {
        warn "Unknown format: $format. Using 'Hash' instead.";
        return %rakuRes;
    }
}
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
sub ToWorkflowCodeBasic(Str $command, Grammar :$grammar!, :$actions!) {

    die 'The argument :$actions is not an actions class.' unless 'TOP' (elem) $actions.^methods>>.name;

    my $match = $grammar.parse($command.trim, :$actions):ignorecase;

    die 'Cannot parse the given command.' unless $match;

    return $match.made;
}

#-----------------------------------------------------------
#| This function is used by dedicated modules.
our proto ToWorkflowCode(Str $command, Grammar :$grammar, |) is export {*}

#| Interface for target specs
multi ToWorkflowCode( Str $command,
                      Grammar :$grammar!,
                      :%targetToAction!,
                      :%targetToSeparator!,
                      Str :$target!,
                      :$userID = Whatever,
                      Str :$format = 'code',
                      :$splitter = Whatever,
                      *%args) {

    # Get target (e.g. 'R::tidyverse') using
    #   DSL::Shared::Utilities::MetaSpecsProcessing::get-dsl-spec
    my $specTarget = get-dsl-spec($command, 'target', :$splitter);
    my $specUserID = get-dsl-spec($command, 'user-id', :$splitter);

    $specTarget = $specTarget ?? $specTarget<DSLTARGET> !! $target;
    $specUserID = ($specUserID and $specUserID<USERID> !(elem) <NONE NULL>) ?? $specUserID<USERID> !! $userID;

    die 'Unknown target.' unless %targetToAction{$specTarget}:exists;

    # Get the actions class for target
    my $actions = $specUserID.isa(Str) ?? %targetToAction{$specTarget}.new(userID => $specUserID) !! %targetToAction{$specTarget}.new;

    # Delegate
    ToWorkflowCode($command, :$grammar, :$actions, separator => %targetToSeparator{$specTarget}, :$format, :$splitter)
}


#| Multi-line parsing
multi ToWorkflowCode( Str $command,
                      Grammar :$grammar!,
                      :$actions!,
                      :$separator = Whatever,
                      Str :$format = 'code',
                      :$splitter = Whatever ) {


    # Determine splitter
    my &rxSplit = process-splitter($splitter);

    # Split in single line commands
    my @commandLines = $command.trim.split(&rxSplit);

    @commandLines = grep { $_.Str.chars > 0 }, @commandLines;

    # Parse each single line command
    my @cmdLines = map { ToWorkflowCodeBasic($_, :$grammar, :$actions) }, @commandLines;

    # Get the pairs results
    my %cmdPairs = grep { $_.^name eq 'Pair' }, @cmdLines;

    # Remove parsing results that are pairs (like SETUPCODE or DSLTARGET)
    @cmdLines = grep { $_.^name eq 'Str' }, @cmdLines;

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

    # Join with separator
    my Str $res = @cmdLines.join( $sep ).trim;

    # Remove empty lines with "monad semicolons" only
    $res = $res.subst( / ^^ \h* <{ '\'' ~ $sep.trim ~ '\'' }> \h* /, ''):g;

    # Result
    my %rakuRes = %cmdPairs , %(CODE => $res);
    post-process-result(%rakuRes, $format )
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
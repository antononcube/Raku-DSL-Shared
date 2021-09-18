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
#| Single line / basic parsing
multi ToWorkflowCodeBasic(Str $command, Grammar :$grammar!, :$actions!) {

    die 'The argument :$actions is not an actions class.' unless 'TOP' (elem) $actions.^method_names;

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
                      :$splitter = Whatever) {

    # Get target (e.g. 'R::tidyverse') using
    #   DSL::Shared::Utilities::MetaSpecsProcessing::get-dsl-spec
    my $specTarget = get-dsl-spec($command, 'target');
    my $specUserID = get-dsl-spec($command, 'user-id');

    $specTarget = $specTarget ?? $specTarget<DSLTARGET> !! $target;
    $specUserID = ($specUserID and $specUserID<USERID> !(elem) <NONE NULL>) ?? $specUserID<USERID> !! $userID;

    die 'Unknown target.' unless %targetToAction{$specTarget}:exists;

    # Get the actions class for target
    my $actions = $specUserID.isa(Str) ?? %targetToAction{$target}.new(userID => $specUserID) !! %targetToAction{$target};

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
    my &rxSplit;
    given $splitter {
        when Str { &rxSplit = / $splitter \s* / }
        when Whatever { &rxSplit = rx/ [ ';' | \n ] \s* / }
        default { &rxSplit = $splitter }
    }

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
        if 'separator' !(elem) $actions.^method_names {
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
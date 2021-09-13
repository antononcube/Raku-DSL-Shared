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
sub has-semicolon (Str $word) {
    return defined index $word, ';';
}

#-----------------------------------------------------------
#| This function is used by dedicated modules.
our proto ToWorkflowCode(Str $command, Grammar :$grammar, :%targetToAction!, :%targetToSeparator!, Str :$target! ) is export {*}

multi ToWorkflowCode( Str $command where not has-semicolon($command),
                      Grammar :$grammar!,
                      :%targetToAction!,
                      :%targetToSeparator!,
                      Str :$target! ) {

    die 'Unknown target.' unless %targetToAction{$target}:exists;

    my $match = $grammar.parse($command.trim, actions => %targetToAction{$target} );
    die 'Cannot parse the given command.' unless $match;
    return $match.made;
}

multi ToWorkflowCode( Str $command where has-semicolon($command),
                      Grammar :$grammar!,
                      :%targetToAction!,
                      :%targetToSeparator!,
                      Str :$target! ) {

    my $specTarget = DSL::Shared::Utilities::MetaSpecsProcessing::get-dsl-spec($command, 'target');

    $specTarget = $specTarget ?? $specTarget<DSLTARGET> !! $target;

    die 'Unknown target.' unless %targetToAction{$specTarget}:exists;

    my @commandLines = $command.trim.split(/ ';' \s* /);

    @commandLines = grep { $_.Str.chars > 0 }, @commandLines;

    my @cmdLines = map { ToWorkflowCode($_, :$grammar, :%targetToAction, :%targetToSeparator, target => $specTarget ) }, @commandLines;

    @cmdLines = grep { $_.^name eq 'Str' }, @cmdLines;

    my Str $res = @cmdLines.join( %targetToSeparator{$specTarget} ).trim;

    return $res.subst( / ^^ \h* <{ '\'' ~ %targetToSeparator{$specTarget}.trim ~ '\'' }> \h* /, ''):g
}

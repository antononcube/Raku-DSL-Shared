use v6;

use DSL::Shared::Roles::English::PipelineCommand;
use DSL::Shared::Actions::English::PipelineCommand;

unit module DSL::Shared::Utilities::MetaSpecsProcessing;

#-----------------------------------------------------------
my %specToRule =
        "any" => "dsl-spec-command",
        "module" => "dsl-module-command",
        "dsl-module" => "dsl-module-command",
        "dsl-module-command" => "dsl-module-command",
        "target" => "dsl-translation-target-command",
        "dsl-target" => "dsl-translation-target-command",
        "dsl-translation-target-command" => "dsl-translation-target-command";

#-----------------------------------------------------------
grammar ParseObj
        does DSL::Shared::Roles::English::PipelineCommand {
    rule TOP { <pipeline-command>  }
};

#-----------------------------------------------------------
sub has-semicolon (Str $word) {
    return defined index $word, ';';
}

#-----------------------------------------------------------
proto get-dsl-spec(Str $c, Str $r) is export {*};

multi get-dsl-spec(Str $command where not has-semicolon($command), Str $ruleSpec) {

    die 'Unknown rule specification.' unless %specToRule{$ruleSpec}:exists;

    my $res =
            ParseObj.parse(
                    $command,
                    rule => %specToRule{$ruleSpec},
                    actions => DSL::Shared::Actions::English::PipelineCommand).made;

    if $res.^name eq 'Pair' {
        return $res
    }
    return {};
}

multi get-dsl-spec (Str $command where has-semicolon($command), Str $ruleSpec = 'module') {

    die 'Unknown rule specification.' unless %specToRule{$ruleSpec}:exists;

    my @commandLines = $command.trim.split(/ ';' \s* /);

    @commandLines = grep { $_.Str.chars > 0 }, @commandLines;

    my @dslLines = map { get-dsl-spec($_, $ruleSpec) }, @commandLines;

    @dslLines = grep({ $_ }, @dslLines);

    return @dslLines.elems > 0 ?? Hash.new(@dslLines) !! {};
}

#-----------------------------------------------------------
proto get-dsl-parser-residual(Grammar $grammar, Str $command, Str :$norm = 'sum' ) is export {*};

multi get-dsl-parser-residual(Grammar $grammar, Str $command where not has-semicolon($command), Str :$norm = 'sum' ) {
    my Match $res;
    quietly {
        $res = $grammar.subparse($command);
    }
    return $command.chars - $res.chars;
}

multi get-dsl-parser-residual(Grammar $grammar, Str $command where has-semicolon($command), Str :$norm = 'sum' ) {

    my $knownNorms = set('sum', '1', 'max', 'inf', 'infinity');

    die "Unknown norm specification. The argument norm should be one of: $knownNorms ." unless $norm ∈ $knownNorms;

    my @commandLines = $command.trim.split(/ ';' \s* /);

    @commandLines = grep { $_.Str.chars > 0 }, @commandLines;

    my @residuals = map { get-dsl-parser-residual($grammar, $_, :$norm) }, @commandLines;

    if $norm ∈ set('inf', 'infinity', 'max') {
        return @residuals.max;
    } elsif  $norm ∈ set('1', 'sum') {
        return [+] @residuals;
    }
    return [+] @residuals;
}
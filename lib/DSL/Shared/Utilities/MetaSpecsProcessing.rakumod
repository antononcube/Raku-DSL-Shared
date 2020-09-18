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
proto get-dsl-spec($c, $r) is export {
*
};

multi get-dsl-spec(Str $command where not has-semicolon($command), $ruleSpec) {

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

use v6;

use DSL::Shared::Utilities::MetaSpecsProcessing;
use JSON::Marshal;

unit module DSL::Shared::Utilities::ComprehensiveTranslation;

#-----------------------------------------------------------
use DSL::English::ClassificationWorkflows;
use DSL::English::DataQueryWorkflows;
use DSL::English::EpidemiologyModelingWorkflows;
use DSL::English::LatentSemanticAnalysisWorkflows;
use DSL::English::QuantileRegressionWorkflows;
use DSL::English::RecommenderWorkflows;
use DSL::English::SearchEngineQueries;

#-----------------------------------------------------------
# DSL target to DSL module
#-----------------------------------------------------------

#-----------------------------------------------------------
# DSL module to DSL grammar
#-----------------------------------------------------------
my %moduleToDSLGrammar =

        "DSL::English::ClassificationWorkflows" => DSL::English::ClassificationWorkflows::Grammar,
        "DSL::English::DataQueryWorkflows" => DSL::English::DataQueryWorkflows::Grammar,
        "DSL::English::EpidemiologyModelingWorkflows" => DSL::English::EpidemiologyModelingWorkflows::Grammar,
        "DSL::English::LatentSemanticAnalysisWorkflows" => DSL::English::LatentSemanticAnalysisWorkflows::Grammar,
        "DSL::English::QuantileRegressionWorkflows" => DSL::English::QuantileRegressionWorkflows::Grammar,
        "DSL::English::RecommenderWorkflows" => DSL::English::RecommenderWorkflows::Grammar,
        "DSL::English::SearchEngineQueries" => DSL::English::SearchEngineQueries::Grammar;


#-----------------------------------------------------------
# DSL module to DSL workflow code function
#-----------------------------------------------------------
my %moduleToDSLFunction =

        "DSL::English::ClassificationWorkflows" => "ToClassificationWorkflowCode",
        "DSL::English::DataQueryWorkflows" => "ToDataQueryWorkflowCode",
        "DSL::English::EpidemiologyModelingWorkflows" => "ToEpidemiologyModelingWorkflowCode",
        "DSL::English::LatentSemanticAnalysisWorkflows" => "ToLatentSemanticAnalysisWorkflowCode",
        "DSL::English::QuantileRegressionWorkflows" => "ToQuantileRegressionWorkflowCode",
        "DSL::English::RecommenderWorkflows" => "ToRecommenderWorkflowCode",
        "DSL::English::SearchEngineQueries" => "ToSearchEngineQueryCode";


#-----------------------------------------------------------
# Shortcuts for DSL module specs
#-----------------------------------------------------------
my %englishModuleFunctions =

        "DSL::English::ClassificationWorkflows" => &ToClassificationWorkflowCode,
        "DSL::English::DataQueryWorkflows" => &ToDataQueryWorkflowCode,
        "DSL::English::EpidemiologyModelingWorkflows" => &ToEpidemiologyModelingWorkflowCode,
        "DSL::English::LatentSemanticAnalysisWorkflows" => &ToLatentSemanticAnalysisWorkflowCode,
        "DSL::English::QuantileRegressionWorkflows" => &ToQuantileRegressionWorkflowCode,
        "DSL::English::RecommenderWorkflows" => &ToRecommenderWorkflowCode,
        "DSL::English::SearchEngineQueries" => &ToSearchEngineQueryCode;


#-----------------------------------------------------------
# Module shortcut rules
#-----------------------------------------------------------
my %englishModuleShortcuts =

        ClCon => "DSL::English::ClassificationWorkflows",
        ClassificationWorkflows => "DSL::English::ClassificationWorkflows",
        "DSL::English::ClassificationWorkflows" => "DSL::English::ClassificationWorkflows",

        DataQueryWorkflows => "DSL::English::DataQueryWorkflows",
        "DSL::English::DataQueryWorkflows" => "DSL::English::DataQueryWorkflows",

        ECMMon => "DSL::English::EpidemiologyModelingWorkflows",
        EpidemiologyModelingWorkflows => "DSL::English::EpidemiologyModelingWorkflows",
        "DSL::English::EpidemiologyModelingWorkflows" => "DSL::English::EpidemiologyModelingWorkflows",

        LSAMon => "DSL::English::LatentSemanticAnalysisWorkflows",
        LatentSemanticAnalysisWorkflows => "DSL::English::LatentSemanticAnalysisWorkflows",
        "DSL::English::LatentSemanticAnalysisWorkflows" => "DSL::English::LatentSemanticAnalysisWorkflows",

        QRMon => "DSL::English::QuantileRegressionWorkflows",
        QuantileRegressionWorkflows => "DSL::English::QuantileRegressionWorkflows",
        "DSL::English::QuantileRegressionWorkflows" => "DSL::English::QuantileRegressionWorkflows",

        SMRMon => "DSL::English::RecommenderWorkflows",
        RecommenderWorkflows => "DSL::English::RecommenderWorkflows",
        "DSL::English::RecommenderWorkflows" => "DSL::English::RecommenderWorkflows",

        "SearchEngineQueries" => "DSL::English::SearchEngineQueries",
        "DSL::English::SearchEngineQueries" => "DSL::English::SearchEngineQueries";


#-----------------------------------------------------------
my %languageDispatch =
        English => %englishModuleShortcuts;

#-----------------------------------------------------------
proto pick-dsl(Str $command, %dslToGrammar = %moduleToDSLGrammar) is export {*};

multi pick-dsl(Str $command, %dslToGrammar = %moduleToDSLGrammar) {
    my %res = Hash.new( map({ $_.key => get-dsl-parser-residual($_.value, $command, norm => 'sum') }, %dslToGrammar.pairs) );
    say %res;
    my $minRes = %res.min({ $_.value }).value;
    say grep( { $_.value == $minRes}, %res.pairs );
    return %res.min({ $_.value }).key;
}

#-----------------------------------------------------------
proto ToDSLCode(Str $command, Str :$language = 'English', Str :$format = 'raku', Bool :$guessGrammar = True) is export {
*
};

multi ToDSLCode(Str $command, Str :$language = 'English', Str :$format = 'raku', Bool :$guessGrammar = True) {

    die "Unknown language: $language." unless %languageDispatch{$language}:exists;

    my %dslSpecs = get-dsl-spec($command, 'any');

    if not (%dslSpecs and %dslSpecs{'DSL'}:exists) {
        die "No DSL module specification command." unless $guessGrammar;

        %dslSpecs = %dslSpecs, 'DSL' => pick-dsl( $command, %moduleToDSLGrammar );
    }

    my $dsl = %dslSpecs{'DSL'};

    die "Unknown DSL spec: $dsl." unless  %languageDispatch{$language}{$dsl}:exists;

    my &dslFunc = %englishModuleFunctions{%languageDispatch{$language}{$dsl}};
    my $code = &dslFunc($command);

    my $dslTarget = %dslSpecs{'DSLTARGET'}:exists ?? %dslSpecs{'DSLTARGET'} !! 'None';

    my %rakuRes = Hash.new(%dslSpecs, { Code => $code, DSLTARGET => $dslTarget, DSLFUNCTION => &dslFunc.raku });
    %rakuRes = %rakuRes.sort({ $^a.key });

    if $format.lc eq 'raku' {
        return %rakuRes;
    } elsif $format.lc eq 'json' {
        return marshal(%rakuRes);
    } else {
        note "Unknown format: $format. Using 'raku' instead.";
        return %rakuRes;
    }
}


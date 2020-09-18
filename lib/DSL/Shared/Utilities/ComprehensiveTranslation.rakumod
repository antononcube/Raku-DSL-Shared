use v6;

use DSL::Shared::Utilities::MetaSpecsProcessing;

unit module DSL::Shared::Utilities::ComprehensiveTranslation;

#-----------------------------------------------------------
use DSL::English::ClassificationWorkflows;
use DSL::English::DataQueryWorkflows;
use DSL::English::EpidemiologyModelingWorkflows;
use DSL::English::LatentSemanticAnalysisWorkflows;
use DSL::English::QuantileRegressionWorkflows;
use DSL::English::RecommenderWorkflows;

my %specToEnglishDSLFunction =

ClCon => &ToClassificationWorkflowCode,
ClassificationWorkflows => &ToClassificationWorkflowCode,
"DSL::English::ClassificationWorkflows" => &ToClassificationWorkflowCode,

DataQueryWorkflows => &ToDataQueryWorkflowCode,
"DSL::English::DataQueryWorkflows" => &ToDataQueryWorkflowCode,

ECMMon => &ToEpidemiologyModelingWorkflowCode,
EpidemiologyModelingWorkflows => &ToEpidemiologyModelingWorkflowCode,
"DSL::English::EpidemiologyModelingWorkflows" => &ToEpidemiologyModelingWorkflowCode,

LSAMon => &ToLatentSemanticAnalysisWorkflowCode,
LatentSemanticAnalysisWorkflows => &ToLatentSemanticAnalysisWorkflowCode,
"DSL::English::LatentSemanticAnalysisWorkflows" => &ToLatentSemanticAnalysisWorkflowCode,

QRMon => &ToQuantileRegressionWorkflowCode,
QuantileRegressionWorkflows => &ToQuantileRegressionWorkflowCode,
"DSL::English::QuantileRegressionWorkflows" => &ToQuantileRegressionWorkflowCode,

SMRMon => &ToRecommenderWorkflowCode,
RecommenderWorkflows => &ToRecommenderWorkflowCode,
"DSL::English::RecommenderWorkflows" => &ToRecommenderWorkflowCode
;

my %languageDispatch =
English => %specToEnglishDSLFunction;

#-----------------------------------------------------------
proto ToDSLCode( Str $c, $l = 'English') is export {*};

multi ToDSLCode(Str $command, $language = 'English' ) {

    die "Unknown language: $language." unless %languageDispatch{$language}:exists;

    my %dslSpecs = get-dsl-spec( $command, 'any' );

    die "No DSL module specification command." unless %dslSpecs and %dslSpecs{'DSL'}:exists;

    my $dsl = %dslSpecs{'DSL'};

    die "Uknown DSL spec: $dsl." unless  %languageDispatch{$language}{$dsl}:exists;

    return  %languageDispatch{$language}{$dsl}($command);
}


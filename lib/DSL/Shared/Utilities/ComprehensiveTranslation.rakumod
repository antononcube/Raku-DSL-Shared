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

#-----------------------------------------------------------
# DSL target to DSL module
#-----------------------------------------------------------

#-----------------------------------------------------------
# DSL module to DSL workflow code function
#-----------------------------------------------------------
my %moduleToDSLFunction =

  "DSL::English::ClassificationWorkflows"         => "ToClassificationWorkflowCode",
  "DSL::English::DataQueryWorkflows"              => "ToDataQueryWorkflowCode",
  "DSL::English::EpidemiologyModelingWorkflows"   => "ToEpidemiologyModelingWorkflowCode",
  "DSL::English::LatentSemanticAnalysisWorkflows" => "ToLatentSemanticAnalysisWorkflowCode",
  "DSL::English::QuantileRegressionWorkflows"     => "ToQuantileRegressionWorkflowCode",
  "DSL::English::RecommenderWorkflows"            => "ToRecommenderWorkflowCode",
  "DSL::English::SearchEngineQueries"             => "ToSearchEngineQueryCode" ;


#-----------------------------------------------------------
# Shortcuts for DSL module specs
#-----------------------------------------------------------
my %englishModuleFunctions =

"DSL::English::ClassificationWorkflows"         => &ToClassificationWorkflowCode,
"DSL::English::DataQueryWorkflows"              => &ToDataQueryWorkflowCode,
"DSL::English::EpidemiologyModelingWorkflows"   => &ToEpidemiologyModelingWorkflowCode,
"DSL::English::LatentSemanticAnalysisWorkflows" => &ToLatentSemanticAnalysisWorkflowCode,
"DSL::English::QuantileRegressionWorkflows"     => &ToQuantileRegressionWorkflowCode,
"DSL::English::RecommenderWorkflows"            => &ToRecommenderWorkflowCode;

#-----------------------------------------------------------
# Module shortcut rules
#-----------------------------------------------------------
my %englishModuleShortcuts =

ClCon                                           => "DSL::English::ClassificationWorkflows",
ClassificationWorkflows                         => "DSL::English::ClassificationWorkflows",
"DSL::English::ClassificationWorkflows"         => "DSL::English::ClassificationWorkflows",

DataQueryWorkflows                              => "DSL::English::DataQueryWorkflows",
"DSL::English::DataQueryWorkflows"              => "DSL::English::DataQueryWorkflows",

ECMMon                                          => "DSL::English::EpidemiologyModelingWorkflows",
EpidemiologyModelingWorkflows                   => "DSL::English::EpidemiologyModelingWorkflows",
"DSL::English::EpidemiologyModelingWorkflows"   => "DSL::English::EpidemiologyModelingWorkflows",

LSAMon                                          => "DSL::English::LatentSemanticAnalysisWorkflows",
LatentSemanticAnalysisWorkflows                 => "DSL::English::LatentSemanticAnalysisWorkflows",
"DSL::English::LatentSemanticAnalysisWorkflows" => "DSL::English::LatentSemanticAnalysisWorkflows",

QRMon                                           => "DSL::English::QuantileRegressionWorkflows",
QuantileRegressionWorkflows                     => "DSL::English::QuantileRegressionWorkflows",
"DSL::English::QuantileRegressionWorkflows"     => "DSL::English::QuantileRegressionWorkflows",

SMRMon                                          => "DSL::English::RecommenderWorkflows",
RecommenderWorkflows                            => "DSL::English::RecommenderWorkflows",
"DSL::English::RecommenderWorkflows"            => "DSL::English::RecommenderWorkflows";

#-----------------------------------------------------------
my %languageDispatch =
English => %englishModuleShortcuts;

#-----------------------------------------------------------
proto ToDSLCode( Str $command, Str :$language = 'English', Str :$format = 'raku' ) is export {*};

multi ToDSLCode( Str $command, Str :$language = 'English', Str :$format = 'raku' ) {

    die "Unknown language: $language." unless %languageDispatch{$language}:exists;

    my %dslSpecs = get-dsl-spec( $command, 'any' );

    die "No DSL module specification command." unless %dslSpecs and %dslSpecs{'DSL'}:exists;

    my $dsl = %dslSpecs{'DSL'};

    die "Uknown DSL spec: $dsl." unless  %languageDispatch{$language}{$dsl}:exists;

    my &dslFunc = %englishModuleFunctions{%languageDispatch{$language}{$dsl}};
    my $code = &dslFunc($command);

    my $dslTarget = %dslSpecs{'DSLTARGET'}:exists ?? %dslSpecs{'DSLTARGET'} !! 'None' ;

    my %rakuRes = Hash.new( %dslSpecs, { Code => $code, DSLTARGET => $dslTarget, DSLFUNCTION => &dslFunc.raku } );
    %rakuRes = %rakuRes.sort( { $^a.key } );

    if $format.lc eq 'raku' {
        return %rakuRes;
    } elsif $format.lc eq 'json' {
        return marshal(%rakuRes);
    } else {
        note "Unknown format: $format. Using 'raku' instead.";
        return %rakuRes;
    }
}


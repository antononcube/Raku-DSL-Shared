
# Most likely a better place for this file is a separate GitHub/Raku repository/package.
# The functionality here is not "shared" -- it is "overall."

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

my %moduleToPythonTarget =

        "DSL::English::ClassificationWorkflows" => "Python-ClCon",
        "DSL::English::DataQueryWorkflows" => "Python-pandas",
        "DSL::English::EpidemiologyModelingWorkflows" => "Python-ECMMon",
        "DSL::English::LatentSemanticAnalysisWorkflows" => "Python-LSAMon",
        "DSL::English::QuantileRegressionWorkflows" => "Python-QRMon",
        "DSL::English::RecommenderWorkflows" => "Python-SMRMon",
        "DSL::English::SearchEngineQueries" => "Python-pandas";


my %moduleToRTarget =

        "DSL::English::ClassificationWorkflows" => "R-ClCon",
        "DSL::English::DataQueryWorkflows" => "R-tidyverse",
        "DSL::English::EpidemiologyModelingWorkflows" => "R-ECMMon",
        "DSL::English::LatentSemanticAnalysisWorkflows" => "R-LSAMon",
        "DSL::English::QuantileRegressionWorkflows" => "R-QRMon",
        "DSL::English::RecommenderWorkflows" => "R-SMRMon",
        "DSL::English::SearchEngineQueries" => "R-tidyverse";


my %moduleToWLTarget =

        "DSL::English::ClassificationWorkflows" => "WL-ClCon",
        "DSL::English::DataQueryWorkflows" => "WL-System",
        "DSL::English::EpidemiologyModelingWorkflows" => "WL-ECMMon",
        "DSL::English::LatentSemanticAnalysisWorkflows" => "WL-LSAMon",
        "DSL::English::QuantileRegressionWorkflows" => "WL-QRMon",
        "DSL::English::RecommenderWorkflows" => "WL-SMRMon",
        "DSL::English::SearchEngineQueries" => "WL-SMRMon";


my %specToModuleToTarget =

        "R" => %moduleToRTarget,
        "WL" => %moduleToWLTarget;

my %targetToModule = reduce( { $^a.push( $^b.invert ) }, {}, |%specToModuleToTarget.values );


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
proto dsl-most-applicable(Str $command, %dslToGrammar = %moduleToDSLGrammar, Int :$n = 10, Str :$norm = 'sum') is export {*};

multi dsl-most-applicable(Str $command, %dslToGrammar = %moduleToDSLGrammar, Int :$n = 10, Str :$norm = 'sum') {

    die "The argument \$n is expected to be a postive integer." unless $n > 0;

    my @pairs = map({ $_.key => get-dsl-parser-residual($_.value, $command, norm => $norm) }, %dslToGrammar.pairs);
    @pairs = @pairs.sort({ $_.value });

    return $n < @pairs.elems ?? @pairs[^$n] !! @pairs;
}

#-----------------------------------------------------------
proto dsl-pick(Str $command, %dslToGrammar = %moduleToDSLGrammar, Str :$norm = 'sum') is export {*};

multi dsl-pick(Str $command, %dslToGrammar = %moduleToDSLGrammar, Str :$norm = 'sum') {
    my @pairs = dsl-most-applicable($command, %dslToGrammar, n => 3, norm => $norm);

    my @pairs2 = grep( { not( $_.key eq "DSL::English::SearchEngineQueries" ) }, @pairs );

    if @pairs.elems == @pairs2.elems {
        return @pairs.min({ $_.value }).key;
    }

    my %res = Hash.new( @pairs );
    my Int $minVal2 = @pairs.min({ $_.value }).value;

    if %res{"DSL::English::SearchEngineQueries"} == 0 and $minVal2 > 15 {
        return "DSL::English::SearchEngineQueries";
    } else {
        return @pairs2.min({ $_.value }).key;
    }
}

#-----------------------------------------------------------
proto ToDSLCode(Str $command, Str :$language = 'English', Str :$format = 'raku', Bool :$guessGrammar = True, Str :$defaultTargetsSpec = 'R') is export {*};

multi ToDSLCode(Str $command, Str :$language = 'English', Str :$format = 'raku', Bool :$guessGrammar = True, Str :$defaultTargetsSpec = 'R') {

    die "Unknown natural language: $language." unless %languageDispatch{$language}:exists;

    die "Unknown default targets spec: $defaultTargetsSpec." unless %specToModuleToTarget{$defaultTargetsSpec}:exists;

    # Get DSL specifications
    my %dslSpecs = get-dsl-spec($command, 'any');

    # Get DSL module
    if not (%dslSpecs and %dslSpecs{'DSL'}:exists) {

        die "No DSL module specification command." unless $guessGrammar;

        if %dslSpecs{'DSLTARGET'}:exists and %targetToModule{%dslSpecs{'DSLTARGET'}}:exists {
            # Restrict the DSL guessing to the specified target DSLs
            my %small = %moduleToDSLGrammar{ |%targetToModule{%dslSpecs{'DSLTARGET'}} }:p;
            %dslSpecs = %dslSpecs, 'DSL' => dsl-pick( $command, %small );
        } else {
            %dslSpecs = %dslSpecs, 'DSL' => dsl-pick( $command, %moduleToDSLGrammar );
        }
    }

    my Str $dsl = %dslSpecs{'DSL'};
    $dsl = %languageDispatch{$language}{$dsl};

    die "Unknown DSL spec: $dsl." unless  %languageDispatch{$language}{$dsl}:exists;

    # Get DSL target
    my Str $dslTarget = %specToModuleToTarget{$defaultTargetsSpec}{$dsl};

    $dslTarget = %dslSpecs{'DSLTARGET'}:exists ?? %dslSpecs{'DSLTARGET'} !! $dslTarget;

    # Get DSL function
    my &dslFunc = %englishModuleFunctions{$dsl};

    # DSL translate
    my Str $code = &dslFunc($command, $dslTarget);

    # Result
    my %rakuRes = Hash.new(%dslSpecs, { Code => $code, DSL => $dsl, DSLTARGET => $dslTarget, DSLFUNCTION => &dslFunc.raku });
    %rakuRes = %rakuRes.sort({ $^a.key });

    if $format.lc eq 'raku' {
        return %rakuRes;
    } elsif $format.lc eq 'json' {
        return marshal(%rakuRes);
    } else {
        warn "Unknown format: $format. Using 'raku' instead.";
        return %rakuRes;
    }
}


use v6;

use lib './lib';
use lib '.';

use DSL::Shared::Utilities::ComprehensiveTranslation;
use DSL::Shared::Utilities::MetaSpecsProcessing;

my Str $format = 'JSON';

say "=" x 30;

my @testCommands = (
'DSL TARGET R-base; use dfTitanic; cross tabulate passengerSex and passengerClass',
'DSL MODULE DSL::English::DataQueryWorkflows; DSL TARGET R-tidyverse; use dfTitanic; cross tabulate passengerSex and passengerClass',
'DSL SMRMon; use dfTitanic; create a recommender; recommend by profile male and 1st',
'use dfTitanic; create a recommender; recommend by profile male and 1st',
'DSL LSAMon; DSL TARGET R-LSAMon; create with aTexts; create document term matrix; extract 12 topics with method SVD',
'create with aTexts; create document term matrix; extract 12 topics with method SVD',
'create with aTexts; create document term matrix; extract 12 topics with method SVD'
);

for @testCommands -> $c {
    say "=" x 30;
    say $c;
    say '-' x 30;
    say ToDSLCode( $c, language => "English", format => $format, guessGrammar => True)
};




use v6;

use lib './lib';
use lib '.';

use DSL::Shared::Utilities::ComprehensiveTranslation;
use DSL::Shared::Utilities::MetaSpecsProcessing;

my Str $format = 'JSON';

say "=" x 30;

#my @testCommands = (
#'DSL MODULE DSL::English::DataQueryWorkflows; DSL TARGET R-tidyverse; use dfTitanic; cross tabulate passengerSex and passengerClass',
#'DSL TARGET R-base; use dfTitanic; cross tabulate passengerSex and passengerClass',
#'use dfTitanic; cross tabulate passengerSex and passengerClass',
#'DSL SMRMon; use dfTitanic; create a recommender; recommend by profile male and 1st',
#'use dfTitanic; create a recommender; recommend by profile male and 1st',
#'DSL LSAMon; DSL TARGET R-LSAMon; create with aTexts; create document term matrix; extract 12 topics with method SVD',
#'create with aTexts; create document term matrix; extract 12 topics with method SVD',
#'create with aTexts; create document term matrix; extract 12 topics with method SVD',
#'create recommender with dfTitanic; recommend by profile male; echo value',
#'use dfTitanic;
#select the columns name, species, mass and height;
#cross tabulate species over mass'
#);

my @testCommands = (
'create recommender with dfTitanic; recommend by profile male; echo value',
'DSL MODULE SMRMon; create recommender with dfTitanic; recommend by profile male; echo value',
'use dfTitanic; select the columns name, species, mass and height; cross tabulate species over mass',
'use dfStarwars; select species, mass and height; cross tabulate species over mass;',
'DSL MODULE DataQueryWorkflows; use dfStarwars; select species, mass and height; cross tabulate species over mass;'
);

for @testCommands -> $c {
    say "=" x 30;
    say $c;
    say '-' x 30;
    my $start = now;
    my $res = ToDSLCode( $c, language => "English", format => $format, guessGrammar => True, defaultTargetsSpec => 'R');
    say "time:", now - $start;
    say $res;
};




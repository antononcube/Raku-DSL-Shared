use v6;

use lib './lib';
use lib '.';

use DSL::Shared::Utilities::ComprehensiveTranslation;

say "=" x 30;

say ToDSLCode( 'DSL MODULE DSL::English::DataQueryWorkflows; DSL TARGET R-base; use dfTitanic; cross tabulate passengerSex and passengerClass', 'English');

say "=" x 30;

say ToDSLCode( 'DSL SMRMon; use dfTitanic; create a recommender; recommend by profile male and 1st');

say "=" x 30;

say ToDSLCode( 'DSL MODULE LSAMon; create with aTexts; create document term matrix; extract 12 topics with method SVD');

say "=" x 30;

say ToDSLCode( 'DSL TARGET LSAMon-R; create with aTexts; create document term matrix; extract 12 topics with method SVD');

say "=" x 30;

say ToDSLCode( 'create with aTexts; create document term matrix; extract 12 topics with method SVD');



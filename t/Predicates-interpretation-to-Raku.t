use Test;

use lib './lib';
use lib '.';

use DSL::Shared::Actions::Raku::PredicateSpecification;
use DSL::Shared::Roles::CommonStructures;
use DSL::Shared::Roles::English::CommonSpeechParts;
use DSL::Shared::Roles::English::PredicateSpecification;
use DSL::Shared::Roles::PredicateSpecification;

grammar ParseObj
        does DSL::Shared::Roles::CommonStructures
        does DSL::Shared::Roles::English::CommonSpeechParts
        does DSL::Shared::Roles::English::PredicateSpecification
        does DSL::Shared::Roles::PredicateSpecification {
    regex TOP { <predicates-list> }
};

my DSL::Shared::Actions::Raku::PredicateSpecification $rakuObj .= new;

sub interpret(Str $command) {
    ParseObj.parse($command, rule => 'predicates-list', actions => $rakuObj).made
}

plan 8;

#-----------------------------------------------------------
# Predicate specs interpretation into Raku code
#-----------------------------------------------------------

is interpret('v1 > 10 & v2 >= 12 | v3 == 20'),
        '$_{"v1"} > 10 and $_{"v2"} >= 12 or $_{"v3"} eq 20',
        'v1 > 10 & v2 >= 12 | v3 == 20';

is interpret('v1 greater than 10 and v2 greater or equal than 12 or v3 equals 20'),
        '$_{"v1"} > 10 and $_{"v2"} >= 12 or $_{"v3"} eq 20',
        'v1 greater than 10 and v2 greater or equal than 12 or v3 equals 20';

is interpret('var1 == "male" & var2 < 12 or var3 > 50'),
        '$_{"var1"} eq "male" and $_{"var2"} < 12 or $_{"var3"} > 50',
        'var1 == "male" & var2 < 12 or var3 > 50';

is interpret('var1 is "male" and var2 is less than 12 or var3 is greater than 50'),
        '$_{"var1"} eq "male" and $_{"var2"} < 12 or $_{"var3"} > 50',
        'var1 is "male" and var2 is less than 12 or var3 is greater than 50';

is interpret('"v 1" > 10 & "v 2" >= 12 | v3 == 20'),
        '$_{"v 1"} > 10 and $_{"v 2"} >= 12 or $_{"v3"} eq 20',
        '"v 1" > 10 & "v 2" >= 12 | v3 == 20';

is interpret('Title is like `air_`'),
        '$_{"Title"} ~~ air_',
        'Title is like `air_`';

is interpret('Title starts with "air"'),
        '$_{"Title"}  ~~ rx/ ^ "air" . * /',
        'Title starts with "air"';

is interpret('Title ends with "snow"'),
        '$_{"Title"}  ~~ rx/ . * "snow" $ /',
        'Title ends with "snow"';

done-testing;

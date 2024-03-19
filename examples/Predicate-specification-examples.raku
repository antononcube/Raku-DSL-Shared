use v6.d;

use DSL::Shared::Roles::Bulgarian::PredicateSpecification;
use DSL::Shared::Roles::English::CommonParts;
use DSL::Shared::Roles::English::CommonSpeechParts;
use DSL::Shared::Roles::English::PipelineCommand;
use DSL::Shared::Roles::English::PredicateSpecification;
use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::PredicateSpecification;

use DSL::Shared::Actions::Python::PredicateSpecification;
use DSL::Shared::Actions::R::PredicateSpecification;
use DSL::Shared::Actions::Raku::PredicateSpecification;
use DSL::Shared::Actions::WL::PredicateSpecification;

grammar ParseObj
        does DSL::Shared::Roles::CommonStructures
        does DSL::Shared::Roles::English::CommonParts
        does DSL::Shared::Roles::Bulgarian::PredicateSpecification
        does DSL::Shared::Roles::English::PredicateSpecification
        does DSL::Shared::Roles::PredicateSpecification {
    regex TOP { <predicates-list> }
};

class ActionsObj
        is DSL::Shared::Actions::WL::PredicateSpecification {
}

my @matchingCommands = (
'Title is like "air"',
'Title is like rx/(i?)air/',
'Title is like /(i?)air/',
'Title is matching air',
'Title equals "Airline"',
'Title starts with "Airline"',
'Title ends with "snow"',
'Title has "snow"',
);

my @commands = (
'v1 > 10 & v2 >= 12 | v3 == 20',
'v1 greater than 10 and v2 greater or equal than 12 or v3 equals 20',
'var1 == "male" & var2 < 12 or var3 > 50',
'var1 is "male" and var2 is less than 12 or var3 is greater than 50',
'"v 1" > 10 & "v 2" >= 12 | v3 == 20',
'Title is like `air_`',
'Title starts with "air"',
'Title ends with "snow"',
'var1 in ${["blue", "red", {green =>2}]}',
"dist ≤ `geo-distance(\$_<dropoff_latitude>, \$_<dropoff_longitude>, 33.9028, -118.069, 'miles') <= 50 })`"
);

my $action-type = 'parse';

for @commands.kv -> $i, $c {
    say "=" x 80;
    say "$i : $c";
    say "-" x 80;
    if $action-type eq 'parse' {
        say ParseObj.parse($c);
    } else {
        say ParseObj.parse($c, rule => 'predicates-list', actions => ActionsObj.new).made
    }
};
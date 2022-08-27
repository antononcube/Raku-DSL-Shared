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
        is DSL::Shared::Actions::Raku::PredicateSpecification {
}

my @commands = (
'v1 > 10 & v2 >= 12 | v3 == 20',
'v1 е по-голямо от 10 и v2 по-голямо или равно на 12 или v3 се равнява на 20',
'var1 == "male" & var2 < 12 or var3 > 50',
'var1 е "male" и var2 е по-малко от 12 или var3 е по-голямо от 50',
'"v 1" > 10 & "v 2" >= 12 | v3 == 20',
'Title е като `air_`',
'Title започва с "air"',
'Title завършва с "snow"'
);

my $action-type = 'interpret';

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

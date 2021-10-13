use v6;

use lib './lib';
use lib '.';

use DSL::Shared::Roles::English::CommonParts;
use DSL::Shared::Roles::English::PipelineCommand;
use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::PredicateSpecification;

use DSL::Shared::Actions::R::PredicateSpecification;
use DSL::Shared::Actions::WL::PredicateSpecification;

grammar ParseObj
        does DSL::Shared::Roles::CommonStructures
        does DSL::Shared::Roles::PredicateSpecification {
    regex TOP { <predicates-list> }
};

say "=" x 60;

my @commands = (
'Title is like "air"',
'Title is like rx/(i?)air/',
'Title is like /(i?)air/',
'Title is matching air',
'Title equals "Airline"',
'Title starts with "Airline"',
'Title ends with "snow"',
);

for @commands -> $c {
    say "-" x 40;
    #say ParseObj.parse($c)
    say ParseObj.parse($c, rule => 'predicates-list', actions => DSL::Shared::Actions::R::PredicateSpecification.new).made
};


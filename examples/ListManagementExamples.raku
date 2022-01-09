use v6;

use lib './lib';
use lib '.';

use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::English::ListManagementCommand;
use DSL::Shared::Roles::English::PipelineCommand;
use Lingua::NumericWordForms::Roles::English::WordedNumberSpec;

use DSL::Shared::Actions::English::WL::ListManagementCommand;

grammar ParseObj
        does DSL::Shared::Roles::English::ListManagementCommand
        does Lingua::NumericWordForms::Roles::English::WordedNumberSpec
        does DSL::Shared::Roles::ErrorHandling
        does DSL::Shared::Roles::English::PipelineCommand {
    rule TOP { <pipeline-command> | <list-management-command> }
};


say "=" x 60;

my @commands = (
    "element 21 st",
    "element twenty first",
    "the 2nd element",
    "the head",
    "head of mylist",
    "the last element of the list",
    "the 5 th element in the list",
    "the 5 th element of hejre",
    "last element of the 3rd element of rjewe",
    "last element of the 3rd element of the variable rjewe",
    "take the first one",
    "drop 21 st one",
    "drop the 25 th element",
    "delete the last element of the 3rd element of rjewe",
    "replace the 2nd element with 34",
    "replace the second element with the value 34",
    "delete all",
    "drop all elements of the list"
);

for @commands.kv -> $i, $c {
    say "=" x 60;
    say "$i : $c";
    say "-" x 60;
    say ParseObj.parse( $c );
    say "-" x 60;
    say ParseObj.parse( $c, actions => DSL::Shared::Actions::English::WL::ListManagementCommand ).made;
};


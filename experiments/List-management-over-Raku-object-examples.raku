use v6.d;

use lib '.';
use lib './lib';

use Data::Generators;
use Data::Reshapers;

use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::English::ListManagementCommand;
use DSL::Shared::Roles::English::PipelineCommand;
use Lingua::NumericWordForms::Roles::English::WordedNumberSpec;

use DSL::Shared::Actions::English::Python::ListManagementCommand;
use DSL::Shared::Actions::English::R::ListManagementCommand;
use DSL::Shared::Actions::English::Raku::ListManagementCommand;
use DSL::Shared::Actions::English::RakuObject::ListManagementCommand;
use DSL::Shared::Actions::English::WL::ListManagementCommand;

grammar ParseObj
        does DSL::Shared::Roles::English::ListManagementCommand
        does Lingua::NumericWordForms::Roles::English::WordedNumberSpec
        does DSL::Shared::Roles::ErrorHandling
        does DSL::Shared::Roles::English::PipelineCommand {
    rule TOP { <pipeline-command>    | <list-management-command>  }
};


say "=" x 60;

my @commands = (
"element 21 st",
"element twenty first",
"the 2nd element",
'the first element',
"the head",
"head of mylist",
"top three elements",
"first 5 elements",
"last 7 elements",
"take from 2 to 8",
"take from 3 to 15 with step 3",
"take the first five",
"take the first one",
"show it",
"show elements from 4 to 15",
"take from 15 to 4",
"the last element of the list",
"the 5 th element in the list",
"the 5 th element of hejre",
"last element of the 3rd element of rjewe",
"last element of the 3rd element of the variable rjewe",
"take the first one",
"drop 21 st one",
"drop the 25 th element",
"delete the last element of the 3rd element of @rjewe",
"replace the 2nd element with 305",
"replace the second element with the value 305",
"delete all",
"drop all elements of the list"
);

my @temp = 1 ... 32;
#my @temp = random-tabular-dataset(32, 5);
#say to-pretty-table(@temp);

my @rjewe = random-tabular-dataset(5, 4);
my DSL::Shared::Actions::English::RakuObject::ListManagementCommand $rakuObj .= new;

for @commands.kv -> $i, $c {
    say "=" x 60;
    say "$i : $c";
    say "-" x 60;
    say "parsing AST:\n", ParseObj.parse($c);
    say "-" x 60;
    $rakuObj.object = @temp.clone;
    say 'interpretation       : ', ParseObj.parse($c, actions => $rakuObj).made;
    say '$rakuObj.object.raku : ', $rakuObj.object.raku;
};


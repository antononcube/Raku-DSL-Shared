use v6.d;

use DSL::Shared::Actions::English::Python::ListManagementCommand;
use DSL::Shared::Actions::English::R::ListManagementCommand;
use DSL::Shared::Actions::English::Raku::ListManagementCommand;
use DSL::Shared::Actions::English::WL::ListManagementCommand;
use DSL::Shared::Roles::English::ListManagementCommand;
use DSL::Shared::Roles::English::PipelineCommand;
use DSL::Shared::Roles::ErrorHandling;
use Lingua::NumericWordForms::Roles::English::WordedNumberSpec;

grammar ParseObj
        does DSL::Shared::Roles::English::ListManagementCommand
        does Lingua::NumericWordForms::Roles::English::WordedNumberSpec
        does DSL::Shared::Roles::ErrorHandling
        does DSL::Shared::Roles::English::PipelineCommand {
    rule TOP { <pipeline-command>    | <list-management-command>  }
};


say "=" x 60;

my @commands = (
"delete all",
"delete the last element of the 3rd element of rjewe",
"drop 21 st one",
"drop all elements of the list",
"drop the 25 th element",
"element 21 st",
"element twenty first",
"first 5 elements",
"head of mylist",
"last 7 elements",
"last element of the 3rd element of rjewe",
"last element of the 3rd element of the variable rjewe",
"replace the 2nd element with 34",
"replace the second element with the value 34",
"show elements from 4 to 15",
"show it",
"take from 15 to 4",
"take from 2 to 8",
"take from 3 to 15 with step 3",
"take the first five",
"take the first one",
"take the first one",
"the 2nd element",
"the 5 th element in the list",
"the 5 th element of hejre",
"the head",
"the last element of the list",
"top three elements",
'the first element'
);


#my DSL::Shared::Actions::English::Raku::ListManagementCommand $rakuObj .= new;
my DSL::Shared::Actions::English::R::ListManagementCommand $rakuObj .= new;
#my DSL::Shared::Actions::English::Python::ListManagementCommand $rakuObj .= new;
#my DSL::Shared::Actions::English::WL::ListManagementCommand $rakuObj .= new;

my $action-type = 'interpret';

for @commands.kv -> $i, $c {
    say "=" x 120;
    say "$i : $c";
    say "-" x 80;
    if $action-type eq 'parse' {
        say ParseObj.parse($c);
    } else {
        say ParseObj.parse($c, actions => $rakuObj).made;
    }
};


use v6.d;

use DSL::Shared::Actions::Bulgarian::Raku::ListManagementCommand;
use DSL::Shared::Roles::Bulgarian::ListManagementCommand;
use DSL::Shared::Roles::Bulgarian::PipelineCommand;
use DSL::Shared::Roles::ErrorHandling;
use Lingua::NumericWordForms::Roles::Bulgarian::WordedNumberSpec;

grammar ParseObj
        does DSL::Shared::Roles::Bulgarian::ListManagementCommand
        does Lingua::NumericWordForms::Roles::Bulgarian::WordedNumberSpec
        does DSL::Shared::Roles::ErrorHandling
        does DSL::Shared::Roles::Bulgarian::PipelineCommand {
    rule TOP { <pipeline-command>       | <list-management-command>  }
};


say "=" x 60;

my @commands = (
"вземи елемент две",
"вземи осми елемент",
"вземи от 1 до 20 със стъпка 3",
"вземи последните 7 елемента",
"вземи първите пет",
"вземи първият елемент",
"замести втори елемент със 34"
);

my DSL::Shared::Actions::Bulgarian::Raku::ListManagementCommand $rakuObj .= new;

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


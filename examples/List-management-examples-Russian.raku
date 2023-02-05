use v6.d;

use lib '.';
use lib './lib';

use DSL::Shared::Actions::Russian::Raku::ListManagementCommand;
use DSL::Shared::Roles::Russian::ListManagementCommand;
use DSL::Shared::Roles::Russian::PipelineCommand;
use DSL::Shared::Roles::ErrorHandling;
use Lingua::NumericWordForms::Roles::Russian::WordedNumberSpec;

grammar ParseObj
        does DSL::Shared::Roles::Russian::ListManagementCommand
        does Lingua::NumericWordForms::Roles::Russian::WordedNumberSpec
        does DSL::Shared::Roles::ErrorHandling
        does DSL::Shared::Roles::Russian::PipelineCommand {
    rule TOP { <pipeline-command>       | <list-management-command>  }
};


say "=" x 60;

my @commands = (
"забрать элемент две",
#"забрать восмой элемент",
"забрать от 1 до 20 шаг 3",
"забрать последние 7 элементы",
"забрать первые пять",
"забрать первый элемент",
"заместить второй элемент с 34"
);

my DSL::Shared::Actions::Russian::Raku::ListManagementCommand $rakuObj .= new;

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


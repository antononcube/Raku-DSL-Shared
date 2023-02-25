use v6.d;

use lib '.';
use lib './lib';

use DSL::Shared::Actions::Portuguese::Raku::ListManagementCommand;
use DSL::Shared::Roles::Portuguese::ListManagementCommand;
use DSL::Shared::Roles::Portuguese::PipelineCommand;
use DSL::Shared::Roles::ErrorHandling;
use Lingua::NumericWordForms::Roles::Portuguese::WordedNumberSpec;

grammar ParseObj
        does DSL::Shared::Roles::Portuguese::ListManagementCommand
        does Lingua::NumericWordForms::Roles::Portuguese::WordedNumberSpec
        does DSL::Shared::Roles::ErrorHandling
        does DSL::Shared::Roles::Portuguese::PipelineCommand {
    rule TOP { <pipeline-command>       | <list-management-command>  }
};


say "=" x 60;

my @commands = (
"tomar o elemento dois",
"tomar o elemento oito",
"tomar de 1 a 20 no passo 3",
"tomar os últimos 7 elementos",
#"tomar os cinco primeiros",
"tomar os primeiros cinco",
"tomar o primeiro elemento",
"substituir o segundo elemento por 34"
);

my DSL::Shared::Actions::Portuguese::Raku::ListManagementCommand $rakuObj .= new;

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


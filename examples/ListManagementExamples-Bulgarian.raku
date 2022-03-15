use v6;

use Data::Generators;
use Data::Reshapers;

use lib './lib';
use lib '.';

use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Actions::Bulgarian::Raku::ListManagementCommand;
use DSL::Shared::Roles::Bulgarian::ListManagementCommand;
use DSL::Shared::Roles::Bulgarian::CommonSpeechParts;
use DSL::Shared::Roles::Bulgarian::PipelineCommand;
use Lingua::NumericWordForms::Roles::Bulgarian::WordedNumberSpec;

grammar ParseObj
        does DSL::Shared::Roles::Bulgarian::ListManagementCommand
        does Lingua::NumericWordForms::Roles::Bulgarian::WordedNumberSpec
        does DSL::Shared::Roles::ErrorHandling
        does DSL::Shared::Roles::Bulgarian::PipelineCommand {
    rule TOP { <pipeline-command> | <list-management-command> }
};


say "=" x 60;

my @commands = (
    "вземи първите пет",
    "вземи първият елемент",
    "вземи осми елемент",
    "замести втори елемент със 34"
);

my @temp = 1...^32;
#my @temp = random-tabular-dataset(32, 5);
#say to-pretty-table(@temp);

my DSL::Shared::Actions::Bulgarian::Raku::ListManagementCommand $rakuObj .= new;

for @commands.kv -> $i, $c {
    say "=" x 60;
    say "$i : $c";
    say "-" x 60;
    say ParseObj.subparse( $c );
    say "-" x 60;
    #$rakuObj.object = @temp.clone;
    say ParseObj.parse( $c, actions => $rakuObj ).made;
    #say '$rakuObj.object.raku = ', $rakuObj.object.raku;
};


use v6;

use lib './lib';
use lib '.';

use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::English::TimeIntervalSpec;
use DSL::Shared::Roles::English::PipelineCommand;

grammar ParseObj
        does DSL::Shared::Roles::ErrorHandling
        does DSL::Shared::Roles::English::TimeIntervalSpec
        does DSL::Shared::Roles::English::PipelineCommand {

    rule TOP { <pipeline-command> | <time-interval-spec> }
};


say "=" x 60;

my @commands = (
'between christmas and ramadan',
'from jan to march',
'from jan 2020 to march 2021',
'2 week of 2019',
'two weeks ago'
);

for @commands -> $c {
    say "=" x 60;
    say $c;
    say "-" x 40;
    say ParseObj.parse( $c )
};


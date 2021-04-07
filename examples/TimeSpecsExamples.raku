use v6;

use lib './lib';
use lib '.';

use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::English::WordedNumberSpec;
use DSL::Shared::Roles::English::TimeIntervalSpec;
use DSL::Shared::Roles::English::PipelineCommand;

grammar ParseObj
        does DSL::Shared::Roles::ErrorHandling
        does DSL::Shared::Roles::English::WordedNumberSpec
        does DSL::Shared::Roles::English::TimeIntervalSpec
        does DSL::Shared::Roles::English::PipelineCommand {

    rule TOP { <pipeline-command> || <time-interval-spec> || <worded-number-spec> }
};

#say ParseObj.parse( 'twenty five thousand', rule => 'worded_number_up_to_1000000' );
#
#say "-" x 60;
#
#say ParseObj.parse( 'thirty eight thousand', rule => 'worded-number-spec' );

say "=" x 60;

#my @commands = (
#'thirty eight',
#'thirty - eight',
#'thirty-eight',
#'five hundred thirty eight',
#'thirty - eight thousand',
#'thirty-eight thousand',
#'thirty eight thousand',
#'three hundred and thirty eight',
#'three hundred thirty eight',
#'two hundred and thirty eight thousand',
#'two hundred thirty eight thousand',
#'fifteen hundred',
#'one thousand and five hundred',
#'six hundred million',
#'thirteen hundred ninety nine million');

my @commands = (
'between christmas and ramadan',
'from jan to mar',
'from january 2020 to march 2021',
'2 week of 2019',
'two weeks ago'
);

for @commands -> $c {
    say "=" x 60;
    say $c;
    say "-" x 40;
    say ParseObj.parse( $c )
};


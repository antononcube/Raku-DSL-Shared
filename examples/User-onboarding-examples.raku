use v6.d;

use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::English::RudimentaryUserOnboarding;
use DSL::Shared::Roles::English::PipelineCommand;

grammar ParseObj
        does DSL::Shared::Roles::ErrorHandling
        does DSL::Shared::Roles::English::RudimentaryUserOnboarding
        does DSL::Shared::Roles::English::PipelineCommand {

    rule TOP { <pipeline-command> || <user-onboarding-command> }
};


say "=" x 60;

my @commands = (
'i am one hundred and twenty five pounds',
'i am twenty five years old',
'my age is twenty five',
'i am nina markova',
'i am asiana',
'my name is asiana',
'my race is african american',
'my age is 40',
'i am nina, i am 25 year old',
'i am nina and i am 25 years old',
'my name is sonya bartok, i am asian, and i am 55',
'my weight is 130 lbs'
);

for @commands -> $c {
    say "=" x 80;
    say $c;
    say "-" x 80;
    say ParseObj.parse( $c )
};


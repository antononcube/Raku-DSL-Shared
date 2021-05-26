use Test;

use lib './lib';
use lib '.';

use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::English::RudimentaryUserOnboarding;
use DSL::Shared::Roles::English::PipelineCommand;

grammar ParseObj
        does DSL::Shared::Roles::ErrorHandling
        does DSL::Shared::Roles::English::RudimentaryUserOnboarding
        does DSL::Shared::Roles::English::PipelineCommand {

    rule TOP { <pipeline-command> | <user-onboarding-command> }
};


plan 12;

#-----------------------------------------------------------
# User onboarding commands parsing
#-----------------------------------------------------------

## 1
ok ParseObj.parse('i am nina'),
        'i am nina';

## 2
ok ParseObj.parse('i am nina markova'),
        'i am nina markova';

## 3
ok ParseObj.parse('i am nina jolina conchita gonzales'),
        'i am nina jolina conchita gonzales';

## 4
ok ParseObj.parse('i am asian'),
        'i am asian';

## 5
ok ParseObj.parse('my race is african'),
        'my race is african';

## 6
ok ParseObj.parse('i am 25 years old'),
        'i am 25 years old';

## 7
ok ParseObj.parse('i am 125 pounds'),
        'i am 125 pounds';

## 8
ok ParseObj.parse('my weight is 95 kg'),
        'my weight is 95 kg';

## 9
ok ParseObj.parse('i am nina, i am 25 years old'),
        'i am nina, i am 25 years old';

## 10
ok ParseObj.parse('i am nina and i am 25 years old'),
        'i am nina and i am 25 years old';

## 11
ok ParseObj.parse('my name is sonya bartok, i am asian, and i am 55'),
        'my name is sonya bartok, i am asian, and i am 55';

## 12
ok ParseObj.parse('i am twenty five years old'),
        'i am twenty five years old';

## 13
#ok ParseObj.parse('i am one hundred and twenty five pounds'),
#        'i am one hundred and twenty five pounds';

done-testing;

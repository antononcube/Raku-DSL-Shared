use Test;

use lib './lib';
use lib '.';

use DSL::Shared::Roles::ErrorHandling;
use Lingua::NumericWordForms::Roles::English::WordedNumberSpec;
use DSL::Shared::Roles::English::TimeIntervalSpec;
use DSL::Shared::Roles::English::PipelineCommand;

grammar ParseObj
        does DSL::Shared::Roles::ErrorHandling
        does Lingua::NumericWordForms::Roles::English::WordedNumberSpec
        does DSL::Shared::Roles::English::TimeIntervalSpec
        does DSL::Shared::Roles::English::PipelineCommand {

    rule TOP { <pipeline-command> | <time-interval-spec> }
};


plan 14;

#-----------------------------------------------------------
# Time interval specifications parsing
#-----------------------------------------------------------

## 1
ok ParseObj.parse('between christmas and ramadan'),
        'between christmas and ramadan';

## 2
ok ParseObj.parse('between jan and march'),
        'between jan and march';

## 3
ok ParseObj.parse('between jan 2019 and march 2021'),
        'between jan 2019 and march 2021';

## 4
ok ParseObj.parse('2 weeks'),
        '2 weeks';

## 5
ok ParseObj.parse('twelve weeks'),
        'twelve weeks';

## 6
ok ParseObj.parse('week 23 of 2013'),
        'week 23 of 2013';

## 7
ok ParseObj.parse('week twenty three of 2013'),
        'week twenty three of 2013';

## 7
ok ParseObj.parse('week twenty three of two thousand and thirteen'),
        'week twenty three of two thousand and thirteen';

## 9
ok ParseObj.parse('2 weeks ago'),
        '2 weeks ago';

## 10
ok ParseObj.parse('two weeks ago'),
        'two weeks ago';

## 11
ok ParseObj.parse('last year'),
        'last year';

## 12
ok ParseObj.parse('past year'),
        'past year';

## 13
ok ParseObj.parse('each year'),
        'each year';

## 14
ok ParseObj.parse('every two months'),
        'every two months';

done-testing;

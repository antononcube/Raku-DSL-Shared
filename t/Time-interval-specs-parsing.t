use Test;

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


plan 6;

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
ok ParseObj.parse('week 23 of 2013'),
        'week 23 of 2013';

## 6
ok ParseObj.parse('2 weeks ago'),
        '2 weeks ago';

done-testing;

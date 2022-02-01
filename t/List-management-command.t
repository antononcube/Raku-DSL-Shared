use lib './lib';
use lib '.';

use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::English::ListManagementCommand;
use DSL::Shared::Roles::English::PipelineCommand;
use Lingua::NumericWordForms::Roles::English::WordedNumberSpec;

grammar ParseObj
        does DSL::Shared::Roles::English::ListManagementCommand
        does Lingua::NumericWordForms::Roles::English::WordedNumberSpec
        does DSL::Shared::Roles::ErrorHandling
        does DSL::Shared::Roles::English::PipelineCommand {
    rule TOP { <pipeline-command> | <list-management-command> }
};

sub parse-func(Str $c) {
    ParseObj.parse($c)
}

use Test;

plan 22;

## 1
ok parse-func('element 21 st'),
        'element 21 st';

## 2
ok parse-func('element twenty first'),
        'element twenty first';

## 3
ok parse-func('the 2nd element'),
        'the 2nd element';

## 4
ok parse-func('the head'),
        'the head';

## 5
ok parse-func('head of mylist'),
        'head of mylist';

## 6
ok parse-func('the last element of the list'),
        'the last element of the list';

## 7
ok parse-func('the 5 th element in the list'),
        'the 5 th element in the list';

## 8
ok parse-func('the 5 th element of hejre'),
        'the 5 th element of hejre';

## 9
ok parse-func('last element of the 3rd element of rjewe'),
        'last element of the 3rd element of rjewe';

## 10
ok parse-func('last element of the 3rd element of the variable rjewe'),
        'last element of the 3rd element of the variable rjewe';

## 11
ok parse-func('take the first one'),
        'take the first one';

## 12
ok parse-func('drop 21 st one'),
        'drop 21 st one';

## 13
ok parse-func('drop the 25 th element'),
        'drop the 25 th element';

## 14
ok parse-func('drop the twenty fifth element'),
        'drop the twenty fifth element';

## 15
ok parse-func('delete the last element of the 3rd element of rjewe'),
        'delete the last element of the 3rd element of rjewe';

## 16
ok parse-func('replace the 2nd element with 34'),
        'replace the 2nd element with 34';

## 17
ok parse-func('replace the second element with the value 34'),
        'replace the second element with the value 34';

## 18
ok parse-func('delete all'),
        'delete all';

## 19
ok parse-func('drop all elements of the list'),
        'drop all elements of the list';

## 20
ok parse-func('take top 20 elements'),
        'take top 20 elements';

## 21
ok parse-func('take the first seven'),
        'take the first seven';

## 22
ok parse-func('last seven'),
        'last seven';

done-testing;

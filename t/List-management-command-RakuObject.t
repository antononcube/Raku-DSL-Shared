use lib './lib';
use lib '.';

use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::English::ListManagementCommand;
use DSL::Shared::Actions::English::RakuObject::ListManagementCommand;
use DSL::Shared::Roles::English::PipelineCommand;
use Lingua::NumericWordForms::Roles::English::WordedNumberSpec;

grammar ParseObj
        does DSL::Shared::Roles::English::ListManagementCommand
        does Lingua::NumericWordForms::Roles::English::WordedNumberSpec
        does DSL::Shared::Roles::ErrorHandling
        does DSL::Shared::Roles::English::PipelineCommand {
    rule TOP { <pipeline-command> | <list-management-command> }
};

my @temp = 1...^32;
my DSL::Shared::Actions::English::RakuObject::ListManagementCommand $rakuObj .= new;


sub parse-func(Str $c) {
    $rakuObj.object = @temp.clone;
    ParseObj.parse($c, actions => $rakuObj).made
}

use Test;

plan 21;

## 1
is-deeply parse-func('element 21 st'), @temp[21-1],
        'element 21 st';

## 2
is-deeply parse-func('element twenty first'), @temp[21-1],
        'element twenty first';

## 3
is-deeply parse-func('the 2nd element'), @temp[2-1],
        'the 2nd element';

## 4
is-deeply parse-func('the head'), @temp[0],
        'the head';

## 5
ok parse-func('head of mylist'),
        'head of mylist';

## 6
is-deeply parse-func('the last element of the list'), @temp.tail,
        'the last element of the list';

## 7
is-deeply parse-func('the 5 th element in the list'), @temp[5-1],
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
is-deeply parse-func('take the first one'), (@temp[0],),
        'take the first one';

## 12
is-deeply parse-func('drop 21 st one'), @temp.splice(21-1, 1),
        'drop 21 st one';

## 13
is-deeply parse-func('drop the 25 th element'), @temp.splice(25-1, 1),
        'drop the 25 th element';

## 14
is-deeply parse-func('drop the twenty fifth element'), @temp.splice(25-1, 1),
        'drop the twenty fifth element';

## 15
ok parse-func('delete the last element of the 3rd element of rjewe'),
        'delete the last element of the 3rd element of rjewe';

## 16
my @temp2 = @temp; @temp2[2-1] = '34';
is-deeply parse-func('replace the 2nd element with 34'), @temp2,
        'replace the 2nd element with 34';

## 17
is-deeply parse-func('replace the second element with the value 34'), @temp2,
        'replace the second element with the value 34';

## 18
is-deeply parse-func('delete all'), (),
        'delete all';

## 19
is-deeply parse-func('drop all elements of the list'), (),
        'drop all elements of the list';

## 20
is-deeply parse-func('take top 20 elements'), @temp.head(20),
        'take top 20 elements';

## 21
is-deeply parse-func('last seven'), @temp.tail(7),
        'last seven';

done-testing;

use Test;

use lib './lib';
use lib '.';

use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::English::WordedNumberSpec;
use DSL::Shared::Roles::English::PipelineCommand;

use DSL::Shared::Actions::WordedNumberSpec;

grammar ParseObj
        does DSL::Shared::Roles::ErrorHandling
        does DSL::Shared::Roles::English::WordedNumberSpec
        does DSL::Shared::Roles::English::PipelineCommand {
    rule TOP {
        <pipeline-command> | <worded-number-spec>
    }
};

sub parse-func( Str:D $spec) {
    ParseObj.parse($spec.lc, rule => 'worded-number-spec', actions => DSL::Shared::Actions::WordedNumberSpec.new ).made,
}

plan 41;

#-----------------------------------------------------------
# Worded number specifications parsing
#-----------------------------------------------------------

## 1
is parse-func('fifteen hundred'), '1500',
        'fifteen hundred';

## 2
is parse-func('five hundred thirty eight'), '538',
        'five hundred thirty eight';

## 3
is parse-func('one thousand and five hundred'), '1500',
        'one thousand and five hundred';

## 4
is parse-func('six hundred million'), '600000000',
        'six hundred million';

## 5
is parse-func('thirteen hundred ninety nine million'), '1399000000',
        'thirteen hundred ninety nine million';

## 6
is parse-func('thirty - eight'), '38',
        'thirty - eight';

## 7
is parse-func('thirty-eight'), '38',
        'thirty-eight';

## 8
is parse-func('thirty eight'), '38',
        'thirty eight';

## 9
is parse-func('thirty - eight thousand'), '38000',
        'thirty - eight thousand';

## 10
is parse-func('thirty-eight thousand'), '38000',
        'thirty-eight thousand';

## 11
is parse-func('thirty eight thousand'), '38000',
        'thirty eight thousand';

## 12
is parse-func('three hundred and thirty eight'), '338',
        'three hundred and thirty eight';

## 13
is parse-func('three hundred thirty eight'), '338',
        'three hundred thirty eight';

## 14
is parse-func('two hundred and thirty eight thousand'), '238000',
        'two hundred and thirty eight thousand';

## 15
is parse-func('two hundred thirty eight thousand'), '238000',
        'two hundred thirty eight thousand';

## 16
is parse-func('eight'), '8',
        'eight';

## 17
is parse-func('eight hundred seventy - five thousand and twenty'), '875020',
        'eight hundred seventy - five thousand and twenty';

## 18
is parse-func('eight hundred thousand, five hundred'), '800500',
        'eight hundred thousand, five hundred';

## 19
is parse-func('eighty six'), '86',
        'eighty six';

## 20
ok ParseObj.parse('eighty ten thousand , eight hundred zero million'.lc),
        'eighty ten thousand , eight hundred zero million';

## 21
ok ParseObj.parse('eleven hundred thousand , sixteen hundred'.lc),
        'eleven hundred thousand , sixteen hundred';

## 22
is parse-func('fifteen hundred and seventeen'), '1517',
        'fifteen hundred and seventeen';

## 23
ok ParseObj.parse('fifty one'.lc),
        'fifty one';

## 24
ok ParseObj.parse('fifty - two'.lc),
        'fifty - two';

## 25
is parse-func('five hundred ninety'), '590',
        'five hundred ninety';

## 26
is parse-func('forty six'), '46',
        'forty six';

## 27
ok ParseObj.parse('four hundred'.lc),
        'four hundred';

## 28
ok ParseObj.parse('fourteen hundred and seven'.lc),
        'fourteen hundred and seven';

## 29
ok ParseObj.parse('four thousand and two hundred thirty million three hundred thousand'.lc),
        'four thousand and two hundred thirty million three hundred thousand';

## 30
is parse-func('nineteen hundred fourteen'), '1914',
        'nineteen hundred fourteen';

## 31
is parse-func('ninety'), '90',
        'ninety';

## 32
ok ParseObj.parse('one hundred million'.lc),
        'one hundred million';

## 33
is parse-func('seven hundred and ninety'), '790',
        'seven hundred and ninety';

## 34
is parse-func('seven hundred million'), '700000000',
        'seven hundred million';

## 35
is parse-func('seventy'), '70',
        'seventy';

## 36
ok ParseObj.parse('seventy - ten thousand , fifteen hundred sixteen million'.lc),
        'seventy - ten thousand , fifteen hundred sixteen million';

## 37
ok ParseObj.parse('sixteen hundred zero thousand million and two thousand, ten hundred thirty'.lc),
        'sixteen hundred zero thousand million and two thousand, ten hundred thirty';

## 38
is parse-func('sixty thousand'.lc), '60000',
        'sixty thousand';

## 39
ok ParseObj.parse('thirty - ten thousand zero'.lc),
        'thirty - ten thousand zero';

## 40
is parse-func('three hundred and ninety eight thousand'), '398000',
        'three hundred and ninety eight thousand';

## 41
is parse-func('zero'), '0',
        'zero';

done-testing;

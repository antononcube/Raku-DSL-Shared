use Test;

use lib './lib';
use lib '.';

use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::English::WordedNumberSpec;
use DSL::Shared::Roles::English::PipelineCommand;

grammar ParseObj
        does DSL::Shared::Roles::ErrorHandling
        does DSL::Shared::Roles::English::WordedNumberSpec
        does DSL::Shared::Roles::English::PipelineCommand {
    regex TOP {
        <pipeline-command> | <worded-number-spec>
    }
};


plan 41;

#-----------------------------------------------------------
# Worded number specifications parsing
#-----------------------------------------------------------

## 1
ok ParseObj.parse('fifteen hundred'.lc),
        'fifteen hundred';

## 2
ok ParseObj.parse('five hundred thirty eight'.lc),
        'five hundred thirty eight';

## 3
ok ParseObj.parse('one thousand and five hundred'.lc),
        'one thousand and five hundred';

## 4
ok ParseObj.parse('six hundred million'.lc),
        'six hundred million';

## 5
ok ParseObj.parse('thirteen hundred ninety nine million'.lc),
        'thirteen hundred ninety nine million';

## 6
ok ParseObj.parse('thirty - eight'.lc),
        'thirty - eight';

## 7
ok ParseObj.parse('thirty-eight'.lc),
        'thirty-eight';

## 8
ok ParseObj.parse('thirty eight'.lc),
        'thirty eight';

## 9
ok ParseObj.parse('thirty - eight thousand'.lc),
        'thirty - eight thousand';

## 10
ok ParseObj.parse('thirty-eight thousand'.lc),
        'thirty-eight thousand';

## 11
ok ParseObj.parse('thirty eight thousand'.lc),
        'thirty eight thousand';

## 12
ok ParseObj.parse('three hundred and thirty eight'.lc),
        'three hundred and thirty eight';

## 13
ok ParseObj.parse('three hundred thirty eight'.lc),
        'three hundred thirty eight';

## 14
ok ParseObj.parse('two hundred and thirty eight thousand'.lc),
        'two hundred and thirty eight thousand';

## 15
ok ParseObj.parse('two hundred thirty eight thousand'.lc),
        'two hundred thirty eight thousand';

## 16
ok ParseObj.parse('eight'.lc),
        'eight';

## 17
ok ParseObj.parse('eight hundred seventy - five thousand and twenty'.lc),
        'eight hundred seventy - five thousand and twenty';

## 18
ok ParseObj.parse('eight hundred thousand, five hundred'.lc),
        'eight hundred thousand, five hundred';

## 19
ok ParseObj.parse('eighty six'.lc),
        'eighty six';

## 20
ok ParseObj.parse('eighty ten thousand , eight hundred zero million'.lc),
        'eighty ten thousand , eight hundred zero million';

## 21
ok ParseObj.parse('eleven hundred thousand , sixteen hundred'.lc),
        'eleven hundred thousand , sixteen hundred';

## 22
ok ParseObj.parse('fifteen hundred and seventeen'.lc),
        'fifteen hundred and seventeen';

## 23
ok ParseObj.parse('fifty one'.lc),
        'fifty one';

## 24
ok ParseObj.parse('fifty - two'.lc),
        'fifty - two';

## 25
ok ParseObj.parse('five hundred ninety'.lc),
        'five hundred ninety';

## 26
ok ParseObj.parse('forty six'.lc),
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
ok ParseObj.parse('nineteen hundred fourteen'.lc),
        'nineteen hundred fourteen';

## 31
ok ParseObj.parse('ninety'.lc),
        'ninety';

## 32
ok ParseObj.parse('one hundred million'.lc),
        'one hundred million';

## 33
ok ParseObj.parse('seven hundred and ninety'.lc),
        'seven hundred and ninety';

## 34
ok ParseObj.parse('seven hundred million'.lc),
        'seven hundred million';

## 35
ok ParseObj.parse('seventy'.lc),
        'seventy';

## 36
ok ParseObj.parse('seventy - ten thousand , fifteen hundred sixteen million'.lc),
        'seventy - ten thousand , fifteen hundred sixteen million';

## 37
ok ParseObj.parse('sixteen hundred zero thousand million and two thousand, ten hundred thirty'.lc),
        'sixteen hundred zero thousand million and two thousand, ten hundred thirty';

## 38
ok ParseObj.parse('sixty thousand'.lc),
        'sixty thousand';

## 39
ok ParseObj.parse('thirty - ten thousand zero'.lc),
        'thirty - ten thousand zero';

## 40
ok ParseObj.parse('three hundred and ninety eight thousand'.lc),
        'three hundred and ninety eight thousand';

## 41
ok ParseObj.parse('zero'.lc),
        'zero';

done-testing;

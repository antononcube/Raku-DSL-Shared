use Test;

use lib './lib';
use lib '.';

use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::English::WordedNumberSpec;
use DSL::Shared::Roles::English::PipelineCommand;

use DSL::Shared::Actions::English::WordedNumberSpec;

grammar ParseObj
        does DSL::Shared::Roles::ErrorHandling
        does DSL::Shared::Roles::English::WordedNumberSpec
        does DSL::Shared::Roles::English::PipelineCommand {
    rule TOP {
        <pipeline-command>    | <bg-worded-number-spec>
    }
};

sub parse-func(Str:D $spec) {
    ParseObj.parse(
            $spec.lc,
            rule => 'worded-number-spec',
            actions => DSL::Shared::Actions::English::WordedNumberSpec.new).made,
}

plan 42;

#-----------------------------------------------------------
# Worded number specifications parsing
#-----------------------------------------------------------
# The tests below are generated with the following Mathematica code:
#SeedRandom[39902];
#testLanguage = "English";
#k = 6;
#lsTestNumbers =
#  Union[Join @@
#    Map[RandomInteger[#, k] &, {{0, 19}, {20, 100}, {101,
#       1000}, {1001, 10000}, {10001, 10^6}, {10^6, 10^9}, {10^9,
#       10^12}}]];
#Length[lsTestNumbers]
#
#lsSentences =
#  Map[IntegerName[#, {"Bulgarian", "Words"}] &, lsTestNumbers];
#Shallow[lsSentences]
#
#StringRiffle[
# MapThread[
#  "## " <> #3 <> "\n" <> "is parse-func('" <> #1 <> "'), " <> #2 <>
#    ",\n'" <> #1 <> "';" &, {lsSentences, ToString /@ lsTestNumbers,
#   ToString /@ Range[Length[lsTestNumbers]]}], "\n\n"]

## 1
is parse-func('zero'), 0,
        'zero';

## 2
is parse-func('three'), 3,
        'three';

## 3
is parse-func('four'), 4,
        'four';

## 4
is parse-func('nine'), 9,
        'nine';

## 5
is parse-func('eighteen'), 18,
        'eighteen';

## 6
is parse-func('nineteen'), 19,
        'nineteen';

## 7
is parse-func('twenty‐one'), 21,
        'twenty‐one';

## 8
is parse-func('twenty‐nine'), 29,
        'twenty‐nine';

## 9
is parse-func('fifty‐six'), 56,
        'fifty‐six';

## 10
is parse-func('seventy‐six'), 76,
        'seventy‐six';

## 11
is parse-func('eighty‐five'), 85,
        'eighty‐five';

## 12
is parse-func('ninety‐seven'), 97,
        'ninety‐seven';

## 13
is parse-func('one hundred sixty‐three'), 163,
        'one hundred sixty‐three';

## 14
is parse-func('one hundred sixty‐eight'), 168,
        'one hundred sixty‐eight';

## 15
is parse-func('two hundred four'), 204,
        'two hundred four';

## 16
is parse-func('two hundred sixty'), 260,
        'two hundred sixty';

## 17
is parse-func('four hundred twenty‐seven'), 427,
        'four hundred twenty‐seven';

## 18
is parse-func('eight hundred four'), 804,
        'eight hundred four';

## 19
is parse-func('two thousand, seventy‐two'), 2072,
        'two thousand, seventy‐two';

## 20
is parse-func('two thousand, two hundred twenty‐eight'), 2228,
        'two thousand, two hundred twenty‐eight';

## 21
is parse-func('five thousand, five hundred twenty‐eight'), 5528,
        'five thousand, five hundred twenty‐eight';

## 22
is parse-func('five thousand, eight hundred fifty'), 5850,
        'five thousand, eight hundred fifty';

## 23
is parse-func('six thousand, five hundred eight'), 6508,
        'six thousand, five hundred eight';

## 24
is parse-func('seven thousand, four hundred twelve'), 7412,
        'seven thousand, four hundred twelve';

## 25
is parse-func('two hundred forty‐five thousand, three hundred twenty‐four'), 245324,
        'two hundred forty‐five thousand, three hundred twenty‐four';

## 26
is parse-func('six hundred fifteen thousand, two hundred ninety‐eight'), 615298,
        'six hundred fifteen thousand, two hundred ninety‐eight';

## 27
is parse-func('seven hundred thirty‐one thousand, one hundred six'), 731106,
        'seven hundred thirty‐one thousand, one hundred six';

## 28
is parse-func('eight hundred twenty‐three thousand, eight hundred twenty‐four'), 823824,
        'eight hundred twenty‐three thousand, eight hundred twenty‐four';

## 29
is parse-func('eight hundred ninety‐one thousand, eight hundred seventy‐one'), 891871,
        'eight hundred ninety‐one thousand, eight hundred seventy‐one';

## 30
is parse-func('nine hundred forty‐one thousand, five hundred six'), 941506,
        'nine hundred forty‐one thousand, five hundred six';

## 31
is parse-func('fifty‐five million, three hundred ninety thousand, five hundred twenty‐seven'), 55390527,
        'fifty‐five million, three hundred ninety thousand, five hundred twenty‐seven';

## 32
is parse-func('seventy‐six million, seven hundred twenty‐four thousand, four hundred thirty‐six'), 76724436,
        'seventy‐six million, seven hundred twenty‐four thousand, four hundred thirty‐six';

## 33
is parse-func('two hundred forty‐seven million, five hundred seven thousand, eighteen'), 247507018,
        'two hundred forty‐seven million, five hundred seven thousand, eighteen';

## 34
is parse-func('five hundred sixteen million, seven hundred fifty‐three thousand, three hundred seventy‐eight'),
        516753378,
        'five hundred sixteen million, seven hundred fifty‐three thousand, three hundred seventy‐eight';

## 35
is parse-func('eight hundred forty‐two million, seven hundred four thousand, seven hundred eighty‐three'), 842704783,
        'eight hundred forty‐two million, seven hundred four thousand, seven hundred eighty‐three';

## 36
is parse-func('nine hundred eighty‐eight million, nine hundred sixty‐one thousand, three hundred twenty‐four'),
        988961324,
        'nine hundred eighty‐eight million, nine hundred sixty‐one thousand, three hundred twenty‐four';

## 37
is
        parse-func('five hundred eighty‐seven billion, seven hundred twenty‐seven million, two hundred thirty thousand, one hundred ninety‐nine'),
        587727230199,
        'five hundred eighty‐seven billion, seven hundred twenty‐seven million, two hundred thirty thousand, one hundred ninety‐nine';

## 38
is
        parse-func('six hundred twenty‐seven billion, five hundred eighty million, nine hundred thirty‐five thousand, seventy‐two'),
        627580935072,
        'six hundred twenty‐seven billion, five hundred eighty million, nine hundred thirty‐five thousand, seventy‐two';

## 39
is
        parse-func('seven hundred eighty‐four billion, six hundred thirty million, seven hundred thirty‐eight thousand, one hundred twenty'),
        784630738120,
        'seven hundred eighty‐four billion, six hundred thirty million, seven hundred thirty‐eight thousand, one hundred twenty';

## 40
is
        parse-func('eight hundred four billion, three hundred ninety‐seven million, four hundred sixteen thousand, seven hundred thirty‐six'),
        804397416736,
        'eight hundred four billion, three hundred ninety‐seven million, four hundred sixteen thousand, seven hundred thirty‐six';

## 41
is
        parse-func('eight hundred sixty‐seven billion, five hundred sixty‐one million, three hundred eighty thousand, four hundred fourteen'),
        867561380414,
        'eight hundred sixty‐seven billion, five hundred sixty‐one million, three hundred eighty thousand, four hundred fourteen';

## 42
is
        parse-func('nine hundred eighty billion, seven hundred thirty‐six million, one hundred thirty‐eight thousand, eight hundred thirty‐nine'),
        980736138839,
        'nine hundred eighty billion, seven hundred thirty‐six million, one hundred thirty‐eight thousand, eight hundred thirty‐nine';

done-testing;
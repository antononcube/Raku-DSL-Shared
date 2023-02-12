use v6.d;

use lib '.';
use lib './lib';

use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::English::TimeIntervalSpec;
use DSL::Shared::Roles::English::PipelineCommand;
use DSL::Shared::Actions::English::TimeIntervalSpec;

use Lingua::NumericWordForms::Roles::English::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::English::WordedNumberSpec;

use DateTime::Grammar;

grammar ParseObj
        is DateTime::Grammar
        does Lingua::NumericWordForms::Roles::English::WordedNumberSpec
        does DSL::Shared::Roles::English::TimeIntervalSpec
        does DSL::Shared::Roles::English::PipelineCommand {
    regex TOP {
        || <full-date-spec>
        || <pipeline-command>
        || <time-interval-spec>
        || <numeric-word-form>
    }
    regex full-date-spec:sym<FullDate> {
        <DateTime::Grammar::datetime-spec>
    }
}

# This code show the ability to parse numeric word forms:
#say ParseObj.parse( 'two hundred and one', rule => 'numeric-word-form');

#say ParseObj.parse( 'one thousand and five hundred',
#        rule => 'numeric-word-form',
#        actions => Lingua::NumericWordForms::Actions::English::WordedNumberSpec.new ).made;
#
#say "-" x 80;
#
#say ParseObj.parse( 'eight hundred sixty‐seven billion, five hundred sixty‐one million, three hundred eighty thousand, four hundred fourteen',
#        rule => 'numeric-word-form',
#        actions => Lingua::NumericWordForms::Actions::English::WordedNumberSpec.new ).made;

#say "=" x 80;


my @commands = (
'past year',
'last year',
'from week 12 to week 20',
'from week twelve to week 20',
'week twenty',
'from week twelve to week twenty',
'from jan to mar',
'from january 2020 to march 2021',
'2 week of 2019',
'two weeks ago',
'in the last three weeks',
'between 30 and 40 days',
'between thirty and forty days',
'from jan 20 2023 to 21 march 2023',
);

my @dateSpecs = (
'january 30 2023',
'january thirty, two thousand twenty three',
'30 january 2023',
'2023-01-01',
'01/21/2023',
'Oct 12 2022',
'Sun, 06 Nov 1994 08:49:37 GMT'
);

my $action-type = 'parse';

for @dateSpecs.kv -> $i, $c {
    say "=" x 80;
    say "$i : $c";
    say "-" x 80;
    say do given $action-type {
        when 'parse' {
            ParseObj.parse($c, rule => 'TOP')
            # rule => 'full-date-spec' );

        }
        when 'subparse' {
            ParseObj.subparse($c, rule => 'TOP')
        }
        default {
            ParseObj.parse($c, rule => 'TOP', actions => DSL::Shared::Actions::English::TimeIntervalSpec.new).made;
        }
    }
};


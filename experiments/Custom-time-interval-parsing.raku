#!/usr/bin/env raku
use v6.d;

use lib '.';
use lib './lib';

use DSL::Shared::Actions::English::TimeIntervalSpec;
use DSL::Shared::Actions::English::TimeIntervalSpecRefPoint;
use DSL::Shared::Roles::English::PipelineCommand;
use DSL::Shared::Roles::English::TimeIntervalSpec;
use DSL::Shared::Roles::ErrorHandling;
use DateTime::Grammar;
use Lingua::NumericWordForms::Actions::English::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::English::WordedNumberSpec;

use Test::Time;

#============================================================
# Custom grammar
#============================================================

grammar CustomTimeInterval
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


class FromCustomTimeInterval
    is DSL::Shared::Actions::English::TimeIntervalSpec
    is DateTime::Actions::Raku {

    method full-date-spec:sym<FullDate>($/) {
        my $d = $/.values[0].made;
        self.from = $d;
        self.to = $d;
        self.unit = 'day';
        self.length = 1;
        make %(unit => self.unit, length => self.length, value => $d, from => self.from, to => self.to);
    }
}

class FromCustomTimeIntervalRefPoint
        is DSL::Shared::Actions::English::TimeIntervalSpecRefPoint
        is DateTime::Actions::Raku {

    method full-date-spec:sym<FullDate>($/) {
        my $d = $/.values[0].made;
        self.refPoint = $d.Str;
        self.unit = 'day';
        self.length = 1;
        make %(Unit => self.unit, Length => self.length, RefPoint => self.refPoint);
    }
}

#============================================================
# Testing
#============================================================

my @commands = (
'past year',
'last year',
'today',
'from yesterday to tomorrow',
'january 30 2023',
'january thirty, two thousand twenty three',
'october eighteen two thousand twenty three',
#'thirty january, two thousand twenty three',
'30 january 2023',
'2023-01-01',
'Sun, 06 Nov 1994 08:49:37 GMT',
'from jan to mar',
'from jan to feb',
);

my @commands2 = (
'this hour',
'this year',
'this week',
'this weekend',
'next week',
'this month',
'last month',
'next month',
'next weekend',
'this monday',
'this fri',
'next tuesday',
'last fri',
);

my @commands3 = (
'last decade',
'decade',
'this decade',
'next decades',
'last century',
'this centry',
'next century',
'last millennium',
'this millennium',
'next millennium',
);

my @commands4 = (
'between beginning of year and tomorrow',
'between end of week and tomorrow',
'between the beginning of the month and tomorrow',
'between the beginning of the year and tomorrow',
'between today and the end of the year',
'between tomorrow and end of year',
'between yesterday and tomorrow',
'from beginning of the week to end of month',
'from end of week to ramadan',
'from start of this year to end of next week',
'from start of year to end of week',
'from the beginning of the last month to the end of the next month',
'from the beginning of the year until tomorrow',
'from yesterday to tomorrow',
);

my @commands5 = (
'penultimate week',
'past week',
'past year',
'past decade',
'next friday',
'next mon',
'monday',
'mon',
);

my @problematic = (
#'mon',
#'last mon',
#'next mon',
#'mon',
#'last mon',
#'next mon',
#'wed',
#'last wed',
#'next wed',
#'mon tue wed fri'
'feb to july'
);

#my $localHour = now.DateTime.hour;
my $localHour = 2;
my $localDate = Date.new(2023, 2, 15);
my $localDateTime = DateTime.new(2023, 2, 15, $localHour, 0, 0, :timezone(-18000));
#my $localDateTime = DateTime.new(2023, 2, 18, now.DateTime.hour, 0, 0);
$*SCHEDULER = mock-time($localDateTime.Instant);

note (Date.today, $localDate, 'expected date');

my @commandsAll = [|@commands, |@commands2, |@commands3, |@commands4, |@commands5];

my $action-type = 'parse';

my $test = "#{'=' x 60}\n# Tests\n#{'=' x 60}\n\nplan *;";

for @problematic.kv -> $i, $c {
    say "=" x 80;
    say "$i : $c";
    say "-" x 80;
    say do given $action-type {
        when 'parse' {
            CustomTimeInterval.parse($c, rule => 'TOP')
        }
        when 'subparse' {
            CustomTimeInterval.subparse($c, rule => 'TOP')
        }
        when 'interpret' {
            CustomTimeInterval.parse($c, rule => 'TOP', actions => FromCustomTimeInterval.new).made;
        }
        when 'test-making' {
            my %res = CustomTimeInterval.parse($c, rule => 'TOP', actions => FromCustomTimeInterval.new).made;
            my $testLocal = '';
            $testLocal ~= "## {$i+1}\n";
            $testLocal ~= "is-deeply ti-interpret('$c')<from to>,\n{%res<from to>.raku},\n'$c';";

            $test ~= "\n\n" ~ $testLocal;
        }
    }
}

if $action-type eq <test-making> {
    spurt $*CWD ~ '/xt/Time-interval-specs-interpretation_new.rakutest', $test ~ "\n\ndone-testing;";
}


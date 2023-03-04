use v6.d;

use DSL::Shared::Actions::CommonStructures;
use Lingua::NumericWordForms::Actions::English::WordedNumberSpec;

class DSL::Shared::Actions::English::TimeIntervalSpec
        is DSL::Shared::Actions::CommonStructures
        is Lingua::NumericWordForms::Actions::English::WordedNumberSpec {

    has $.value is rw;
    has Dateish $.from is rw;
    has Dateish $.to is rw;
    has Int $.length is rw;
    has Str $.unit is rw;

    has %.monthNameLong = january => 1, february => 2, march => 3, april => 4, may => 5, june => 6,
                          july => 7, august => 8, september => 9, october => 10, november => 11, december => 12;

    has %.monthNameAbbr = jan => 1, feb => 2, mar => 3, apr => 4, may => 5, jun => 6,
                          jul => 7, aug => 8, sep => 9, oct => 10, nov => 11, dec => 12;

    has %.dayNameLong = sunday => 0, monday => 1, tuesday => 2, wednesday => 3,
                        thursday => 4, friday => 5, saturday => 6;

    has %.dayNameAbbr = sun => 0, mon => 1, tue => 2, wed => 3, thu => 4, fri => 5, sat => 6;

    ##----------------------------------------------------------
    method time-interval-spec($/) {
        my $res = $/.values[0].made;
        if $res ~~ Hash {
            my %res = $res.pairs;
            %res = %res, %( Timestamp => DateTime.now, Command => $/.Str);
            make %res;
        }
        # This is used in development-debugging loops
        # else {
        #     warn "No hash interpretation for '{ $/ }' from '{ $/.orig }'.";
        #     make $res;
        # }
    }

    ##----------------------------------------------------------
    method time-unit($/) {
        my @units = <hour day weekend week month year decade century millennium lifetime>;
        my %unitMap = @units.map({ $_ ~ '-time-spec-word' => $_ });
        # note %unitMap.keys Z=> $/{%unitMap.keys}>>.so;
        for %unitMap.kv -> $k, $v {
            if so $/{$k} {
                make $v;
                last
            }
        }
    }

    method time-units($/) {
        my @units = <hours days weekends weeks months years decades centuries millenniums lifetimes>;
        my %unitMap = @units.map({ $_ ~ '-time-spec-word' => $_ });
        # note %unitMap.keys Z=> $/{%unitMap.keys}>>.so;
        for %unitMap.kv -> $k, $v {
            if so $/{$k} {
                make $v.substr(0, *- 1);
                last
            }
        }
    }

    ##----------------------------------------------------------
    method week-of-year($/) {
        $!unit = 'year-week';
        $!length = 1;
        my $y = $<year-spec>.made;
        $!value = $<week-number-range>.made<value>;
        $!from = Date.new($y, 1, 1).later([week => $!value,]);
        $!to = $!from.later(:6day);
        make %(:$!unit, :$!length, :$!value, $!from, $!to);
    }

    ##----------------------------------------------------------
    method month-of-year($/) {
        $!unit = 'year-month';
        $!length = 1;
        my $y = $<year-spec> ?? $<year-spec>.made !! Date.today.year;
        $!value = $<month-name>.made<value>;
        $!from = Date.new($y, $<month-name>.made<value>, 1);
        $!to = Date.new($y, $<month-name>.made<value> + 1, 1).earlier(:1day);
        make %(:$!unit, :$!length, :$!value, :$!from, :$!to);
    }

    ##----------------------------------------------------------
    method time-interval-from-to-spec($/) {
        $!from = $<from>.made<from>;
        $!to = $<to>.made<to>;

        my %res = $<from>.made, %(:$!from, :$!to);
        make %res;
    }

    ##----------------------------------------------------------
    method time-interval-into-spec($/) {
        make $/.values[0].made;
    }

    ##----------------------------------------------------------
    method time-interval-in-units-spec($/) {

        my %num = $<time-spec-number>.made;
        my %res = $<number-of-time-units>.made;

        %res = %res, %(from => %num<length>, to => %res<length>, Length => (%res<length> + %num<length>) / 2);
        make %res
    }

    ##----------------------------------------------------------
    method named-time-intervals($/) {
        make $/.values[0].made;
    }

    ##----------------------------------------------------------
    method single-time-interval-relative($/) {
        make $/.values[0].made;
    }

    ##----------------------------------------------------------
    method multi-time-interval-relative($/) {
        $!value = now;

        my $sign = 0;
        with $<ago-time-spec-word> {
            $sign = -1;
        } else {
            $sign = $<next-time-spec-word> ?? 1 !! -1;
        }

        my %res = $<number-of-time-units>.made, %(:$!value);

        if %res<unit> eq 'year' and $<last-time-spec-word> {
            %res = %res, %(from => (Date.today.year - 1).Str ~ '-01-01', to => (Date.today.year - 1).Str ~ '-12-31')
        }

        make %res
    }

    ##----------------------------------------------------------
    method time-interval-relative($/) {
        make $/.values[0].made;
    }

    ##----------------------------------------------------------
    method number-of-time-units($/) {
        make $/.values[0].made;
    }

    method few-time-units($/) {
        $!length = 3;
        $!unit = $<time-units>.made;
        make %(:$!length, :$!unit)
    }

    method multi-time-units($/) {
        $!length = $<time-spec-number>.made<length>;
        $!unit = $<time-units>.made;
        make %(:$!length, :$!unit)
    }

    method one-time-unit($/) {
        $!length = 1;
        $!unit = $<time-unit>.made;
        make %(:$!length, :$!unit)
    }

    method process-time-interval($/, Int $offset is copy = 0) {
        my ($fromLocal, $toLocal);

        $!length = 1;

        if $<time-unit> {
            $!unit = $<time-unit>.made;
        } elsif $<named-time-intervals> {
            given $<named-time-intervals>.made {
                when Str { $!unit = $_; }
                when Hash { $!unit = $_<value>; }
            }
        }

        given $!unit {
            when 'week' {
                my ($y, $w) = Date.today.week;
                $fromLocal = Date.new($y, 1, 1).later(['week' => $w - 1,]);
                $toLocal = $fromLocal.later(:1week).earlier(:1day);
            }
            when 'month' {
                my $y = Date.today.year;
                my $m = Date.today.month;
                $fromLocal = Date.new($y, $m, 1);
                $toLocal = $fromLocal.later(:1month).earlier(:1day);
            }
            when 'year' {
                my ($y, $w) = Date.today.week;
                $fromLocal = Date.new($y, 1, 1);
                $toLocal = Date.new($y, 12, 31);
            }
            when 'decade' {
                my $y = Date.today.year;
                $fromLocal = Date.new($y - $y % 10, 1, 1);
                $toLocal = $fromLocal.later(:10year).earlier(:1day);
            }
            when 'century' {
                my $y = Date.today.year;
                $fromLocal = Date.new($y - $y % 100 + 1, 1, 1);
                $toLocal = $fromLocal.later(:100year).earlier(:1day);
            }
            when 'millennium' {
                my $y = Date.today.year;
                $fromLocal = Date.new($y - $y % 1000 + 1, 1, 1);
                $toLocal = $fromLocal.later(:1000year).earlier(:1day);
            }
            when $_ ∈ <hour minute> {
                my $h = now.Int - now.Int % ($_ eq 'hour' ?? 3600 !! 60);
                $fromLocal = DateTime.new($h, timezone => $*TZ);
                $toLocal = DateTime.new($h + ($_ eq 'hour' ?? 3600 !! 60), timezone => $*TZ);
            }
            when $_ eq 'weekend' {
                my ($y, $w) = Date.today.week;
                # Since British and USA week starts with Sunday we add 6 days to reach the weekend.
                $fromLocal = Date.new($y, 1, 1).later(['week' => $w - 1,]).later(:6day);
                $toLocal = Date.new($y, 1, 1).later(['week' => $w,]);
            }
            when (%!dayNameAbbr{$_}:exists) || (%!dayNameLong{$_}:exists) {
                # Since British and USA week starts with Sunday we use Sunday => 0, etc.
                my $weekOffset = %!dayNameAbbr{$_} // %!dayNameLong{$_};
                $fromLocal = Date.today.earlier(['day' => Date.today.day-of-week, ]).later([ 'day' => $weekOffset, ]);
                $toLocal = $fromLocal;

                if Date.today.day-of-week > $weekOffset && $offset == -1 {
                    $offset = 0;
                } elsif Date.today.day-of-week < $weekOffset && $offset == 1 {
                    $offset = 0;
                }
            }
        }

        if $offset != 0 {
            my $unitLocal = $!unit;

            given $!unit {
                when $_ eq 'weekend' || (%!dayNameAbbr{$_}:exists) || (%!dayNameLong{$_}:exists) { $unitLocal = 'week'; }
                when $_ eq 'decade' {
                    $unitLocal = 'year';
                    $offset = 10 * $offset;
                }
                when $_ eq 'century' {
                    $unitLocal = 'year';
                    $offset = 100 * $offset;
                }
                when $_ eq 'millennium' {
                    $unitLocal = 'year';
                    $offset = 1000 * $offset;
                }
            }

            if $!unit eq 'month' {
                $fromLocal = $fromLocal.later([month => $offset,]);
                my $mdays = $fromLocal.days-in-month;
                $toLocal = $fromLocal.later([day => $mdays - 1,]);
            } else {
                $fromLocal = $fromLocal.later([$unitLocal => $offset,]);
                $toLocal = $toLocal.later([$unitLocal => $offset,]);
            }
        }

        $!from = $fromLocal;
        $!to = $toLocal;

        return %(:$!unit, :$!length, :$!from, :$!to);
    }

    method this-time-interval($/) {
        make self.process-time-interval($/, 0);
    }

    method next-time-interval($/) {
        make self.process-time-interval($/, 1);
    }

    method last-time-interval($/) {
        make self.process-time-interval($/, -1);
    }

    method past-time-interval($/) {
        if $<time-unit> eq 'year' {
            $!unit = 'year';
            $!length = 1;
            $!to = Date.today;
            $!from = $!to.earlier(:1year);
            make %(:$!unit, :$!length, :$!from, :$!to);
        } else {
            # With this implementation "past" is a synonym of "last".
            # But "past year" has a different interpretation of "last year". (See above.)
            make self.process-time-interval($/, -1);
        }
    }

    method penultimate-time-interval($/) {
        make self.process-time-interval($/, -2);
    }

    ##----------------------------------------------------------
    method year-spec($/) {
        $!value = ($/.values[0].made)<value>;
        $!unit = 'year';
        $!length = 1;
        $!from = Date.new($!value, 1, 1);
        $!to = Date.new($!value, 12, 31);
        make %(:$!unit, :$!length, :$!value, :$!from, :$!to);
    }

    ##----------------------------------------------------------
    method time-spec($/) {
        make $/.values[0].made;
    }

    method time-unit-beginning-spec($/) {
        my %res = do if $<single-time-interval-relative> {
            $<single-time-interval-relative>.made;
        } else {
            self.process-time-interval($/, 0);
        }
        $!unit = 'day';
        %res<unit> = $!unit;
        make %res;
    }

    method time-unit-ending-spec($/) {
        my %res = do if $<single-time-interval-relative> {
            $<single-time-interval-relative>.made;
        } else {
            self.process-time-interval($/, 0);
        }
        $!unit = 'day';
        %res<unit> = $!unit;
        make %res;
    }

    method right-now($/) {
        $!value = DateTime.now;
        $!unit = 'hour';
        $!length = 1;
        $!from = Date.today.DateTime.later([hour => $!value.hour,]);
        $!to = Date.today.DateTime.later([hour => $!value.hour,]);
        make %(:$!unit, :$!length, :$!value, $!from, $!to);
    }

    method month-name($/) {
        $!value = $/.values[0].made;
        $!unit = 'month';
        $!length = 1,
        $!from = Date.new(Date.today.year, $/.values[0].made, 1);
        $!to = Date.new(Date.today.year, $/.values[0].made, 1).later(:1month).earlier(:1day);
        make %(:$!unit, :$!length, :$!value, :$!from, :$!to);
    }

    method month-name-long($/) {
        make %!monthNameLong{$/.Str.trim}
    }

    method month-name-abbr($/) {
        make %!monthNameAbbr{$/.Str.trim}
    }

    ##----------------------------------------------------------
    method day-name-relative($/) {
        if $<today-time-spec-word> {
            $!value = Date.today;
        } elsif $<yesterday-time-spec-word> {
            $!value = Date.today.earlier(:1day);
        } elsif $<tomorrow-time-spec-word> {
            $!value = Date.today.later(:1day);
        } else {
            $!value = Date.today.earlier(:2day);
        }
        $!unit = 'day';
        $!length = 1;
        make %(:$!unit, :$!length, :$!value, from => $!value, to => $!value);
    }

    ##----------------------------------------------------------
    method day-name($/) {
        my $dnVal = self.day-name-value($/.values[0]);
        $!unit = $dnVal;
        my %res = self.process-time-interval($/.values[0]);
        %res<value> = $dnVal;
        %res<unit> = 'day';
        $!unit = 'day';
        make %res;
    }

    method day-name-value ($/) {
        # May be this can sped-up twice by using two separate functions:
        # one for long names and one for short names.
        my @names = <monday tuesday wednesday thursday friday saturday sunday>;
        @names.append(<mon tue wed thu fri sat sun>);
        my %namesMap = @names.map({ $_ ~ '-time-spec-word' => $_ });
        for %namesMap.kv -> $k, $v {
            if so $/{$k} { return $v; }
        }
        # This should not happen
        return Nil;
    }

    ##----------------------------------------------------------
    method full-date-spec($/) {
        make $/.values[0].made;
    }

    method full-date-spec:sym<Simple>($/) {
        make $/.values[0].made;
    }

    method worded-date-spec($/) {
        $!value = Date.new(
                $<year> ?? $<year>.made<value> !! Date.today.year,
                $<month>.made<value>,
                $<date>.made<value>);
        $!unit = 'day';
        $!length = 1;
        make %(:$!unit, :$!length, :$!value, from => $!value, to => $!value);
    }

    method iso-date-spec($/) {
        $!unit = 'day';
        $!length = 1;
        $!value = Date.new($<year>.made<value>, $<month>.made, $<date>.made);
        $!from = $!value;
        $!to = $!value;
        make %(:$!unit, :$!length, :$!value, :$!from, :$!to);
    }

    method full-date-hour-spec($/) {
        make %(hour => $<hour>.made, minute => $<minute>.made);
    }

    ##----------------------------------------------------------
    method week-number($/) {
        make $<week-number-range>.made
    }

    method week-number-range($/) {
        $!value = $<numeric-word-form> ?? $<numeric-word-form>.made !! $/.Str.Int;
        $!unit = 'week';
        $!length = 1;
        # Since we have just a week number we assume current year.
        # The methods that use this one should override the value of 'from' and 'to'.
        $!from = Date.new(Date.today.year, 1, 1).later([week => $!value - 1,]);
        $!to = Date.new(Date.today.year, 1, 1).later([week => $!value,]);
        make %(:$!unit, :$!length, :$!value, :$!from, :$!to);
    }

    method date-number-range($/) {
        $!value = $<numeric-word-form> ?? $<numeric-word-form>.made !! $/.Str.Int;
        $!unit = 'day';
        $!length = 1;
        # Since we have just a day number we assume current year and month.
        # The methods that use this one should override the value of 'from' and 'to'.
        $!from = Date.new(Date.today.year, Date.today.month, 1).later([day => $!value,]);
        $!to = $!from;
        make %(:$!unit, :$!length, :$!value, :$!from, :$!to);
    }

    method year-number-range($/) {
        $!value = $<numeric-word-form> ?? $<numeric-word-form>.made !! $/.Str.Int;
        $!unit = 'year';
        $!length = 1;
        $!from = Date.new($!value, 1, 1);
        $!to = Date.new($!value, 12, 31);
        make %(:$!unit, :$!length, :$!value, :$!from, :$!to);
    }

    method time-spec-number($/) {
        $!length = $/.values[0].made.Int;
        make %(:$!length);
    }
}

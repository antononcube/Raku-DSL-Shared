    use v6;

use DSL::Shared::Actions::CommonStructures;
use Lingua::NumericWordForms::Actions::English::WordedNumberSpec;

class DSL::Shared::Actions::English::TimeIntervalSpecRefPoint
        is DSL::Shared::Actions::CommonStructures
        is Lingua::NumericWordForms::Actions::English::WordedNumberSpec {

    # It might be better with $!from, $!to, and $!refPoint to be DateTime objects,
    # and be converted to strings at a subsequent (or "last") interpretation step.
    has Str $.dir is rw;
    has Str $.refPoint is rw;
    has Str $.from is rw;
    has Str $.to is rw;
    has Int $.length is rw;
    has Str $.unit is rw;

    has %.monthNameLong = january => 1, february => 2, march => 3, april => 4, may => 5, june => 6,
                          july => 7, august => 8, september => 9, october => 10, november => 11, december => 12;

    has %.monthNameAbbr = jan => 1, feb => 2, mar => 3, apr => 4, may => 5, jun => 6,
                          jul => 7, aug => 8, sep => 9, oct => 10, nov => 11, dec => 12;

    has %.dayNameLong = sunday => 0, monday => 1, tuesday => 2, wednesday => 3, thursday => 4, friday => 5, saturday => 6;

    has %.dayNameAbbr = sun => 0, mon => 1, tue => 2, wed => 3, thu => 4, fri => 5, sat => 6;

    ##----------------------------------------------------------
    method normalize-time-interval-spec(%tiSpec) {
        with %tiSpec<From> && %tiSpec<To> {
            %tiSpec
        }
        orwith %tiSpec<RefPoint> && %tiSpec<Direction> {
            given (%tiSpec<RefPoint>, %tiSpec<Direction>, %tiSpec<Unit>) {
                when <now past year> {
                    %tiSpec, { From => Date.today - %tiSpec<Length> * 365, To => Date.today }
                }
                when <now future year> {
                    %tiSpec, { From => Date.today, To => Date.today + %tiSpec<Length> * 365 }
                }
                when <now past month> {
                    %tiSpec, { From => Date.today - %tiSpec<Length> * 31, To => Date.today }
                }
                when <now future month> {
                    %tiSpec, { From => Date.today, To => Date.today + %tiSpec<Length> * 31 }
                }
                when <now past week> {
                    %tiSpec, { From => Date.today - %tiSpec<Length> * 7, To => Date.today }
                }
                when <now future week> {
                    %tiSpec, { From => Date.today, To => Date.today + %tiSpec<Length> * 7 }
                }
                when <now past day> {
                    %tiSpec, { From => Date.today - %tiSpec<Length>, To => Date.today }
                }
                when <now future day> {
                    %tiSpec, { From => Date.today, To => Date.today + %tiSpec<Length> }
                }
            }
        }
    }

    ##----------------------------------------------------------
    method time-interval-spec($/) {
        my $res = $/.values[0].made;
        if $res ~~ Hash {
            my %res = $res.pairs;
            %res = %res, %( Timestamp => DateTime.now, Command => $/.Str);
            make %res;
        } else {
            warn "No hash interpretation for '{ $/ }' from '{ $/.orig }'.";
            make $res;
        }
    }

    ##----------------------------------------------------------
    method time-unit($/) {
        make $/.Str;
    }

    method time-units($/) {
        make $/.Str.trim.substr(0, *- 1);
    }

    ##----------------------------------------------------------
    method week-of-year($/) {
        $!unit = 'year-week';
        $!length = 1;
        my %res = $<year-spec>.made;
        $!refPoint = %res<RefPoint> ~ '-' ~ $<week-number-range>.made<RefPoint>;
        make %( RefPoint => $!refPoint, Length => $!length, Unit => $!unit)
    }

    ##----------------------------------------------------------
    method month-of-year($/) {
        $!unit = 'year-month';
        $!length = 1;
        my %res = $<year-spec> ?? $<year-spec>.made !! %( Unit => 'year', RefPoint => Date.today.year.Str);
        $!refPoint = %res<RefPoint> ~ '-' ~ $<month-name>.made<Value>;
        make %( RefPoint => $!refPoint, Length => $!length, Unit => $!unit)
    }

    ##----------------------------------------------------------
    method time-interval-from-to-spec($/) {
        $!from = $<from>.made<RefPoint>.Str;
        $!to = $<to>.made<RefPoint>.Str;

        my %res = $<from>.made, %(From => $!from, To => $!to);
        make %res
    }

    ##----------------------------------------------------------
    method time-interval-into-spec($/) {
        make $/.values[0].made;
    }

    ##----------------------------------------------------------
    method time-interval-in-units-spec($/) {

        my %num = $<time-spec-number>.made;
        my %res = $<number-of-time-units>.made;

        %res = %res, %(From => %num<Length>, To => %res<Length>, Length => (%res<Length> + %num<Length>) / 2);
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
        $!refPoint = 'now';

        with $<ago-time-spec-word> {
            $!dir = 'past';
        } else {
            $!dir = $<next-time-spec-word> ?? 'future' !! 'past';
        }

        my %res = $<number-of-time-units>.made, %(RefPoint => $!refPoint, Direction => $!dir);

        if %res<Unit> eq 'year' and $<last-time-spec-word> {
            %res = %res, %(From => (Date.today.year - 1).Str ~ '-01-01', To => (Date.today.year - 1).Str ~ '-12-31')
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
        make %(Length => $!length, Unit => $!unit)
    }

    method multi-time-units($/) {
        $!length = $<time-spec-number>.made<Length>;
        $!unit = $<time-units>.made;
        make %(Length => $!length, Unit => $!unit)
    }

    method one-time-unit($/) {
        $!length = 1;
        $!unit = $<time-unit>.made;
        make %(Length => $!length, Unit => $!unit)
    }

    method process-time-interval($/, Int $offset is copy = 0) {
        my ($fromLocal, $toLocal);

        $!length = 1;
        $!unit = $<time-unit> ?? $<time-unit>.made !! $<named-time-intervals>.made;

        given $!unit {
            when 'week'  {
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
                my ($y, $w) = Date.today.week;
                # Since British and USA week starts with Sunday we use Sunday => 0, etc.
                my $offset = %!dayNameAbbr{$_} // %!dayNameLong{$_};
                $fromLocal = Date.new($y, 1, 1).later(['week' => $w - 1,]).later([day => $offset, ]);
                $toLocal = $fromLocal;
            }
        }

        if $offset != 0 {
            my $unitLocal = $!unit;

            given $!unit {
                when $_ eq 'weekend' || (%!dayNameAbbr{$_}:exists) || (%!dayNameLong{$_}:exists) { $unitLocal = 'week'; }
                when $_ eq 'decade' { $unitLocal = 'year'; $offset = 10 * $offset; }
                when $_ eq 'century' { $unitLocal = 'year';  $offset = 100 * $offset; }
                when $_ eq 'millennium' { $unitLocal = 'year';  $offset = 1000 * $offset; }
            }

            if $!unit eq 'month' {
                $fromLocal = $fromLocal.later([month => $offset,]);
                my $mdays = $fromLocal.days-in-month;
                $toLocal = $fromLocal.later([day => $mdays-1,]);
            } else {
                $fromLocal = $fromLocal.later([$unitLocal => $offset,]);
                $toLocal = $toLocal.later([$unitLocal => $offset,]);
            }
        }

        $!from = $fromLocal.Str;
        $!to = $toLocal.Str;

        return %(From => $!from, To => $!to, Length => $!length, Unit => $!unit);
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

    ##----------------------------------------------------------
    method year-spec($/) {
        $!refPoint = ($/.values[0].made){'RefPoint'};
        $!unit = 'year';
        $!length = 1;
        make %( RefPoint => $!refPoint, Length => $!length, Unit => $!unit)
    }

    ##----------------------------------------------------------
    method time-spec($/) {
        make $/.values[0].made
    }

    method right-now($/) {
        $!refPoint = DateTime.now.Str;
        $!unit = 'hour';
        $!length = 1;
        make %( Length => $!length, RefPoint => $!refPoint, Unit => $!unit)
    }

    method month-name($/) {
        my $val = $/.values[0].made;
        make %( Unit => 'month', Length => 1, RefPoint => Date.new(Date.today.year, $/.values[0].made, 1).Str,
                Value => $val);
    }

    method month-name-long($/) {
        make %!monthNameLong{$/.Str.trim}
    }

    method month-name-abbr($/) {
        make %!monthNameAbbr{$/.Str.trim}
    }

    ##----------------------------------------------------------
    method day-name-relative($/) {
        my $value;
        if $<today-time-spec-word> {
            $!dir = 'none';
            $value = Date.today;
        } elsif $<yesterday-time-spec-word> {
            $!dir = 'past';
            $value = Date.today.earlier(:1day);
        } elsif $<tomorrow-time-spec-word> {
            $!dir = 'future';
            $value = Date.today.later(:1day);
        } else {
            $!dir = 'past';
            $value = Date.today.earlier(:2day);
        }
        $!refPoint = $value.Str;
        make %(RefPoint => $!refPoint, Direction => $!dir, From => $value, To => $value);
    }

    ##----------------------------------------------------------
    method day-name($/) {
        make $/.values[0].made;
    }

    method day-name-abbr($/) {
        my $d = $/.Str.lc;
        # This needs to be check for fuzzy matching
        # make %!dayNameAbbr{$d} // 'None';
        make $d;
    }

    method day-name-long($/) {
        my $d = $/.Str.lc;
        # This needs to be check for fuzzy matching
        make $d;
    }

    ##----------------------------------------------------------
    method full-date-spec($/) {
        make $/.values[0].made;
    }

    method full-date-spec:sym<Simple>($/) {
        make $/.values[0].made;
    }

    method worded-date-spec($/) {
        my $d = Date.new(
                $<year> ?? $<year>.made<RefPoint>.Numeric !! Date.today.year,
                $<month>.made.Numeric,
                $<date>.made<RefPoint>.Numeric);
        $!refPoint = $d.Str;
        $!unit = 'day';
        $!length = 1;
        make %( Unit => $!unit, Length => $!length, RefPoint => $!refPoint)
    }

    method iso-date-spec($/) {
        my $d = Date.new($<year>.made.Numeric, $<month>.made.Numeric, $<date>.made.Numeric);
        $!refPoint = $d.Str;
        $!unit = 'day';
        $!length = 1;
        make %( Unit => $!unit, Length => $!length, RefPoint => $!refPoint)
    }

    method full-date-hour-spec($/) {
        make %(hour => $<hour>.made, minute => $<minute>.made);
    }

    ##----------------------------------------------------------
    method week-number($/) {
        make $<week-number-range>.made
    }

    method week-number-range($/) {
        $!refPoint = $<numeric-word-form> ?? $<numeric-word-form>.made.Str !! $/.Str;
        $!unit = 'week';
        $!length = 1;
        make %( Unit => $!unit, Length => $!length, RefPoint => $!refPoint)
    }

    method date-number-range($/) {
        $!refPoint = $<numeric-word-form> ?? $<numeric-word-form>.made.Str !! $/.Str;
        $!unit = 'day';
        make %( Unit => $!unit, RefPoint => $!refPoint)
    }

    method year-number-range($/) {
        $!refPoint = $<numeric-word-form> ?? $<numeric-word-form>.made.Str !! $/.Str;
        $!unit = 'year';
        make %( Unit => $!unit, RefPoint => $!refPoint)
    }

    method time-spec-number($/) {
        $!length = $/.values[0].made.Int;
        make %( Length => $!length)
    }
}

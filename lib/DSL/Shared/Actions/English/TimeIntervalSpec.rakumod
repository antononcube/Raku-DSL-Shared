use v6;

use DSL::Shared::Actions::CommonStructures;
use Lingua::NumericWordForms::Actions::English::WordedNumberSpec;

class DSL::Shared::Actions::English::TimeIntervalSpec
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

        %res = %res, %( From => %num<Length>, To => %res<Length>, Length => (%res<Length> + %num<Length>) / 2);
        make %res
    }

    ##----------------------------------------------------------
    method named-time-intervals($/) {
        make $/.values[0].made;
    }

    ##----------------------------------------------------------
    method time-interval-relative($/) {
        $!refPoint = 'now';

        with $<ago-time-spec-word> {
            $!dir = 'past';
        } else {
            $!dir = $<next-time-spec-word> ?? 'future' !! 'past';
        }

        my %res = $<number-of-time-units>.made, %( RefPoint => $!refPoint, Direction => $!dir);

        if %res<Unit> eq 'year' and $<last-time-spec-word> {
            %res = %res, %(  From => (Date.today.year - 1).Str ~ '-01-01', To => (Date.today.year - 1).Str ~ '-12-31')
        }

        make %res
    }

    ##----------------------------------------------------------
    method number-of-time-units($/) {
        make $/.values[0].made;
    }

    method few-time-units($/) {
        $!length = 3;
        $!unit = $<time-units>.made;
        make %( Length => $!length, Unit => $!unit)
    }

    method multi-time-units($/) {
        $!length = $<time-spec-number>.made<Length>;
        $!unit = $<time-units>.made;
        make %( Length => $!length, Unit => $!unit)
    }

    method one-time-unit($/) {
        $!length = 1;
        $!unit = $<time-unit>.made;
        make %( Length => $!length, Unit => $!unit)
    }

    method this-time-unit($/) {
        $!length = 1;
        $!unit = $<time-unit>.made;
        given $!unit {
            when $_ ∈ <week month> {
                my ($y, $w) = Date.today.week;
                if $_ eq 'month' { $w = Date.today.month; }
                $!from = Date.new($y, 1, 1).later([$_ => $w - 1, ]).Str;
                $!to = Date.new($y, 1, 1).later([$_ => $w, ]).Str;
            }
            when 'year' {
                my ($y, $w) = Date.today.week;
                $!from = Date.new($y, 1, 1).Str;
                $!to = Date.new($y, 12, 31).Str;
            }
            when $_ ∈ <hour minute> {
                my $h = now.Int - now.Int % ($_ eq 'hour' ?? 3600 !! 60);
                $!from = DateTime.new($h, timezone => $*TZ).Str;
                $!to = DateTime.new($h + ($_ eq 'hour' ?? 3600 !! 60), timezone => $*TZ).Str;
            }
            when $_ eq 'weekend' {
                my ($y, $w) = Date.today.week;
                $!from = Date.new($y, 1, 1).later(['week' => $w - 1, ]).later(:5day).Str;
                $!to = Date.new($y, 1, 1).later(['week' => $w, ]).Str;
            }
        }
        make %(From => $!from, To => $!to, Length => $!length, Unit => $!unit)
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
        my %m = %(january => 1, february => 2, march => 3, april => 4, may => 5, june => 6, july => 7, august => 8,
                  september => 9, october => 10, november => 11, december => 12);
        make %m{$/.Str.trim}
    }

    method month-name-abbr($/) {
        my %m = %(jan => 1, feb => 2, mar => 3, apr => 4, may => 5, jun => 6, jul => 7, aug => 8, sep => 9, oct => 10,
                  nov => 11, dec => 12);
        make %m{$/.Str.trim}
    }

    ##----------------------------------------------------------
    method day-name-relative($/) {
        if $<today-time-spec-word> {
            $!refPoint = 'today';
            $!dir = 'none';
        } elsif $<yesterday-time-spec-word> {
            $!refPoint = 'yesterday';
            $!dir = 'past';
        } elsif $<tomorrow-time-spec-word> {
            $!refPoint = 'tomorrow';
            $!dir = 'future';
        } else {
            $!refPoint = 'day-before-yesterday';
            $!dir = 'past';
        }

        make %( RefPoint => $!refPoint, Direction => $!dir)
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

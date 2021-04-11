use v6;

use DSL::Shared::Actions::CommonStructures;
use Lingua::NumericWordForms::Actions::English::WordedNumberSpec;

class DSL::Shared::Actions::English::TimeIntervalSpec
        is DSL::Shared::Actions::CommonStructures
        is Lingua::NumericWordForms::Actions::English::WordedNumberSpec {

    has Str $!dir;
    has Str $!refPoint;
    has Str $!from;
    has Str $!to;
    has Int $!length;
    has Str $!unit;

    method time-interval-spec($/)  {
        make $/.values[0].made
    }

    ##----------------------------------------------------------
    method time-unit($/) { make $/.Str; }

    method time-units($/) { make $/.Str.substr(0,*-1); }


    ##----------------------------------------------------------
    method week-of-year($/) {
        $!unit = 'year-week';
        $!length = 1;
        my %res = $<year-spec>.made;
        $!refPoint = %res<RefPoint> ~ '-' ~ $<week-number-range>.made<RefPoint>;
        make %( RefPoint => $!refPoint, Length => $!length, Unit => $!unit )
    }

    ##----------------------------------------------------------
    method month-of-year($/) {
        $!unit = 'year-month';
        $!length = 1;
        my %res = $<year-spec> ?? $<year-spec>.made !! %( Unit => 'year', RefPoint => Date.today.year.Str );
        $!refPoint = %res<RefPoint> ~ '-' ~ $<month-name>.made;
        make %( RefPoint => $!refPoint, Length => $!length, Unit => $!unit )
    }
#    method month-of-year($/) {
#        my $year = $<year-spec> ?? ($<year-spec>.made)<RefPoint> !! Date.today.year.Str;
#        $!refPoint = $year ~ '-' ~ $<month-name>.made.Str;
#        $!unit = 'year-month';
#        $!length = 1;
#        make %( Length => $!length, RefPoint => $!refPoint, Unit => $!unit)
#    }

    ##----------------------------------------------------------
    method time-interval-from-to-spec($/) {
        $!from = $<from>.made<RefPoint>;
        $!to = $<to>.made<RefPoint>;

        my %res = $<from>.made, %(From => $!from, To => $!to);
        make %res
    }

    ##----------------------------------------------------------
    method time-interval-into-spec($/) {
        make $/.values[0].made;
    }

    ##----------------------------------------------------------
    method time-interval-in-units-spec($/) {
        die 'Not implemented : time-interval-in-units-spec';
        make $/.values[0].made;
    }

    ##----------------------------------------------------------
    method named-time-intervals($/) {
        make $/.values[0].made;
    }

    ##----------------------------------------------------------
    method time-interval-relative($/) {
        $!refPoint = 'now';

        if $<ago-time-spec-word> {
            $!dir = 'past';
        } else {
            $!dir = $<next-time-spec-word> ?? 'future' !! 'past';
        }

        my %res = $<number-of-time-units>.made, %( RefPoint => $!refPoint, Direction => $!dir );

        make %res
    }

    ##----------------------------------------------------------
    method number-of-time-units($/) { make $/.values[0].made; }

    method few-time-units($/) {
        $!length = 3;
        $!unit = $<time-units>.made;
        make %( Length => $!length, Unit => $!unit )
    }

    method multi-time-units($/) {
        $!length = $<time-spec-number>.made<Length>;
        $!unit = $<time-units>.made;
        make %( Length => $!length, Unit => $!unit )
    }

    method one-time-unit($/) {
        $!length = 1;
        $!unit = $<time-unit>.made;
        make %( Length => $!length, Unit => $!unit )
    }

    ##----------------------------------------------------------
    method year-spec($/) {
        $!refPoint = ($/.values[0].made){'RefPoint'};
        $!unit = 'year';
        $!length = 1;
        make %( RefPoint => $!refPoint, Length => $!length, Unit => $!unit )
    }

    ##----------------------------------------------------------
    method time-spec($/) {
        make $/.values[0].made
    }

    method right-now($/) {
        $!refPoint = DateTime.now;
        $!unit = 'hour';
        $!length = 1;
        make %( Length => $!length, RefPoint => $!refPoint, Unit => $!unit)
    }

    method month-name($/) { make $/.values[0].made }

    method month-name-long($/) {
        my %m = %(january=>1, february=>2, march=>3, april=>4, may=>5, june=>6, july=>7, august=>8, september=>9, october=>10, november=>11, december=>12);
        make %m{$/.Str.trim}
    }

    method month-name-abbr($/) {
        my %m = %(jan => 1, feb => 2, mar => 3, apr => 4, may => 5, jun => 6, jul => 7, aug => 8, sep => 9, oct => 10, nov => 11, dec => 12);
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

        make %( RefPoint => $!refPoint, Direction => $!dir )
    }

    ##----------------------------------------------------------
    method week-number($/) {
        make $<week-number-range>.made
    }

    method week-number-range($/) {
        $!refPoint = $<numeric-word-form> ?? $<numeric-word-form>.made.Str !! $/.Str;
        $!unit = 'week';
        $!length = 1;
        make %( Unit => $!unit, Length => $!length, RefPoint => $!refPoint )
    }

    method year-number-range($/) {
        $!refPoint = $<numeric-word-form> ?? $<numeric-word-form>.made !! $/.Str;
        $!unit = 'year';
        make %( Unit => $!unit, RefPoint => $!refPoint )
    }

    method time-spec-number($/) {
        $!length = $/.values[0].made.Int;
        make %( Length => $!length )
    }
}

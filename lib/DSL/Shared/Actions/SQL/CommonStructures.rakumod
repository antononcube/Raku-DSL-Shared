use v6.d;

use DSL::Shared::Roles::CommonStructures;
use DSL::Shared::Actions::CommonStructures;

class DSL::Shared::Actions::SQL::CommonStructures
		is DSL::Shared::Actions::CommonStructures {

	# Number list
    method number-value-list($/) { make '(' ~ $<number-value>>>.made.join(', ') ~ ')'; }

    # Programming languages ranges
    method r-range-spec($/) { make 'seq' ~ $<number-value-list>.made.substr(1); }
    method wl-range-spec($/) { make 'seq' ~ $<number-value-list>.made.substr(1); }
    method r-numeric-list-spec($/) { make $<number-value-list>.made; }
    method wl-numeric-list-spec($/) { make $<number-value-list>.made; }

    # Range spec
    method range-spec($/) {
		if $<range-spec-step> {
			make 'seq(' ~ $<range-spec-from>.made ~ ', ' ~ $<range-spec-to>.made ~ ', ' ~ $<range-spec-step>.made ~ ')';
		} else {
			make 'seq(' ~ $<range-spec-from>.made ~ ', ' ~ $<range-spec-to>.made ~ ')';
		}
	}

    method range-spec-from($/) { make $<number-value>.made; }
    method range-spec-to($/) { make $<number-value>.made; }
    method range-spec-step($/) { make $<number-value>.made; }

    # Regex
    method regex-pattern-spec($/) { make '"' ~ $<regex-pattern>.made ~ '"'; }

    # Over-writing the trivial
	# Trivial
	method trivial-parameter($/) { make $/.values[0].made; }
	method trivial-parameter-none($/) { make 'NULL'; }
	method trivial-parameter-empty($/) { make 'c()'; }
	method trivial-parameter-automatic($/) { make 'NULL'; }
	method trivial-parameter-false($/) { make '0'; }
	method trivial-parameter-true($/) { make '1'; }
}

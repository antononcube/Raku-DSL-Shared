=begin comment
#==============================================================================
#
#   Common Structures actions in Raku (Perl 6)
#   Copyright (C) 2020  Anton Antonov
#
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#   Written by Anton Antonov,
#   antononcube @ gmai l . c om,
#   Windermere, Florida, USA.
#
#==============================================================================
#
#   For more details about Raku (Perl6) see https://raku.org/ .
#
#==============================================================================
=end comment

# The "General" section should be the same across all programming languages.
# (And natural languages too.)

use v6;
use DSL::Shared::Roles::CommonStructures;

unit module DSL::Shared::Actions::CommonStructures;

class DSL::Shared::Actions::CommonStructures {


	# Date spec
	method date-spec($/) { make $/.Str; }

	# Variables
	method raku-module-name($/) { make $/.Str; }
	method variable-ws-name($/) { make $/.Str; }
	method variable-name($/) { make $/.Str; }

	method quoted-variable-name($/) { make $/.values[0].made; }
	method mixed-quoted-variable-name($/) { make $/.values[0].made; }

	method single-quoted-variable-name($/) { make '"' ~ $<variable-ws-name>.made ~ '"'; }
	method double-quoted-variable-name($/) { make '"' ~ $<variable-ws-name>.made ~ '"'; }

	method keyword-variable-name($/) { make $/.Str; }
	method quoted-keyword-variable-name($/) { make $/.values[0].made; }
	method mixed-quoted-keyword-variable-name($/) { make $/.values[0].made; }
	method single-quoted-keyword-variable-name($/) { make '"' ~ $<keyword-variable-name>.made ~ '"'; }
	method double-quoted-keyword-variable-name($/) { make '"' ~ $<keyword-variable-name>.made ~ '"'; }

	# General method helpful in forming variable expressions
	method is-single-quoted( Str:D $m ) { $m ~~ / ^ '\'' .* '\'' $ / }
	method is-double-quoted( Str:D $m ) { $m ~~ / ^ '"' .* '"' $ / }
    method double-quote-if-not-already( Str:D $m ) { self.is-double-quoted($m) ?? $m !! '"' ~ $m ~ '"' }
    method unquote( Str:D $m ) { ( self.is-double-quoted($m) || self.is-single-quoted($m) ) ?? $m.substr(1, *-1) !! $m }

	# Common programming languages tokens
	method dataset-name($/) { make $/.Str; }

	# Regex
    method regex-pattern($/) { make $/.Str; }
    method regex-pattern-spec($/) { make $<regex-pattern>.made; }

	# Value types
	method integer-value($/) { make $/.Str; }
	method number-value($/) { make $/.Str; }
	method percent-value($/) { make $<number-value>.made ~ "/100"; }
	method boolean-value($/) { make $/.Str; }

	# Number list
	method number-value-list($/) { make $<number-value>>>.made }

	# Lists
	method list-separator($/) { make ','; }
	method variable-names-list($/) { make $<variable-name>>>.made; }
	method quoted-variable-names-list($/) { make $<quoted-variable-name>>>.made; }
	method mixed-quoted-variable-names-list($/) { make $<mixed-quoted-variable-name>>>.made; }
	method quoted-keyword-variable-names-list($/) { make $<quoted-keyword-variable-name>>>.made; }
	method mixed-quoted-keyword-variable-names-list($/) { make $<mixed-quoted-keyword-variable-name>>>.made; }

	# Range
	method range-spec($/) { $/.values>>.made }
	method range-spec-from($/) { make $<number-value>.made }
	method range-spec-to($/) { make $<number-value>.made }
	method range-spec-step($/) { make $<number-value>.made }
	method r-range-spec($/) { make $/.values[0].made }
	method wl-range-spec($/) { make $/.values[0].made }
	method r-numeric-list-spec($/) { make $/.values[0].made }
	method wl-numeric-list-spec($/) { make $/.values[0].made }

	# Trivial
	method trivial-parameter($/) { make $/.values[0].made; }
	method trivial-parameter-none($/) { make 'none'; }
	method trivial-parameter-empty($/) { make 'empty'; }
	method trivial-parameter-automatic($/) { make 'null'; }
	method trivial-parameter-false($/) { make 'false'; }
	method trivial-parameter-true($/) { make 'true'; }

	# Expressions
	method wl-expr($/) { make $/.Str.substr(1,*-1); }
	method code-expr($/) { make $/.Str; }

	# Expression combinations
    method variable-name-or-wl-expr($/) { make $/.values[0].made; }
    method variable-name-or-wl-expr-list($/) { make $<variable-name-or-wl-expr>>>.made; }
    method mixed-quoted-variable-name-or-wl-expr($/) { make $/.values[0].made; }
    method mixed-quoted-variable-name-or-wl-expr-list($/) { make $<mixed-quoted-variable-name-or-wl-expr>>>.made; }
}

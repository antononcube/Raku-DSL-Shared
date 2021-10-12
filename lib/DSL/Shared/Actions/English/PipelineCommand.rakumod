=begin comment
#==============================================================================
#
#   Pipeline Command in Raku (Perl 6)
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

# The methods here are most likely going to be over-written with concrete pipeline code conventions.

use v6;

unit module DSL::Shared::Actions::English::PipelineCommand;

use DSL::Shared::Actions::CommonStructures;
use Lingua::NumericWordForms::Actions::English::WordedNumberSpec;

class DSL::Shared::Actions::English::PipelineCommand
        is DSL::Shared::Actions::CommonStructures
        is Lingua::NumericWordForms::Actions::English::WordedNumberSpec {

    # Useful for parsing with saving state.
    has %.properties;

    # "Universal" separator
    method separator() { ';' }

    # Pipeline command
    method pipeline-command($/) { make $/.values[0].made; }

    method pipeline-function-spec($/) { make $/.values[0].made; }

    # Object
    method assign-pipeline-object-to($/) { make $/.Str; }

    # Value
    method assign-pipeline-value-to($/) { make $/.Str; }
    method echo-pipeline-value($/) { make $/.Str; }
    method echo-pipeline-funciton-value($/) { make $/.Str; }
    method set-pipeline-value($/) { make $/.Str; }
    method set-pipeline-value-rhs($/) { make $/.values[0].made; }
    method take-pipeline-value($/) { make $/.Str; }

    # Context
    method take-pipeline-context($/) { make $/.Str; }
    method echo-pipeline-context($/) { make $/.Str; }
    method echo-pipeline-function-context($/) { make $/.Str; }

    # Echo messages
    method echo-command($/) { make "echo:" ~ $/.values[0].made; }
    method echo-message-spec($/) { make $/.values[0].made; }
    method echo-words-list($/) { make '"' ~ $<variable-name>>>.made.join(' ') ~ '"'; }
    method echo-variable($/) { make $/.Str; }
    method echo-text($/) { make $/.Str; }

    # DSL spec
    method dsl-spec-command($/) { make $/.values[0].made; }
    method dsl-module-command($/) { make 'DSL' => $<raku-module-name>.made; }
    method dsl-translation-target-command($/) { make 'DSLTARGET' => $<raku-module-name>.made; }

    # User ID spec
    method user-spec-command($/) { make $/.values[0].made; }
    method user-id-spec-command($/) { make 'USERID' => $<userid>.made; }

    # Setup code
    method setup-code-command($/) { make 'SETUPCODE' => ''; }

    # Code line
    method code-line($/) { make $/.values[0].made; }
}

=begin comment
#==============================================================================
#
#   Pipeline Command WL-System actions in Raku (Perl 6)
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

use v6.d;

use DSL::Shared::Actions::English::PipelineCommand;
use DSL::Shared::Actions::WL::CommonStructures;

class DSL::Shared::Actions::English::WL::PipelineCommand
        is DSL::Shared::Actions::WL::CommonStructures
        is DSL::Shared::Actions::English::PipelineCommand {

    # Object
    method assign-pipeline-object-to($/) { make $<variable-name>.made ~ ' = obj'; }

    # Value
    method assign-pipeline-value-to($/) { make $<variable-name>.made ~ ' = obj'; }
    method echo-pipeline-value($/) { make 'Echo[obj]'; }
    method echo-pipeline-funciton-value($/) { make 'Echo[ ' ~ $<pipeline-function-spec>.made ~ '[obj] ]'; }
    method set-pipeline-value($/) { make 'obj = ' ~ $<set-pipeline-value-rhs>.made; }
    method set-pipeline-value-rhs($/) { make $/.values[0].made; }
    method take-pipeline-value($/) { make 'obj'; }

    # Context
    method take-pipeline-context($/) { make 'obj'; }
    method echo-pipeline-context($/) { make 'Echo[obj]'; }
    method echo-pipeline-function-context($/) { make 'Echo[ ' ~ $<pipeline-function-spec>.made ~ '[obj] ]'; }

    # Echo messages
    method echo-command($/) { make 'Echo[ ' ~ $<echo-message-spec>.made ~ ' ]'; }
    method echo-message-spec($/) { make $/.values[0].made; }
    method echo-words-list($/) { make '"' ~ $<variable-name>>>.made.join(' ') ~ '"'; }
    method echo-variable($/) { make $/.Str; }
    method echo-text($/) { make $/.Str; }
}

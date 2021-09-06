=begin comment
#==============================================================================
#
#   Shared Entities WL-System actions in Raku (Perl 6)
#   Copyright (C) 2021  Anton Antonov
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
#   antononcube @ posteo . net,
#   Windermere, Florida, USA.
#
#==============================================================================
#
#   For more details about Raku (Perl6) see https://raku.org/ .
#
#==============================================================================
=end comment

use v6;

use DSL::Shared::Entity::ResourceAccess;
use DSL::Shared::Actions::English::WL::PipelineCommand;

my DSL::Shared::Entity::ResourceAccess $resources.instance;

class DSL::Shared::Entity::Actions::WL::System
        is DSL::Shared::Actions::English::WL::PipelineCommand {

    ##========================================================
    ## Grammar methods
    ##========================================================

    method TOP($/) {
        make $/.values[0].made;
    }

    method entity-name($/) {
        ## Note the when no entity class is specified name-to-entity-id
        ## iteratively tries to find the entity in the available entity classes
        ## and returns the first successful match.
        my $nm = $resources.name-to-entity-id( $/.Str.lc, :!warn);
        make $nm ?? '"' ~ $nm ~ '"' !! 'None';
    }
}

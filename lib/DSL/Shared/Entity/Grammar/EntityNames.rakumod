use v6;

use DSL::Shared::Entity::ResourceAccess;
use DSL::Shared::Roles::English::PipelineCommand;
use DSL::Shared::Utilities::FuzzyMatching;

role DSL::Shared::Entity::Grammar::EntityNames
        does DSL::Shared::Roles::English::PipelineCommand {

    token name-punct-char { '-' | '.' | '+' | '#' }

    regex entity-name-part {
        [ <.alnum> | <.name-punct-char> ]+ | <.alnum>
    }

    regex wbpl { <!after [ <alnum> | <name-punct-char> ]> <?before [ <alnum> | <name-punct-char> ]> }

    regex wbpr { <?after [ <alnum> | <name-punct-char> ]> <!before [ <alnum> | <name-punct-char> ]> }

    regex entity-name( DSL::Shared::Entity::ResourceAccess $resources, Str $class) {
        ( [ <.wbpl> <entity-name-part> <.wbpr> ]+ % \h+ ) <?{ $resources.known-name($class, $0.Str.lc) }>
    }
}
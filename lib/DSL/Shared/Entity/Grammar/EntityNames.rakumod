use v6;

use DSL::Shared::Entity::ResourceAccess;

role DSL::Shared::Entity::Grammar::EntityNames {

    token name-punct-char { '-' | '.' | '+' | '#' }

    regex entity-name-part {
        [ <.alnum> | <.name-punct-char> ]+ | <.alnum>
    }

    regex wbpl { <!after [ <alnum> | <name-punct-char> ]> <?before [ <alnum> | <name-punct-char> ]> }

    regex wbpr { <?after [ <alnum> | <name-punct-char> ]> <!before [ <alnum> | <name-punct-char> ]> }

    # $class is expected to be a string or Whatever
    regex entity-name( DSL::Shared::Entity::ResourceAccess $resources, $class) {
        ( [ <.wbpl> <entity-name-part> <.wbpr> ]+ % \h+ ) <?{ $resources.known-name($class, $0.Str.lc) }>
    }
}
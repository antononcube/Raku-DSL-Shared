
use lib './lib';
use lib '.';
use DSL::Shared::Entity::Actions::WL::System;
use DSL::Shared::Entity::Grammar::EntityNames;
use DSL::Shared::Entity::ResourceAccess;

my DSL::Shared::Entity::ResourceAccess $resourceObj.instance;

grammar ParseObj
        does DSL::Shared::Entity::Grammar::EntityNames {
    rule TOP($obj, $class) { <entity-name($obj, $class)> }
};

sub parse-func(Str $class, Str:D $spec) {
    ParseObj.parse(
            $spec.lc,
            rule => 'TOP',
            actions => DSL::Shared::Entity::Actions::WL::System.new,
            args => ($resourceObj, $class)
            ).made
}

use Test;

plan 2;

## 1
is-deeply
        parse-func('DataFormatNameToEntityID_EN', 'character 32'),
        '"Character32"',
        'character 32';

## 2
is-deeply
        parse-func('DataFormatNameToEntityID_EN', 'Character32'),
        '"Character32"',
        'Character32';

done-testing;

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


say "=" x 60;

my @testCommands = (
'character 32',
'Character32'
);

for @testCommands -> $c {
    say "=" x 30;
    say $c;
    my $start = now;
    my $res = parse-func('DataFormatNameToEntityID_EN', $c);
    say "time:", now - $start;
    say $res;
}

use v6.d;

use lib '.';
use lib './lib';

use DSL::Shared::Entity::Actions::WL::System;
use DSL::Shared::Entity::Grammar::EntityNames;
use DSL::Shared::Entity::ResourceAccess;
use DSL::Shared::Utilities::FuzzyMatching;

my DSL::Shared::Entity::ResourceAccess $resourceObj .= new;

$resourceObj.ingest-resource-files();

# Show the entities in the resource object
.say for $resourceObj.getNameToEntityID;

grammar ParseObj
        does DSL::Shared::Entity::Grammar::EntityNames {
    rule TOP($obj, $class) { <entity-name($obj, $class)> }
};

sub parse-func($class, Str:D $spec) {
    ParseObj.parse(
            $spec.lc,
            rule => 'TOP',
            actions => DSL::Shared::Entity::Actions::WL::System.new(resources=>$resourceObj),
            args => ($resourceObj, $class)
            ).made
}


say "=" x 60;

my @testCommands = (
'charcter 32',
'character 32',
'Character32',
'beauty salon',
'drive wheel configuration value',
'postal code ranger specification',
'unsigned integer 8',
);

my $tstart = now;
for ^100 {
    for @testCommands -> $c {
#        say "=" x 30;
#        say $c;
#        my $start = now;
        my $res = parse-func(Whatever, $c);
#        say "time: ", now - $start;
#        say $res;
    }
}
my $tend = now;
say "Total time: ", $tend - $tstart;

.value.WHAT.say for get-saved-edits;
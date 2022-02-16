use DSL::Shared::Entity::ResourceAccess;
use DSL::Shared::Actions::English::WL::PipelineCommand;

class DSL::Shared::Entity::Actions::WL::System
        is DSL::Shared::Actions::English::WL::PipelineCommand {

    has DSL::Shared::Entity::ResourceAccess $.resources;

    ##========================================================
    ## Grammar methods
    ##========================================================

    method TOP($/) {
        make $/.values[0].made;
    }

    method entity-name($/) {
        ## Note that when no entity class is specified name-to-entity-id
        ## iteratively tries to find the entity in the available entity classes
        ## and returns the first successful match.
        my $nm = $!resources.name-to-entity-id( $/.Str.lc, :!warn);
        make $nm ?? '"' ~ $nm ~ '"' !! 'None';
    }
}

use DSL::Shared::Entity::ResourceAccess;
use DSL::Shared::Actions::English::Raku::PipelineCommand;

my DSL::Shared::Entity::ResourceAccess $resources.instance;

# NOTE, that this class is almost identical to DSL::Shared::Entity::Actions::WL::System .
class DSL::Shared::Entity::Actions::Raku::System
        is DSL::Shared::Actions::English::Raku::PipelineCommand {

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
        my $nm = $resources.name-to-entity-id( $/.Str.lc, :!warn);
        make $nm ?? '\'' ~ $nm ~ '\'' !! 'None';
    }
}

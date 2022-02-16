use DSL::Shared::Utilities::FuzzyMatching;
use DSL::Shared::Utilities::MetaSpecsProcessing;
use DSL::Shared::Entity::ResourceAccessish;

class DSL::Shared::Entity::ResourceAccess
        does DSL::Shared::Entity::ResourceAccessish {

    ##--------------------------------------------------------
    ## OVERRIDE-START
    ##--------------------------------------------------------

    #| Get resource file names with keys,
    #| This function has to be overridden in the descendants of this class.
    method get-resource-files( --> Hash) {
        my @fileNames = <DataFormatNameToEntityID_EN.csv MetadataTypeNameToEntityID_EN.csv>;
        my %resources = @fileNames.map({ $_.subst( / '.csv' $$ /, '' ) }) Z=> @fileNames;
        %resources = %resources.map({ $_.key => %?RESOURCES{$_.value} });
        return %resources;
    }

    ##--------------------------------------------------------
    ## OVERRIDE-END
    ##--------------------------------------------------------
}

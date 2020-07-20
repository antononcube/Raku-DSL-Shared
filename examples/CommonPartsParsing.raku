use v6;

#use lib './lib';
#use lib '.';

use DSL::Shared::Roles::English::CommonParts;
use DSL::Shared::Roles::English::PipelineCommand;
use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::PredicateSpecification;

grammar ParseObj
        does DSL::Shared::Roles::English::CommonParts
        does DSL::Shared::Roles::English::PipelineCommand
        does DSL::Shared::Roles::ErrorHandling
        does DSL::Shared::Roles::PredicateSpecification {
    regex TOP { <variable-names-list> | <range-spec> | <pipeline-command> | <predicates-list> }
};

say "=" x 60;

say ParseObj.parse( "var1, var2, and my_var77" );

say "=" x 60;

say ParseObj.parse( 'from 5 to 105 step 2' );

say "=" x 60;

say ParseObj.parse( 'from 5 to 105 step 2' );

say "=" x 60;

say ParseObj.parse( 'var1 == "male" & var2 < 12 or var3 > 50' );

say "=" x 60;

say ParseObj.parse( 'diplay the text mu bu ga' );

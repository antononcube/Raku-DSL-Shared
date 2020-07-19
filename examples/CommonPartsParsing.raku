use v6;

#use lib './lib';
use lib '.';
use DSL::Shared::Roles::English::CommonParts;
use DSL::Shared::Roles::English::PipelineCommand;
use DSL::Shared::Roles::ErrorHandling;

grammar ParseObj
        does DSL::Shared::Roles::English::CommonParts
        does DSL::Shared::Roles::English::PipelineCommand
        does DSL::Shared::Roles::ErrorHandling {
    rule TOP { <variable-names-list> | <range-spec> | <pipeline-command> }
};

say "=" x 60;

say ParseObj.parse( "var1, var2, and my_var77" );

say "=" x 60;

say ParseObj.parse( 'from 5 to 105 step 2' );

say "=" x 60;

say ParseObj.parse( 'from 5 to 105 step 2' );

say "=" x 60;

say ParseObj.parse( 'display the text mu bu ga' );

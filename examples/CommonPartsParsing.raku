use v6;

use lib './lib';
use lib '.';

use DSL::Shared::Roles::English::CommonParts;
use DSL::Shared::Roles::English::PipelineCommand;
use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::PredicateSpecification;
use DSL::Shared::Actions::English::WL::PipelineCommand;
use DSL::Shared::Utilities::FuzzyMatching;
use DSL::Shared::Utilities::MetaSpecsProcessing;

grammar ParseObj
        does DSL::Shared::Roles::ErrorHandling
        does DSL::Shared::Roles::PredicateSpecification
        does DSL::Shared::Roles::English::PipelineCommand {
    #regex TOP { <variable-names-list> | <range-spec> | <pipeline-command> | <predicates-list> | <code-expr> }
    #regex TOP { <predicates-list> | <code-expr> }
    rule TOP { <pipeline-command> | <regex-pattern-spec> | <user-id-spec-command>}
};


say "=" x 60;

#say ParseObj.parse( 'use DSL TARGET r-Base');
#
my $command = 'DSL TARGET R-base; DSL TARGET WL; DSL MODULE DSL::English::RecommenderWorkflows; ';
say get-dsl-spec( $command, 'module');
say get-dsl-spec( $command, 'module').^name;
say get-dsl-spec( $command, 'target');

say "=" x 60;

$command = 'USER ID mimiMal323';
say ParseObj.parse( $command, actions => DSL::Shared::Actions::English::WL::PipelineCommand.new );

say "-" x 60;

say get-dsl-spec( $command, 'user-id');

say get-user-spec( $command );
say get-user-spec( $command, "user-any");

say "=" x 60;

say ParseObj.parse( 'set pipeline value to "A2 er"', actions => DSL::Shared::Actions::English::WL::PipelineCommand.new );

say "-" x 60;

say ParseObj.parse( 'rx/ss(.)(.)/' );

say "=" x 60;

my $actuals = <fpr tpr npr ppv spc>;
say "Actuals: ", $actuals;

say "List  : ", is-fuzzy-match( 'ffr', $actuals );
say "Array : ", is-fuzzy-match( 'kpr', @($actuals) );

#say ParseObj.parse( '"v 1" is greater than 10 and v2 greater or equal to 12 or v3 equals 20');

#say ParseObj.parse( 'v1 is greater than 10 and v2 greater or equal to 12 or v3 equals 20');

#say ParseObj.parse( 'var1 is male and var2 is less than 12 or var3 is greater than 50' );

#
#say "=" x 60;
#
#say ParseObj.subparse( "var1, var2, and my_var77" );
#
#say "=" x 60;
#
#say ParseObj.parse( 'from 5 to 105 step 2' );
#
#say "=" x 60;
#
#say ParseObj.parse( 'from 5 to 105 step 2' );
#
#say "=" x 60;
#
#say ParseObj.parse( 'var1 == "male" & var2 < 12 or var3 > 50' );
#
#say "=" x 60;
#
#say ParseObj.parse( 'display the text mu bu ga' );
#
#say "=" x 60;
#
#say ParseObj.parse( 'display the full text mu bu ga' );
#
#say "=" x 60;
#
#say ParseObj.parse( '`wl 5+5`' );

use Test;

use lib './lib';
use lib '.';

use DSL::Shared::Roles::English::CommonParts;
use DSL::Shared::Roles::English::PipelineCommand;
use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::PredicateSpecification;

grammar ParseObj
        does DSL::Shared::Roles::English::PipelineCommand {
    regex TOP { <pipeline-command> }
};

plan 19;

#-----------------------------------------------------------
# Pipeline command parsing
#-----------------------------------------------------------

ok ParseObj.parse('echo value'),
        'echo value';

ok ParseObj.parse('echo pipeline value'),
        'echo pipeline value';

ok ParseObj.parse('echo function FF over pipeline value'),
        'echo function FF over pipeline value';

ok ParseObj.parse('echo over the pipeline value the function FF1'),
        'echo over the pipeline value the function FF1';

ok ParseObj.parse('echo over the pipeline value the function `Print`'),
        'echo over the pipeline value the function `Print`';

ok ParseObj.parse('echo pipeline value function FF1'),
        'echo pipeline value function FF1';

ok ParseObj.parse('echo context'),
        'echo context';

ok ParseObj.parse('echo pipeline context'),
        'echo pipeline context';

ok ParseObj.parse('echo function FF over pipeline context'),
        'echo function FF over pipeline context';

ok ParseObj.parse('echo over the pipeline context the function `#matrix&`'),
        'echo over the pipeline context the function `#matrix&`';

ok ParseObj.parse('echo over the pipeline context the function FF1'),
        'echo over the pipeline context the function FF1';

ok ParseObj.parse('echo context function FF1'),
        'echo context function FF1';

ok ParseObj.parse('use domain specific language translation target R-base'),
        'use domain specific language translation target R-base';

ok ParseObj.parse('DSL TARGET Julia-DataFrames'),
        'DSL TARGET Julia-DataFrames';

ok ParseObj.parse('DSL TARGET Julia-DataFrames'),
        'DSL TARGET Julia-DataFrames';

ok ParseObj.parse('use domain specific language module DSL::English::RecommenderWorkflows'),
        'use domain specific language module DSL::English::RecommenderWorkflows';

ok ParseObj.parse('DSL MODULE DSL::English::DataQueryWorkflows'),
        'DSL MODULE DSL::English::DataQueryWorkflows';

ok ParseObj.parse('`Transpose[obj]`'),
        '`Transpose[obj]`';

ok ParseObj.parse('`ResourceFunction["CrossTabulate"]`'),
        '`ResourceFunction["CrossTabulate"]`';

done-testing;

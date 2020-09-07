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

plan 12;

#-----------------------------------------------------------
# Pipeline parsing
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

done-testing;

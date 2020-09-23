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

plan 10;

#-----------------------------------------------------------
# Variables parse
#-----------------------------------------------------------

ok ParseObj.parse('set pipeline value to "A2 er"'),
        'set pipeline value to "A2 er"';

ok ParseObj.parse('set pipeline value to "A2-e_r"'),
        'set pipeline value to "A2-e_r"';

ok ParseObj.parse('set pipeline value to A2er'),
        'set pipeline value to A2er';

ok ParseObj.parse('set pipeline value to A2_er'),
        'set pipeline value to A2_er';

ok ParseObj.parse('set pipeline value to A2-er_'),
        'set pipeline value to A2-er_';

ok ParseObj.parse('set pipeline value to A2-er_'),
        'set pipeline value to A2-er_';

ok ParseObj.parse('set pipeline value to a223'),
        'set pipeline value to a223';

ok ParseObj.parse('set pipeline value to A'),
        'set pipeline value to A';

nok ParseObj.parse('set pipeline value to Arw-'),
        'set pipeline value to Arw-';

nok ParseObj.parse('set pipeline value to 2'),
        'set pipeline value to 2';


done-testing;

use Test;

use DSL::Shared::Roles::English::CommonParts;
use DSL::Shared::Roles::English::PipelineCommand;
use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::PredicateSpecification;

grammar ParseObj
        does DSL::Shared::Roles::CommonStructures
        does DSL::Shared::Roles::PredicateSpecification {
    regex TOP { <predicates-list> }
};

plan 8;

#-----------------------------------------------------------
# Predicates parsing
#-----------------------------------------------------------

ok ParseObj.parse('v1 > 10 & v2 >= 12 | v3 == 20'),
        'v1 > 10 & v2 >= 12 | v3 == 20';

ok ParseObj.parse('v1 greater than 10 and v2 greater or equal than 12 or v3 equals 20'),
        'v1 greater than 10 and v2 greater or equal than 12 or v3 equals 20';

ok ParseObj.parse('var1 == "male" & var2 < 12 or var3 > 50'),
        'var1 == "male" & var2 < 12 or var3 > 50';

ok ParseObj.parse('var1 is "male" and var2 is less than 12 or var3 is greater than 50'),
        'var1 is "male" and var2 is less than 12 or var3 is greater than 50';

ok ParseObj.parse('"v 1" > 10 & "v 2" >= 12 | v3 == 20'),
        '"v 1" > 10 & "v 2" >= 12 | v3 == 20';

ok ParseObj.parse('Title is like `air_`'),
        'Title is like `air_`';

ok ParseObj.parse('Title starts with "air"'),
        'Title starts with "air"';

ok ParseObj.parse('Title ends with "snow"'),
        'Title ends with "snow"';

done-testing;

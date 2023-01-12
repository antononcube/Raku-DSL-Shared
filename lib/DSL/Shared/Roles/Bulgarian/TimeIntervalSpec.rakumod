use v6.d;

use DSL::Shared::Roles::Bulgarian::TimeIntervalSpeechParts;
use DSL::Shared::Roles::English::TimeIntervalSpeechParts;
use DSL::Shared::Roles::English::TimeIntervalSpec;

role DSL::Shared::Roles::Bulgarian::TimeIntervalSpec
        does DSL::Shared::Roles::English::TimeIntervalSpec
        does DSL::Shared::Roles::Bulgarian::TimeIntervalSpeechParts {

}
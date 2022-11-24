use v6;

use DSL::Shared::Roles::CommonStructures;
use DSL::Shared::Roles::Portuguese::CommonSpeechParts;
use Lingua::NumericWordForms::Roles::Portuguese::WordedNumberSpec;

use DSL::Shared::Roles::English::PipelineCommand;

# This role class has pipeline commands.
role DSL::Shared::Roles::Portuguese::PipelineCommand
        does DSL::Shared::Roles::English::PipelineCommand
        does DSL::Shared::Roles::CommonStructures
        does DSL::Shared::Roles::Portuguese::CommonSpeechParts
        does Lingua::NumericWordForms::Roles::Portuguese::WordedNumberSpec {

    rule pipeline-filler-phrase:sym<Portuguese> { <.the-determiner>? <current-adjective>? <pipeline-adjective> }

}
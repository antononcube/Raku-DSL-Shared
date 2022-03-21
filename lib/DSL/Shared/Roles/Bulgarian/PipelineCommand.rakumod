use v6;

use DSL::Shared::Roles::CommonStructures;
use DSL::Shared::Roles::Bulgarian::CommonSpeechParts;
use Lingua::NumericWordForms::Roles::Bulgarian::WordedNumberSpec;

use DSL::Shared::Roles::English::PipelineCommand;

# This role class has pipeline commands.
role DSL::Shared::Roles::Bulgarian::PipelineCommand
        does DSL::Shared::Roles::English::PipelineCommand
        does DSL::Shared::Roles::CommonStructures
        does DSL::Shared::Roles::Bulgarian::CommonSpeechParts
        does Lingua::NumericWordForms::Roles::Bulgarian::WordedNumberSpec {

    rule pipeline-filler-phrase:sym<Bulgarian> { <.the-determiner>? <current-adjective>? <pipeline-adjective> }

}
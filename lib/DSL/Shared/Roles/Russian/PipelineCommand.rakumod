use v6;

use DSL::Shared::Roles::CommonStructures;
use DSL::Shared::Roles::Russian::CommonSpeechParts;
use Lingua::NumericWordForms::Roles::Russian::WordedNumberSpec;

use DSL::Shared::Roles::English::PipelineCommand;

# This role class has pipeline commands.
role DSL::Shared::Roles::Russian::PipelineCommand
        does DSL::Shared::Roles::English::PipelineCommand
        does DSL::Shared::Roles::CommonStructures
        does DSL::Shared::Roles::Russian::CommonSpeechParts
        does Lingua::NumericWordForms::Roles::Russian::WordedNumberSpec {

    rule pipeline-filler-phrase:sym<Russian> { <.the-determiner>? <current-adjective>? <pipeline-adjective> }

}
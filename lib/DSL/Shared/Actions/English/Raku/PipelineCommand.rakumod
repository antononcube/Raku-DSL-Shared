use v6;

unit module DSL::Shared::Actions::English::Raku::PipelineCommand;

use DSL::Shared::Actions::English::PipelineCommand;
use DSL::Shared::Actions::Raku::CommonStructures;

class DSL::Shared::Actions::English::Raku::PipelineCommand
        is DSL::Shared::Actions::Raku::CommonStructures
        is DSL::Shared::Actions::English::PipelineCommand {

    # Object
    method assign-pipeline-object-to($/) { make $<variable-name>.made ~ ' = $obj'; }

    # Value
    method assign-pipeline-value-to($/) { make $<variable-name>.made ~ ' = $obj'; }
    method echo-pipeline-value($/) { make 'say(obj)'; }
    method echo-pipeline-funciton-value($/) { make 'say( ' ~ $<pipeline-function-spec>.made ~ '($obj) )'; }
    method set-pipeline-value($/) { make '$obj = ' ~ $<set-pipeline-value-rhs>.made; }
    method set-pipeline-value-rhs($/) { make $/.values[0].made; }
    method take-pipeline-value($/) { make '$obj'; }

    # Context
    method take-pipeline-context($/) { make 'obj'; }
    method echo-pipeline-context($/) { make 'say(obj)'; }
    method echo-pipeline-function-context($/) { make 'say(' ~ $<pipeline-function-spec>.made ~ '(obj) )'; }

    # Echo messages
    method echo-command($/) { make 'say( ' ~ $<echo-message-spec>.made ~ ' )'; }
    method echo-message-spec($/) { make $/.values[0].made; }
    method echo-words-list($/) { make '"' ~ $<variable-name>>>.made.join(' ') ~ '"'; }
    method echo-variable($/) { make $/.Str; }
    method echo-text($/) { make $/.Str; }
}

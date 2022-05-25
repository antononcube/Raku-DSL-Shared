use v6.d;

role DSL::Shared::Actions::English::Standard::PipelineCommand {

    # Pipeline command overwrites
    ## Object
    method assign-pipeline-object-to($/) { make 'assign the pipeline object to: ' ~ $/.values[0].made; }

    ## Value
    method assign-pipeline-value-to($/) { make  'assign the pipeline value to: ' ~ $/.values[0].made; }
    method take-pipeline-value($/) { make 'take the pipeline value'; }
    method echo-pipeline-value($/) { make 'show the pipeline value'; }
    method echo-pipeline-funciton-value($/) { make 'show the pipeline value transformed with: ' ~ $<pipeline-function-spec>.made; }

    ## Context
    method take-pipeline-context($/) { make 'take the context'; }
    method echo-pipeline-context($/) { make 'show the context'; }
    method echo-pipeline-function-context($/) { make 'show the context transformed with: ' ~ $<pipeline-function-spec>.made ~ ' )'; }

    ## Echo messages
    method echo-command($/) { make 'show the message: ' ~ $<echo-message-spec>.made; }

    # Setup code commend
    method setup-code-command($/) { make 'include setup code'; }
}

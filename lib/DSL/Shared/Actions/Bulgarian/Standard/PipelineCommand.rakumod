use v6.d;

role DSL::Shared::Actions::Bulgarian::Standard::PipelineCommand {

    # Pipeline command overwrites
    ## Object
    method assign-pipeline-object-to($/) { make 'присвои лентовия обект на: ' ~ $/.values[0].made; }

    ## Value
    method assign-pipeline-value-to($/) { make  'присвои лентовата стойност на: ' ~ $/.values[0].made; }
    method take-pipeline-value($/) { make 'вземи лентовата стойност'; }
    method echo-pipeline-value($/) { make 'покажи лентовата стойност'; }
    method echo-pipeline-funciton-value($/) { make 'покажи лентовата стойност трансформирана с: ' ~ $<pipeline-function-spec>.made; }

    ## Context
    method take-pipeline-context($/) { make 'вземи контекста'; }
    method echo-pipeline-context($/) { make 'покажи контекста'; }
    method echo-pipeline-function-context($/) { make 'покажи контекста трансформиран с: ' ~ $<pipeline-function-spec>.made ~ ' )'; }

    ## Echo messages
    method echo-command($/) { make 'покажи съобщението: ' ~ $<echo-message-spec>.made; }
}

use v6.d;

role DSL::Shared::Actions::Russian::Standard::PipelineCommand {

    # Pipeline command overwrites
    ## Object
    method assign-pipeline-object-to($/) { make 'назначить объект конвейера: ' ~ $/.values[0].made; }

    ## Value
    method take-pipeline-value($/) { make 'взять текущее значение конвейера'; }
    method echo-pipeline-value($/) { make 'показать текущее значение конвейера'; }
    method echo-pipeline-funciton-value($/) { make 'показать текущее значение конвейера преобразованное через: ' ~ $<pipeline-function-spec>.made; }

    ## Context
    method take-pipeline-context($/) { make 'взять контекст'; }
    method echo-pipeline-context($/) { make 'показать контекст'; }
    method echo-pipeline-function-context($/) { make 'показать контекст преобразованной через: ' ~ $<pipeline-function-spec>.made; }

    ## Echo messages
    method echo-command($/) { make 'показать: ' ~ $<echo-message-spec>.made; }

    # Setup code commend
    method setup-code-command($/) { make 'включить код инициализации';}
}

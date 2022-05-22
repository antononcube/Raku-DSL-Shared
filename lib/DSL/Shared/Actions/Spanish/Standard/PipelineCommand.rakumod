use v6.d;

role DSL::Shared::Actions::Spanish::Standard::PipelineCommand {

    # Pipeline command overwrites
    ## Object
    method assign-pipeline-object-to($/) { make 'asignar el valor de la tubería a: ' ~ $/.values[0].made; }

    ## Value
    method take-pipeline-value($/) { make 'tomar el valor de la tubería'; }
    method echo-pipeline-value($/) { make 'mostrar el valor de la tubería'; }
    method echo-pipeline-funciton-value($/) { make 'показать текущее значение конвейера преобразованное через: ' ~ $<pipeline-function-spec>.made; }

    ## Context
    method take-pipeline-context($/) { make 'tomar el contexto'; }
    method echo-pipeline-context($/) { make 'mostrar el contexto'; }
    method echo-pipeline-function-context($/) { make 'mostrar el contexto de los convertidos a través del: ' ~ $<pipeline-function-spec>.made; }

    ## Echo messages
    method echo-command($/) { make 'mostrar: ' ~ $<echo-message-spec>.made; }
}

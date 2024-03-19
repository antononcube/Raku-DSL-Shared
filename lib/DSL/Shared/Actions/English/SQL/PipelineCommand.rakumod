use v6.d;

use DSL::Shared::Actions::English::PipelineCommand;
use DSL::Shared::Actions::SQL::CommonStructures;

class DSL::Shared::Actions::English::SQL::PipelineCommand
        is DSL::Shared::Actions::SQL::CommonStructures
        is DSL::Shared::Actions::English::PipelineCommand {

    # Pipeline command
    method pipeline-command($/) { make $/.values[0].made; }

    method pipeline-function-spec($/) { make $/.values[0].made; }

    # Object
    method assign-pipeline-object-to($/) { make "CREATE TABLE {$<variable-name>.made} AS SELECT * FROM temp.tbl"; }

    # Value
    method assign-pipeline-value-to($/) { make "CREATE TABLE {$<variable-name>.made} AS SELECT * FROM temp.tbl"; }
    method echo-pipeline-value($/) { make 'SELECT * FROM temp.tbl'; }
    method echo-pipeline-function-value($/) { make 'Not implemented'; }
    method set-pipeline-value($/) { make "CREATE TEMP TABLE tbl AS SELECT * FROM {$<set-pipeline-value-rhs>.made}"; }
    method set-pipeline-value-rhs($/) { make $/.values[0].made; }
    method take-pipeline-value($/) { make 'SELECT * FROM temp.tbl'; }

    # Context
    method take-pipeline-context($/) { make 'SELECT * FROM temp.tbl'; }
    method echo-pipeline-context($/) { make 'SELECT * FROM temp.tbl'; }
    method echo-pipeline-function-context($/) { make 'Not implemented'; }

    # Echo messages
    method echo-command($/) { make 'SELECT "' ~ $<echo-message-spec>.made ~ '"'; }
    method echo-message-spec($/) { make $/.values[0].made; }
    method echo-words-list($/) { make 'SELECT "' ~ $<variable-name>>>.made.join(' ') ~ '"'; }
    method echo-variable($/) { make $/.Str; }
    method echo-text($/) { make $/.Str; }
}

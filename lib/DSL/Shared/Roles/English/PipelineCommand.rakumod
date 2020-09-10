use v6;

use DSL::Shared::Roles::CommonStructures;
use DSL::Shared::Roles::English::CommonSpeechParts;

# This role class has pipeline commands.
role DSL::Shared::Roles::English::PipelineCommand
        does DSL::Shared::Roles::CommonStructures
        does DSL::Shared::Roles::English::CommonSpeechParts {

  rule pipeline-command {
    <set-pipeline-value> |
    <assign-pipeline-value-to> |
    <echo-pipeline-function-value> |
    <echo-pipeline-value> |
    <take-pipeline-value> |
    <echo-pipeline-function-context> |
    <echo-pipeline-context> |
    <take-pipeline-context> |
    <echo-command> }

  rule pipeline-filler-phrase { <.the-determiner>? <current-adjective>? <pipeline-noun> }

  rule pipeline-function-spec { <wl-expr> | <variable-name> }

  # Value
  rule pipeline-value { <.pipeline-filler-phrase>? <value-noun> }
  rule assign-pipeline-value-to {
    <.assign-directive> <.pipeline-value> <.to-preposition> <variable-name> |
    <.assign-directive> <.to-preposition> <variable-name> <.pipeline-value> }
  rule echo-pipeline-value { <display-directive> <pipeline-value> }
  rule echo-pipeline-function-value {
  <.display-directive> <.the-determiner>? <.function> <pipeline-function-spec> <.over-preposition> <.pipeline-value> |
  <.display-directive> <.over-preposition>? <.pipeline-value> <.with-preposition>? <.the-determiner>? <.function> <pipeline-function-spec> }
  rule set-pipeline-value { <.set-directive> <.pipeline-value> [ <.to-preposition> <.be-verb>? | <.as-preposition> ] <set-pipeline-value-rhs> }
  rule set-pipeline-value-rhs { <mixed-quoted-variable-name> | <wl-expr> }
  rule take-pipeline-value { <get-verb> <pipeline-value> }

  # Context
  rule pipeline-context { <.pipeline-filler-phrase>? <context-noun> }
  rule take-pipeline-context { <get-verb> <pipeline-context> }
  rule echo-pipeline-context { <display-directive> <pipeline-context> }
  rule echo-pipeline-function-context {
    <.display-directive> <.the-determiner>? <.function> <pipeline-function-spec> <.over-preposition> <.pipeline-context> |
    <.display-directive> <.over-preposition>? <.pipeline-context> <.with-preposition>? <.the-determiner>? <.function> <pipeline-function-spec> }

  # Echo messages
  rule echo-command { <display-directive> <echo-message-spec> }
  rule echo-message-spec { <echo-text> | <echo-words-list> | <echo-variable> }
  rule echo-words-list { 'the'? [ 'text' | 'message' | 'words' ] <variable-name>+ % ( <list-separator> | \h+ )  }
  rule echo-variable { <variable-noun> <variable-name> }
  token echo-text { [\" ([ \w | '_' | '-' | '.' | \d ]+ | [\h]+)+ \"]  }
}
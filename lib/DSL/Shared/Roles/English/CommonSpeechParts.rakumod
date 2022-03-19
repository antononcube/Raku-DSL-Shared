# ============================================================
# This role class is generated from the file
#   CommonSpeechParts-template
# using the function addFuzzyMatch from
#   DSL::Shared::Utilities::AddFuzzyMatching
# ============================================================

use v6;

use DSL::Shared::Utilities::FuzzyMatching;

role DSL::Shared::Roles::English::CommonSpeechParts {
    # Single words

    proto token ID-noun {*}
    token ID-noun:sym<English> { :i 'ID' }

    proto token IDENTIFIER-noun {*}
    token IDENTIFIER-noun:sym<English> { :i 'IDENTIFIER' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'IDENTIFIER', 2) }> }

    proto token MODULE-noun {*}
    token MODULE-noun:sym<English> { :i 'MODULE' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'MODULE', 2) }> }

    proto token TARGET-noun {*}
    token TARGET-noun:sym<English> { :i 'TARGET' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'TARGET', 2) }> }

    proto token USER-noun {*}
    token USER-noun:sym<English> { :i 'USER' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'USER', 2) }> }

    proto token a-determiner {*}
    token a-determiner:sym<English> { :i 'a' | 'an' }

    proto token add-verb {*}
    token add-verb:sym<English> { :i 'add' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'add', 1) }> }

    proto token adhere-verb {*}
    token adhere-verb:sym<English> { :i 'adhere' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'adhere', 2) }> }

    proto token adjacency-noun {*}
    token adjacency-noun:sym<English> { :i 'adjacency' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'adjacency', 2) }> }

    proto token adjacent-adjective {*}
    token adjacent-adjective:sym<English> { :i 'adjacent' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'adjacent', 2) }> }

    proto token algorithm-noun {*}
    token algorithm-noun:sym<English> { :i 'algorithm' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'algorithm', 2) }> }

    proto token algorithms-noun {*}
    token algorithms-noun:sym<English> { :i 'algorithms' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'algorithms', 2) }> }

    proto token all-determiner {*}
    token all-determiner:sym<English> { :i 'all' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'all', 1) }> }

    proto token and-conjunction {*}
    token and-conjunction:sym<English> { :i 'and' }

    proto token annex-verb {*}
    token annex-verb:sym<English> { :i 'annex' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'annex', 2) }> }

    proto token append-verb {*}
    token append-verb:sym<English> { :i 'append' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'append', 2) }> }

    proto token apply-verb {*}
    token apply-verb:sym<English> { :i 'apply' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'apply', 2) }> }

    proto token are-verb {*}
    token are-verb:sym<English> { :i 'are' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'are', 1) }> }

    proto token array-noun {*}
    token array-noun:sym<English> { :i 'array' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'array', 2) }> }

    proto token as-preposition {*}
    token as-preposition:sym<English> { :i 'as' }

    proto token assign-verb {*}
    token assign-verb:sym<English> { :i 'assign' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'assign', 2) }> }

    proto token at-preposition {*}
    token at-preposition:sym<English> { :i 'at' }

    proto token automatic {*}
    token automatic:sym<English> { :i 'automatic' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'automatic', 2) }> }

    proto token away-adverb {*}
    token away-adverb:sym<English> { :i 'away' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'away', 2) }> }

    proto token axes-noun {*}
    token axes-noun:sym<English> { :i 'axes' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'axes', 2) }> }

    proto token axis-noun {*}
    token axis-noun:sym<English> { :i 'axis' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'axis', 2) }> }

    proto token be-verb {*}
    token be-verb:sym<English> { :i 'be' }

    proto token both-determiner {*}
    token both-determiner:sym<English> { :i 'both' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'both', 2) }> }

    proto token bottom-noun {*}
    token bottom-noun:sym<English> { :i 'bottom' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'bottom', 2) }> }

    proto token broaden-verb {*}
    token broaden-verb:sym<English> { :i 'broaden' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'broaden', 2) }> }

    proto token by-preposition {*}
    token by-preposition:sym<English> { :i 'by' | 'with' | 'using' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'using', 2) }> }

    proto token calculation {*}
    token calculation:sym<English> { :i 'calculation' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'calculation', 2) }> }

    proto token case-noun {*}
    token case-noun:sym<English> { :i 'case' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'case', 2) }> }

    proto token cases-noun {*}
    token cases-noun:sym<English> { :i 'cases' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'cases', 2) }> }

    proto token chart-noun {*}
    token chart-noun:sym<English> { :i 'chart' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'chart', 2) }> }

    proto token classify-verb {*}
    token classify-verb:sym<English> { :i 'classify' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'classify', 2) }> }

    proto token clear-verb {*}
    token clear-verb:sym<English> { :i 'clear' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'clear', 2) }> }

    proto token cluster {*}
    token cluster:sym<English> { :i  <cluster-noun>  }

    proto token cluster-noun {*}
    token cluster-noun:sym<English> { :i 'cluster' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'cluster', 2) }> }

    proto token clusters-noun {*}
    token clusters-noun:sym<English> { :i 'clusters' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'clusters', 2) }> }

    proto token code-noun {*}
    token code-noun:sym<English> { :i 'code' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'code', 2) }> }

    proto token codes-noun {*}
    token codes-noun:sym<English> { :i 'codes' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'codes', 2) }> }

    proto token column-noun {*}
    token column-noun:sym<English> { :i 'column' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'column', 2) }> }

    proto token columns {*}
    token columns:sym<English> { :i  <columns-noun>  }

    proto token columns-noun {*}
    token columns-noun:sym<English> { :i 'columns' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'columns', 2) }> }

    proto token complete-adjective {*}
    token complete-adjective:sym<English> { :i 'complete' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'complete', 2) }> }

    proto token compute-directive {*}
    token compute-directive:sym<English> { :i 'compute' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'compute', 2) }> | 'find' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'find', 2) }> | 'calculate' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'calculate', 2) }> }

    proto token config-noun {*}
    token config-noun:sym<English> { :i 'config' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'config', 2) }> }

    proto token configuration-noun {*}
    token configuration-noun:sym<English> { :i 'configuration' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'configuration', 2) }> }

    proto token connect-verb {*}
    token connect-verb:sym<English> { :i 'connect' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'connect', 2) }> }

    proto token consider-verb {*}
    token consider-verb:sym<English> { :i 'consider' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'consider', 2) }> }

    proto token context-noun {*}
    token context-noun:sym<English> { :i 'context' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'context', 2) }> }

    proto token contingency-noun {*}
    token contingency-noun:sym<English> { :i 'contingency' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'contingency', 2) }> }

    proto token convert-verb {*}
    token convert-verb:sym<English> { :i 'convert' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'convert', 2) }> }

    proto token count-verb {*}
    token count-verb:sym<English> { :i 'count' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'count', 2) }> }

    proto token counts-noun {*}
    token counts-noun:sym<English> { :i 'counts' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'counts', 2) }> }

    proto token create {*}
    token create:sym<English> { :i 'create' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'create', 2) }> }

    proto token create-directive {*}
    token create-directive:sym<English> { :i  <create-verb> | 'make'  }

    proto token create-verb {*}
    token create-verb:sym<English> { :i 'create' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'create', 2) }> }

    proto token creation-noun {*}
    token creation-noun:sym<English> { :i 'creation' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'creation', 2) }> }

    proto token current-adjective {*}
    token current-adjective:sym<English> { :i 'current' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'current', 2) }> }

    proto token data-noun {*}
    token data-noun:sym<English> { :i 'data' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'data', 2) }> }

    proto token dataset {*}
    token dataset:sym<English> { :i  <dataset-noun>  }

    proto token dataset-noun {*}
    token dataset-noun:sym<English> { :i 'dataset' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'dataset', 2) }> }

    proto token datasets-noun {*}
    token datasets-noun:sym<English> { :i 'datasets' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'datasets', 2) }> }

    proto token datum-noun {*}
    token datum-noun:sym<English> { :i 'datum' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'datum', 2) }> }

    proto token default {*}
    token default:sym<English> { :i  <default-noun>  }

    proto token default-noun {*}
    token default-noun:sym<English> { :i 'default' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'default', 2) }> }

    proto token delete-directive {*}
    token delete-directive:sym<English> { :i 'delete' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'delete', 2) }> | 'drop' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'drop', 2) }> | 'erase' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'erase', 2) }> | 'remove' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'remove', 2) }> }

    proto token detect-verb {*}
    token detect-verb:sym<English> { :i 'detect' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'detect', 2) }> }

    proto token diagram {*}
    token diagram:sym<English> { :i  <diagram-synonyms>  }

    proto token diagram-noun {*}
    token diagram-noun:sym<English> { :i 'diagram' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'diagram', 2) }> }

    proto token diagram-synonyms {*}
    token diagram-synonyms:sym<English> { :i  <diagram-noun> | <plot-noun> | <plots-noun> | <graph-noun> | <chart-noun>  }

    proto token difference {*}
    token difference:sym<English> { :i 'difference' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'difference', 2) }> }

    proto token dimension-noun {*}
    token dimension-noun:sym<English> { :i 'dimension' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'dimension', 2) }> }

    proto token dimensions-noun {*}
    token dimensions-noun:sym<English> { :i 'dimensions' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'dimensions', 2) }> }

    proto token directly-adverb {*}
    token directly-adverb:sym<English> { :i 'directly' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'directly', 2) }> }

    proto token display-directive {*}
    token display-directive:sym<English> { :i  <display-verb> | 'show' | 'echo'  }

    proto token display-verb {*}
    token display-verb:sym<English> { :i 'display' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'display', 2) }> }

    proto token distance-noun {*}
    token distance-noun:sym<English> { :i 'distance' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'distance', 2) }> }

    proto token do-verb {*}
    token do-verb:sym<English> { :i 'do' }

    proto token document-noun {*}
    token document-noun:sym<English> { :i 'document' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'document', 2) }> }

    proto token documents-noun {*}
    token documents-noun:sym<English> { :i 'documents' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'documents', 2) }> }

    proto token domain-noun {*}
    token domain-noun:sym<English> { :i 'domain' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'domain', 2) }> }

    proto token drop-verb {*}
    token drop-verb:sym<English> { :i 'drop' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'drop', 2) }> }

    proto token during-preposition {*}
    token during-preposition:sym<English> { :i 'during' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'during', 2) }> }

    proto token each-determiner {*}
    token each-determiner:sym<English> { :i 'each' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'each', 2) }> }

    proto token echo-verb {*}
    token echo-verb:sym<English> { :i 'echo' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'echo', 2) }> }

    proto token element {*}
    token element:sym<English> { :i  <element-noun>  }

    proto token element-noun {*}
    token element-noun:sym<English> { :i 'element' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'element', 2) }> }

    proto token elements {*}
    token elements:sym<English> { :i  <elements-noun>  }

    proto token elements-noun {*}
    token elements-noun:sym<English> { :i 'elements' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'elements', 2) }> }

    proto token empty-noun {*}
    token empty-noun:sym<English> { :i 'empty' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'empty', 2) }> }

    proto token empty-verb {*}
    token empty-verb:sym<English> { :i  <empty-noun>  }

    proto token every-determiner {*}
    token every-determiner:sym<English> { :i 'every' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'every', 2) }> }

    proto token extend-verb {*}
    token extend-verb:sym<English> { :i 'extend' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'extend', 2) }> }

    proto token extract-directive {*}
    token extract-directive:sym<English> { :i 'extract' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'extract', 2) }> }

    proto token filter {*}
    token filter:sym<English> { :i  <filter-verb>  }

    proto token filter-noun {*}
    token filter-noun:sym<English> { :i  <filter-verb>  }

    proto token filter-verb {*}
    token filter-verb:sym<English> { :i 'filter' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'filter', 2) }> }

    proto token first-adjective {*}
    token first-adjective:sym<English> { :i 'first' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'first', 2) }> }

    proto token for-preposition {*}
    token for-preposition:sym<English> { :i 'for' | 'with' }

    proto token frame-noun {*}
    token frame-noun:sym<English> { :i 'frame' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'frame', 2) }> }

    proto token frames-noun {*}
    token frames-noun:sym<English> { :i 'frames' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'frames', 2) }> }

    proto token from-preposition {*}
    token from-preposition:sym<English> { :i 'from' }

    proto token function {*}
    token function:sym<English> { :i 'function' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'function', 2) }> }

    proto token functions {*}
    token functions:sym<English> { :i 'functions' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'functions', 2) }> }

    proto token generate-directive {*}
    token generate-directive:sym<English> { :i  <generate-verb> | <create-verb> | 'make'  }

    proto token generate-verb {*}
    token generate-verb:sym<English> { :i 'generate' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'generate', 2) }> }

    proto token get-verb {*}
    token get-verb:sym<English> { :i  'obtain' | 'get' | <take-verb>  }

    proto token graph-noun {*}
    token graph-noun:sym<English> { :i 'graph' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'graph', 2) }> }

    proto token head-adjective {*}
    token head-adjective:sym<English> { :i  <head-noun>  }

    proto token head-noun {*}
    token head-noun:sym<English> { :i 'head' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'head', 2) }> }

    proto token high-adjective {*}
    token high-adjective:sym<English> { :i 'high' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'high', 2) }> }

    proto token higher-adjective {*}
    token higher-adjective:sym<English> { :i 'higher' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'higher', 2) }> }

    proto token histogram {*}
    token histogram:sym<English> { :i 'histogram' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'histogram', 2) }> }

    proto token histograms {*}
    token histograms:sym<English> { :i 'histograms' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'histograms', 2) }> }

    proto token how-adverb {*}
    token how-adverb:sym<English> { :i 'how' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'how', 1) }> }

    proto token id-noun {*}
    token id-noun:sym<English> { :i 'id' }

    proto token identifier-noun {*}
    token identifier-noun:sym<English> { :i 'identifier' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'identifier', 2) }> }

    proto token in-preposition {*}
    token in-preposition:sym<English> { :i 'in' }

    proto token include-verb {*}
    token include-verb:sym<English> { :i 'include' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'include', 2) }> }

    proto token ingest-verb {*}
    token ingest-verb:sym<English> { :i 'ingest' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'ingest', 2) }> }

    proto token into-preposition {*}
    token into-preposition:sym<English> { :i 'into' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'into', 2) }> }

    proto token is-verb {*}
    token is-verb:sym<English> { :i 'is' }

    proto token it-pronoun {*}
    token it-pronoun:sym<English> { :i 'it' }

    proto token iterations {*}
    token iterations:sym<English> { :i 'iterations' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'iterations', 2) }> }

    proto token join-verb {*}
    token join-verb:sym<English> { :i 'join' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'join', 2) }> }

    proto token language-noun {*}
    token language-noun:sym<English> { :i 'language' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'language', 2) }> }

    proto token largest-adjective {*}
    token largest-adjective:sym<English> { :i 'largest' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'largest', 2) }> }

    proto token last-adjective {*}
    token last-adjective:sym<English> { :i 'last' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'last', 2) }> }

    proto token link-noun {*}
    token link-noun:sym<English> { :i 'link' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'link', 2) }> }

    proto token list-noun {*}
    token list-noun:sym<English> { :i 'list' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'list', 2) }> }

    proto token load-verb {*}
    token load-verb:sym<English> { :i 'load' }

    proto token locate-verb {*}
    token locate-verb:sym<English> { :i 'locate' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'locate', 2) }> }

    proto token low-adjective {*}
    token low-adjective:sym<English> { :i 'low' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'low', 1) }> }

    proto token lower-adjective {*}
    token lower-adjective:sym<English> { :i 'lower' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'lower', 2) }> }

    proto token make-noun {*}
    token make-noun:sym<English> { :i 'make' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'make', 2) }> }

    proto token making-noun {*}
    token making-noun:sym<English> { :i 'making' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'making', 2) }> }

    proto token manner {*}
    token manner:sym<English> { :i 'manner' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'manner', 2) }> }

    proto token matrix-noun {*}
    token matrix-noun:sym<English> { :i 'matrix' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'matrix', 2) }> }

    proto token maximum {*}
    token maximum:sym<English> { :i 'max' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'max', 1) }> | 'maximum' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'maximum', 2) }> }

    proto token message-noun {*}
    token message-noun:sym<English> { :i 'message' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'message', 2) }> }

    proto token method-noun {*}
    token method-noun:sym<English> { :i 'method' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'method', 2) }> }

    proto token minimum {*}
    token minimum:sym<English> { :i 'min' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'min', 1) }> | 'minimum' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'minimum', 2) }> }

    proto token missing-adjective {*}
    token missing-adjective:sym<English> { :i 'missing' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'missing', 2) }> }

    proto token model {*}
    token model:sym<English> { :i 'model' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'model', 2) }> }

    proto token module-noun {*}
    token module-noun:sym<English> { :i 'module' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'module', 2) }> }

    proto token my-determiner {*}
    token my-determiner:sym<English> { :i 'my' }

    proto token name-noun {*}
    token name-noun:sym<English> { :i 'name' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'name', 2) }> }

    proto token names-noun {*}
    token names-noun:sym<English> { :i 'names' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'names', 2) }> }

    proto token nearest-adjective {*}
    token nearest-adjective:sym<English> { :i 'nearest' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'nearest', 2) }> }

    proto token neighbors-noun {*}
    token neighbors-noun:sym<English> { :i 'neighbors' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'neighbors', 2) }> }

    proto token no-determiner {*}
    token no-determiner:sym<English> { :i 'no' }

    proto token non-prefix {*}
    token non-prefix:sym<English> { :i 'non' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'non', 1) }> }

    proto token number-noun {*}
    token number-noun:sym<English> { :i 'number' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'number', 2) }> }

    proto token object-noun {*}
    token object-noun:sym<English> { :i 'object' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'object', 2) }> }

    proto token of-preposition {*}
    token of-preposition:sym<English> { :i 'of' }

    proto token off-adverb {*}
    token off-adverb:sym<English> { :i 'off' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'off', 1) }> }

    proto token on-preposition {*}
    token on-preposition:sym<English> { :i 'on' }

    proto token one-pronoun {*}
    token one-pronoun:sym<English> { :i 'one' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'one', 1) }> }

    proto token ones-pronoun {*}
    token ones-pronoun:sym<English> { :i 'ones' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'ones', 2) }> }

    proto token or-conjunction {*}
    token or-conjunction:sym<English> { :i 'or' }

    proto token our-determiner {*}
    token our-determiner:sym<English> { :i 'our' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'our', 1) }> }

    proto token out-adverb {*}
    token out-adverb:sym<English> { :i 'out' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'out', 1) }> }

    proto token over-preposition {*}
    token over-preposition:sym<English> { :i 'over' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'over', 2) }> }

    proto token parameter-noun {*}
    token parameter-noun:sym<English> { :i 'parameter' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'parameter', 2) }> }

    proto token parameters-noun {*}
    token parameters-noun:sym<English> { :i 'parameters' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'parameters', 2) }> }

    proto token part-noun {*}
    token part-noun:sym<English> { :i 'part' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'part', 2) }> }

    proto token pattern-noun {*}
    token pattern-noun:sym<English> { :i 'pattern' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'pattern', 2) }> }

    proto token per-preposition {*}
    token per-preposition:sym<English> { :i 'per' }

    proto token pipeline-noun {*}
    token pipeline-noun:sym<English> { :i 'pipeline' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'pipeline', 2) }> }

    proto token plot-noun {*}
    token plot-noun:sym<English> { :i 'plot' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'plot', 2) }> }

    proto token plots-noun {*}
    token plots-noun:sym<English> { :i 'plot' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'plot', 2) }> | 'plots' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'plots', 2) }> }

    proto token position-noun {*}
    token position-noun:sym<English> { :i 'position' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'position', 2) }> }

    proto token random-adjective {*}
    token random-adjective:sym<English> { :i 'random' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'random', 2) }> }

    proto token records {*}
    token records:sym<English> { :i 'records' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'records', 2) }> }

    proto token reduce-verb {*}
    token reduce-verb:sym<English> { :i 'reduce' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'reduce', 2) }> }

    proto token remove-verb {*}
    token remove-verb:sym<English> { :i 'remove' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'remove', 2) }> }

    proto token replace-verb {*}
    token replace-verb:sym<English> { :i 'replace' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'replace', 2) }> }

    proto token represent-directive {*}
    token represent-directive:sym<English> { :i  <represent> | 'render' | 'reflect'  }

    proto token rest-noun {*}
    token rest-noun:sym<English> { :i 'rest' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'rest', 2) }> }

    proto token result-noun {*}
    token result-noun:sym<English> { :i 'result' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'result', 2) }> }

    proto token results {*}
    token results:sym<English> { :i  <results-noun>  }

    proto token results-noun {*}
    token results-noun:sym<English> { :i 'results' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'results', 2) }> }

    proto token reverse-adjective {*}
    token reverse-adjective:sym<English> { :i 'reverse' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'reverse', 2) }> }

    proto token rows {*}
    token rows:sym<English> { :i  <rows-noun>  }

    proto token rows-noun {*}
    token rows-noun:sym<English> { :i 'rows' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'rows', 2) }> }

    proto token run-verb {*}
    token run-verb:sym<English> { :i 'run' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'run', 1) }> | 'runs' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'runs', 2) }> }

    proto token running-verb {*}
    token running-verb:sym<English> { :i 'running' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'running', 2) }> }

    proto token separate-verb {*}
    token separate-verb:sym<English> { :i 'separate' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'separate', 2) }> }

    proto token series-noun {*}
    token series-noun:sym<English> { :i 'series' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'series', 2) }> }

    proto token set-directive {*}
    token set-directive:sym<English> { :i 'set' }

    proto token set-noun {*}
    token set-noun:sym<English> { :i 'set' }

    proto token setup-noun {*}
    token setup-noun:sym<English> { :i 'setup' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'setup', 2) }> }

    proto token shape-noun {*}
    token shape-noun:sym<English> { :i 'shape' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'shape', 2) }> }

    proto token show-verb {*}
    token show-verb:sym<English> { :i 'show' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'show', 2) }> }

    proto token simple {*}
    token simple:sym<English> { :i 'simple' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'simple', 2) }> | 'direct' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'direct', 2) }> }

    proto token simply-adverb {*}
    token simply-adverb:sym<English> { :i 'simply' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'simply', 2) }> }

    proto token simulate {*}
    token simulate:sym<English> { :i 'simulate' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'simulate', 2) }> }

    proto token simulate-directive {*}
    token simulate-directive:sym<English> { :i  <simulate>  }

    proto token simulation {*}
    token simulation:sym<English> { :i 'simulation' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'simulation', 2) }> }

    proto token single-adjective {*}
    token single-adjective:sym<English> { :i 'single' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'single', 2) }> }

    proto token site-noun {*}
    token site-noun:sym<English> { :i 'site' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'site', 2) }> }

    proto token smallest {*}
    token smallest:sym<English> { :i 'smallest' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'smallest', 2) }> }

    proto token smallest-adjective {*}
    token smallest-adjective:sym<English> { :i 'smallest' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'smallest', 2) }> }

    proto token some-determiner {*}
    token some-determiner:sym<English> { :i 'some' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'some', 2) }> }

    proto token sparse-adjective {*}
    token sparse-adjective:sym<English> { :i 'sparse' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'sparse', 2) }> }

    proto token specific-adjective {*}
    token specific-adjective:sym<English> { :i 'specific' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'specific', 2) }> }

    proto token split-verb {*}
    token split-verb:sym<English> { :i 'split' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'split', 2) }> }

    proto token spot-verb {*}
    token spot-verb:sym<English> { :i 'spot' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'spot', 2) }> }

    proto token spread-verb {*}
    token spread-verb:sym<English> { :i 'spread' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'spread', 2) }> }

    proto token statistical {*}
    token statistical:sym<English> { :i  <statistical-adjective>  }

    proto token statistical-adjective {*}
    token statistical-adjective:sym<English> { :i 'statistical' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'statistical', 2) }> }

    proto token statistics-noun {*}
    token statistics-noun:sym<English> { :i 'statistics' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'statistics', 2) }> }

    proto token stats-noun {*}
    token stats-noun:sym<English> { :i 'stats' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'stats', 2) }> }

    proto token step-noun {*}
    token step-noun:sym<English> { :i 'step' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'step', 2) }> }

    proto token steps-noun {*}
    token steps-noun:sym<English> { :i 'steps' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'steps', 2) }> }

    proto token string-noun {*}
    token string-noun:sym<English> { :i 'string' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'string', 2) }> }

    proto token sub-prefix {*}
    token sub-prefix:sym<English> { :i 'sub' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'sub', 1) }> }

    proto token summaries {*}
    token summaries:sym<English> { :i  <summaries-noun>  }

    proto token summaries-noun {*}
    token summaries-noun:sym<English> { :i 'summaries' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'summaries', 2) }> }

    proto token summarize-directive {*}
    token summarize-directive:sym<English> { :i 'summarize' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'summarize', 2) }> }

    proto token summary {*}
    token summary:sym<English> { :i  <summary-noun>  }

    proto token summary-noun {*}
    token summary-noun:sym<English> { :i 'summary' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'summary', 2) }> }

    proto token system-noun {*}
    token system-noun:sym<English> { :i 'system' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'system', 2) }> }

    proto token table-noun {*}
    token table-noun:sym<English> { :i 'table' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'table', 2) }> }

    proto token tables-noun {*}
    token tables-noun:sym<English> { :i 'tables' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'tables', 2) }> }

    proto token tabular-adjective {*}
    token tabular-adjective:sym<English> { :i 'tabular' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'tabular', 2) }> }

    proto token take-verb {*}
    token take-verb:sym<English> { :i 'take' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'take', 2) }> }

    proto token target-noun {*}
    token target-noun:sym<English> { :i 'target' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'target', 2) }> }

    proto token text-noun {*}
    token text-noun:sym<English> { :i 'text' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'text', 2) }> }

    proto token that-pronoun {*}
    token that-pronoun:sym<English> { :i 'that' }

    proto token the-determiner {*}
    token the-determiner:sym<English> { :i 'the' }

    proto token them-pronoun {*}
    token them-pronoun:sym<English> { :i 'them' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'them', 2) }> }

    proto token this-pronoun {*}
    token this-pronoun:sym<English> { :i 'this' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'this', 2) }> }

    proto token time-adjective {*}
    token time-adjective:sym<English> { :i 'time' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'time', 2) }> }

    proto token time-noun {*}
    token time-noun:sym<English> { :i 'time' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'time', 2) }> }

    proto token timeline-noun {*}
    token timeline-noun:sym<English> { :i 'timeline' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'timeline', 2) }> }

    proto token times-noun {*}
    token times-noun:sym<English> { :i 'times' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'times', 2) }> }

    proto token to-preposition {*}
    token to-preposition:sym<English> { :i 'to' | 'into' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'into', 2) }> }

    proto token top-noun {*}
    token top-noun:sym<English> { :i 'top' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'top', 1) }> }

    proto token transform-verb {*}
    token transform-verb:sym<English> { :i 'transform' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'transform', 2) }> }

    proto token translation-noun {*}
    token translation-noun:sym<English> { :i 'translation' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'translation', 2) }> }

    proto token type-noun {*}
    token type-noun:sym<English> { :i 'type' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'type', 2) }> }

    proto token up-adverb {*}
    token up-adverb:sym<English> { :i 'up' }

    proto token use-verb {*}
    token use-verb:sym<English> { :i 'use' | 'utilize' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'utilize', 2) }> }

    proto token used-verb {*}
    token used-verb:sym<English> { :i 'used' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'used', 2) }> | 'utilized' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'utilized', 2) }> }

    proto token using-preposition {*}
    token using-preposition:sym<English> { :i 'using' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'using', 2) }> | 'with' | 'over' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'over', 2) }> }

    proto token value-noun {*}
    token value-noun:sym<English> { :i 'value' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'value', 2) }> }

    proto token values-noun {*}
    token values-noun:sym<English> { :i 'values' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'values', 2) }> }

    proto token variable-noun {*}
    token variable-noun:sym<English> { :i 'variable' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'variable', 2) }> }

    proto token variables-noun {*}
    token variables-noun:sym<English> { :i 'variables' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'variables', 2) }> }

    proto token versus-preposition {*}
    token versus-preposition:sym<English> { :i  'vs' | 'vs.' | 'versus'  }

    proto token way-noun {*}
    token way-noun:sym<English> { :i 'way' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'way', 1) }> }

    proto token weight-noun {*}
    token weight-noun:sym<English> { :i 'weight' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'weight', 2) }> }

    proto token weight {*}
    token weight:sym<English> { :i  <weight-noun>  }

    proto token weights-noun {*}
    token weights-noun:sym<English> { :i 'weights' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'weights', 2) }> }

    proto token weights {*}
    token weights:sym<English> { :i  <weights-noun>  }

    proto token what-pronoun {*}
    token what-pronoun:sym<English> { :i 'what' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'what', 2) }> }

    proto token when-pronoun {*}
    token when-pronoun:sym<English> { :i 'when' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'when', 2) }> }

    proto token which-determiner {*}
    token which-determiner:sym<English> { :i 'which' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'which', 2) }> }

    proto token with-preposition {*}
    token with-preposition:sym<English> { :i 'using' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'using', 2) }> | 'with' | 'by' }

    proto token without-preposition {*}
    token without-preposition:sym<English> { :i 'without' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'without', 2) }> }

    proto token words-noun {*}
    token words-noun:sym<English> { :i 'words' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'words', 2) }> }

    # Directives and phrases

    proto rule USER-ID-phrase {*}
    rule USER-ID-phrase:sym<English> {  <USER-noun> [ <ID-noun> | <IDENTIFIER-noun> ]  }

    proto rule adjacency-matrix-phrase {*}
    rule adjacency-matrix-phrase:sym<English> {  [ <adjacency-noun> | <adjacent-adjective> ] <matrix-noun>  }

    proto rule annex-directive {*}
    rule annex-directive:sym<English> {  <annex-verb> | <append-verb>  }

    proto rule assign-directive {*}
    rule assign-directive:sym<English> {  <assign-verb>  }

    proto rule complete-cases-phrase {*}
    rule complete-cases-phrase:sym<English> {  <complete-adjective> <cases-noun>  }

    proto rule compute-and-display {*}
    rule compute-and-display:sym<English> {  <compute-directive> [ <and-conjunction> <display-directive> ]?  }

    proto rule creation-phrase {*}
    rule creation-phrase:sym<English> {  <creation-noun> | <making-noun> <of-preposition>?  }

    proto rule data {*}
    rule data:sym<English> {  <data-frame> | <data-noun> [ <set-noun> | <table-noun> ] | <time-series-data> | <dataset-noun> | <data-noun> }

    proto rule data-column-phrase {*}
    rule data-column-phrase:sym<English> {  <data-noun>? [ <column-noun> | <variable-noun> ]  }

    proto rule data-columns-phrase {*}
    rule data-columns-phrase:sym<English> {  <data-noun>? [ <columns> | <variables-noun> ]  }

    proto rule data-frame {*}
    rule data-frame:sym<English> {  <data-noun> <frame-noun>  }

    proto rule data-frames {*}
    rule data-frames:sym<English> {  <data-noun> <frames-noun>  }

    proto rule diagram-phrase {*}
    rule diagram-phrase:sym<English> {  <plot-noun> | <plots-noun> | <graph-noun> | <chart-noun>  }

    proto rule distance-function-phrase {*}
    rule distance-function-phrase:sym<English> {  <distance-noun> <function>  }

    proto rule extend-directive {*}
    rule extend-directive:sym<English> {  <extend-verb> | <broaden-verb> | <spread-verb> <out-adverb>  }

    proto rule find-directive {*}
    rule find-directive:sym<English> {  <find-verb> | <locate-verb> | <spot-verb> | <detect-verb>  }

    proto rule for-which-phrase {*}
    rule for-which-phrase:sym<English> {  <for-preposition> <which-determiner> | <that-pronoun> <adhere-verb> <to-preposition>  }

    proto rule join-directive {*}
    rule join-directive:sym<English> {  <join-verb> | <connect-verb> | <link-noun>  }

    proto rule load-data-directive {*}
    rule load-data-directive:sym<English> {  [ <load-verb> | <ingest-verb> ] <the-determiner>? <data>  }

    proto rule load-directive {*}
    rule load-directive:sym<English> {  <load-verb> | <get-verb> | <consider-verb>  }

    proto rule max-iterations-phrase {*}
    rule max-iterations-phrase:sym<English> {  <maximum>? <number-of>? [ <iterations> | <steps-noun> ]  }

    proto rule missing-values-phrase {*}
    rule missing-values-phrase:sym<English> {  <missing-adjective> <values-noun>?  }

    proto rule nearest-neighbors-phrase {*}
    rule nearest-neighbors-phrase:sym<English> {  <nearest-adjective>? <neighbors-noun> | 'nns'  }

    proto rule number-of {*}
    rule number-of:sym<English> {  [ <number-noun> | <count-verb> | <counts-noun> ] <of-preposition>  }

    proto rule plot-directive {*}
    rule plot-directive:sym<English> {  <plot-noun> | <chart-noun> | <display-directive> <diagram>  }

    proto rule records-phrase {*}
    rule records-phrase:sym<English> {  <table-noun>? [ <rows> | <records> ]  }

    proto rule remove-directive {*}
    rule remove-directive:sym<English> {  <delete-directive> | <drop-verb> | <take-off-phrase> | <take-away-phrase>  }

    proto rule simple-way-phrase {*}
    rule simple-way-phrase:sym<English> {  <simple> [ <way-noun> | <manner> ]  }

    proto rule simulate-and-display {*}
    rule simulate-and-display:sym<English> {  <simulate-directive> [ <and-conjunction> <display-directive> ]?  }

    proto rule take-away-phrase {*}
    rule take-away-phrase:sym<English> {  <take-verb> <away-adverb>  }

    proto rule take-off-phrase {*}
    rule take-off-phrase:sym<English> {  <take-verb> <off-adverb>  }

    proto rule time-series-phrase {*}
    rule time-series-phrase:sym<English> {  <time-noun> <series-noun>  }

    proto rule time-series-data {*}
    rule time-series-data:sym<English> {  <time-series-phrase> <data-noun>?  }

    proto rule use-directive {*}
    rule use-directive:sym<English> {  [ <get-verb> <and-conjunction>? ]? <use-verb>  }
}

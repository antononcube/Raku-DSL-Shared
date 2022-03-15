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
    token adjacency-noun:sym<English> { :i 'adjacency' | ([\w]+) <?{ $0.Str ne 'adjacent' and is-fuzzy-match($0.Str, 'adjacency', 2) }> }

    proto token adjacent-adjective {*}
    token adjacent-adjective:sym<English> { :i 'adjacent' | ([\w]+) <?{ $0.Str ne 'adjacency' and is-fuzzy-match($0.Str, 'adjacent', 2) }> }

    proto token algorithm-noun {*}
    token algorithm-noun:sym<English> { :i 'algorithm' | ([\w]+) <?{ $0.Str ne 'algorithms' and is-fuzzy-match($0.Str, 'algorithm', 2) }> }

    proto token algorithms-noun {*}
    token algorithms-noun:sym<English> { :i 'algorithms' | ([\w]+) <?{ $0.Str ne 'algorithm' and is-fuzzy-match($0.Str, 'algorithms', 2) }> }

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
    token by-preposition:sym<English> { :i 'by' | 'with' | 'using' | ([\w]+) <?{ $0.Str !(elem) <used use> and is-fuzzy-match($0.Str, 'using', 2) }> }

    proto token calculation {*}
    token calculation:sym<English> { :i 'calculation' | ([\w]+) <?{ $0.Str ne 'calculate' and is-fuzzy-match($0.Str, 'calculation', 2) }> }

    proto token case-noun {*}
    token case-noun:sym<English> { :i 'case' | ([\w]+) <?{ $0.Str ne 'cases' and is-fuzzy-match($0.Str, 'case', 2) }> }

    proto token cases-noun {*}
    token cases-noun:sym<English> { :i 'cases' | ([\w]+) <?{ $0.Str ne 'case' and is-fuzzy-match($0.Str, 'cases', 2) }> }

    proto token chart-noun {*}
    token chart-noun:sym<English> { :i 'chart' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'chart', 2) }> }

    proto token classify-verb {*}
    token classify-verb:sym<English> { :i 'classify' | ([\w]+) <?{ $0.Str !(elem) <classifier classifiers> and is-fuzzy-match($0.Str, 'classify', 2) }> }

    proto token clear-verb {*}
    token clear-verb:sym<English> { :i 'clear' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'clear', 2) }> }
    token cluster { <cluster-noun> }

    proto token cluster-noun {*}
    token cluster-noun:sym<English> { :i 'cluster' | ([\w]+) <?{ $0.Str ne 'clusters' and is-fuzzy-match($0.Str, 'cluster', 2) }> }

    proto token clusters-noun {*}
    token clusters-noun:sym<English> { :i 'clusters' | ([\w]+) <?{ $0.Str ne 'cluster' and is-fuzzy-match($0.Str, 'clusters', 2) }> }

    proto token code-noun {*}
    token code-noun:sym<English> { :i 'code' | ([\w]+) <?{ $0.Str ne 'codes' and is-fuzzy-match($0.Str, 'code', 2) }> }

    proto token codes-noun {*}
    token codes-noun:sym<English> { :i 'codes' | ([\w]+) <?{ $0.Str ne 'code' and is-fuzzy-match($0.Str, 'codes', 2) }> }

    proto token column-noun {*}
    token column-noun:sym<English> { :i 'column' | ([\w]+) <?{ $0.Str ne 'columns' and is-fuzzy-match($0.Str, 'column', 2) }> }
    token columns { <columns-noun> }

    proto token columns-noun {*}
    token columns-noun:sym<English> { :i 'columns' | ([\w]+) <?{ $0.Str ne 'column' and is-fuzzy-match($0.Str, 'columns', 2) }> }

    proto token complete-adjective {*}
    token complete-adjective:sym<English> { :i 'complete' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'complete', 2) }> }

    proto token compute-directive {*}
    token compute-directive:sym<English> { :i 'compute' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'compute', 2) }> | 'find' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'find', 2) }> | 'calculate' | ([\w]+) <?{ $0.Str ne 'calculation' and is-fuzzy-match($0.Str, 'calculate', 2) }> }

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
    token count-verb:sym<English> { :i 'count' | ([\w]+) <?{ $0.Str ne 'counts' and is-fuzzy-match($0.Str, 'count', 2) }> }

    proto token counts-noun {*}
    token counts-noun:sym<English> { :i 'counts' | ([\w]+) <?{ $0.Str ne 'count' and is-fuzzy-match($0.Str, 'counts', 2) }> }

    proto token create {*}
    token create:sym<English> { :i 'create' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'create', 2) }> }
    token create-directive { <create-verb> | 'make' }

    proto token create-verb {*}
    token create-verb:sym<English> { :i 'create' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'create', 2) }> }

    proto token creation-noun {*}
    token creation-noun:sym<English> { :i 'creation' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'creation', 2) }> }

    proto token current-adjective {*}
    token current-adjective:sym<English> { :i 'current' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'current', 2) }> }

    proto token data-noun {*}
    token data-noun:sym<English> { :i 'data' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'data', 2) }> }
    token dataset { <dataset-noun> }

    proto token dataset-noun {*}
    token dataset-noun:sym<English> { :i 'dataset' | ([\w]+) <?{ $0.Str ne 'datasets' and is-fuzzy-match($0.Str, 'dataset', 2) }> }

    proto token datasets-noun {*}
    token datasets-noun:sym<English> { :i 'datasets' | ([\w]+) <?{ $0.Str ne 'dataset' and is-fuzzy-match($0.Str, 'datasets', 2) }> }

    proto token datum-noun {*}
    token datum-noun:sym<English> { :i 'datum' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'datum', 2) }> }
    token default { <default-noun> }

    proto token default-noun {*}
    token default-noun:sym<English> { :i 'default' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'default', 2) }> }

    proto token delete-directive {*}
    token delete-directive:sym<English> { :i 'delete' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'delete', 2) }> | 'drop' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'drop', 2) }> | 'erase' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'erase', 2) }> | 'remove' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'remove', 2) }> }

    proto token detect-verb {*}
    token detect-verb:sym<English> { :i 'detect' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'detect', 2) }> }
    token diagram { <diagram-synonyms> }

    proto token diagram-noun {*}
    token diagram-noun:sym<English> { :i 'diagram' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'diagram', 2) }> }
    token diagram-synonyms { <diagram-noun> | <plot-noun> | <plots-noun> | <graph-noun> | <chart-noun> }

    proto token difference {*}
    token difference:sym<English> { :i 'difference' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'difference', 2) }> }

    proto token dimension-noun {*}
    token dimension-noun:sym<English> { :i 'dimension' | ([\w]+) <?{ $0.Str ne 'dimensions' and is-fuzzy-match($0.Str, 'dimension', 2) }> }

    proto token dimensions-noun {*}
    token dimensions-noun:sym<English> { :i 'dimensions' | ([\w]+) <?{ $0.Str ne 'dimension' and is-fuzzy-match($0.Str, 'dimensions', 2) }> }

    proto token directly-adverb {*}
    token directly-adverb:sym<English> { :i 'directly' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'directly', 2) }> }
    token display-directive { <display-verb> | 'show' | 'echo' }

    proto token display-verb {*}
    token display-verb:sym<English> { :i 'display' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'display', 2) }> }

    proto token distance-noun {*}
    token distance-noun:sym<English> { :i 'distance' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'distance', 2) }> }

    proto token do-verb {*}
    token do-verb:sym<English> { :i 'do' }

    proto token document-noun {*}
    token document-noun:sym<English> { :i 'document' | ([\w]+) <?{ $0.Str ne 'documents' and is-fuzzy-match($0.Str, 'document', 2) }> }

    proto token documents-noun {*}
    token documents-noun:sym<English> { :i 'documents' | ([\w]+) <?{ $0.Str ne 'document' and is-fuzzy-match($0.Str, 'documents', 2) }> }

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
    token element { <element-noun> }

    proto token element-noun {*}
    token element-noun:sym<English> { :i 'element' | ([\w]+) <?{ $0.Str ne 'elements' and is-fuzzy-match($0.Str, 'element', 2) }> }
    token elements { <elements-noun> }

    proto token elements-noun {*}
    token elements-noun:sym<English> { :i 'elements' | ([\w]+) <?{ $0.Str ne 'element' and is-fuzzy-match($0.Str, 'elements', 2) }> }

    proto token empty-noun {*}
    token empty-noun:sym<English> { :i 'empty' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'empty', 2) }> }
    token empty-verb { <empty-noun> }

    proto token every-determiner {*}
    token every-determiner:sym<English> { :i 'every' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'every', 2) }> }

    proto token extend-verb {*}
    token extend-verb:sym<English> { :i 'extend' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'extend', 2) }> }

    proto token extract-directive {*}
    token extract-directive:sym<English> { :i 'extract' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'extract', 2) }> }
    token filter { <filter-verb> }
    token filter-noun { <filter-verb> }

    proto token filter-verb {*}
    token filter-verb:sym<English> { :i 'filter' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'filter', 2) }> }

    proto token first-adjective {*}
    token first-adjective:sym<English> { :i 'first' | ([\w]+) <?{ $0.Str ne 'list' and is-fuzzy-match($0.Str, 'first', 2) }> }

    proto token for-preposition {*}
    token for-preposition:sym<English> { :i 'for' | 'with' }

    proto token frame-noun {*}
    token frame-noun:sym<English> { :i 'frame' | ([\w]+) <?{ $0.Str ne 'frames' and is-fuzzy-match($0.Str, 'frame', 2) }> }

    proto token frames-noun {*}
    token frames-noun:sym<English> { :i 'frames' | ([\w]+) <?{ $0.Str ne 'frame' and is-fuzzy-match($0.Str, 'frames', 2) }> }

    proto token from-preposition {*}
    token from-preposition:sym<English> { :i 'from' }

    proto token function {*}
    token function:sym<English> { :i 'function' | ([\w]+) <?{ $0.Str ne 'functions' and is-fuzzy-match($0.Str, 'function', 2) }> }

    proto token functions {*}
    token functions:sym<English> { :i 'functions' | ([\w]+) <?{ $0.Str ne 'function' and is-fuzzy-match($0.Str, 'functions', 2) }> }
    token generate-directive { <generate-verb> | <create-verb> | 'make' }

    proto token generate-verb {*}
    token generate-verb:sym<English> { :i 'generate' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'generate', 2) }> }
    token get-verb { 'obtain' | 'get' | <take-verb> }

    proto token graph-noun {*}
    token graph-noun:sym<English> { :i 'graph' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'graph', 2) }> }
    token head-adjective { <head-noun> }

    proto token head-noun {*}
    token head-noun:sym<English> { :i 'head' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'head', 2) }> }

    proto token high-adjective {*}
    token high-adjective:sym<English> { :i 'high' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'high', 2) }> }

    proto token higher-adjective {*}
    token higher-adjective:sym<English> { :i 'higher' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'higher', 2) }> }

    proto token histogram {*}
    token histogram:sym<English> { :i 'histogram' | ([\w]+) <?{ $0.Str ne 'histograms' and is-fuzzy-match($0.Str, 'histogram', 2) }> }

    proto token histograms {*}
    token histograms:sym<English> { :i 'histograms' | ([\w]+) <?{ $0.Str ne 'histogram' and is-fuzzy-match($0.Str, 'histograms', 2) }> }

    proto token how-adverb {*}
    token how-adverb:sym<English> { :i 'how' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'how', 1) }> }

    proto token id-noun {*}
    token id-noun:sym<English> { :i 'id' }

    proto token identifier-noun {*}
    token identifier-noun:sym<English> { :i 'identifier' | ([\w]+) <?{ $0.Str ne 'IDENTIFIER' and is-fuzzy-match($0.Str, 'identifier', 2) }> }

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
    token last-adjective:sym<English> { :i 'last' | ([\w]+) <?{ $0.Str !(elem) <list link> and is-fuzzy-match($0.Str, 'last', 2) }> }

    proto token link-noun {*}
    token link-noun:sym<English> { :i 'link' | ([\w]+) <?{ $0.Str !(elem) <last list> and is-fuzzy-match($0.Str, 'link', 2) }> }

    proto token list-noun {*}
    token list-noun:sym<English> { :i 'list' | ([\w]+) <?{ $0.Str !(elem) <last link> and is-fuzzy-match($0.Str, 'list', 2) }> }

    proto token load-verb {*}
    token load-verb:sym<English> { :i 'load' }

    proto token locate-verb {*}
    token locate-verb:sym<English> { :i 'locate' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'locate', 2) }> }

    proto token low-adjective {*}
    token low-adjective:sym<English> { :i 'low' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'low', 1) }> }

    proto token lower-adjective {*}
    token lower-adjective:sym<English> { :i 'lower' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'lower', 2) }> }

    proto token make-noun {*}
    token make-noun:sym<English> { :i 'make' | ([\w]+) <?{ $0.Str ne 'making' and is-fuzzy-match($0.Str, 'make', 2) }> }

    proto token making-noun {*}
    token making-noun:sym<English> { :i 'making' | ([\w]+) <?{ $0.Str ne 'make' and is-fuzzy-match($0.Str, 'making', 2) }> }

    proto token manner {*}
    token manner:sym<English> { :i 'manner' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'manner', 2) }> }

    proto token matrix-noun {*}
    token matrix-noun:sym<English> { :i 'matrix' | ([\w]+) <?{ $0.Str ne 'matrixes' and is-fuzzy-match($0.Str, 'matrix', 2) }> }

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
    token module-noun:sym<English> { :i 'module' | ([\w]+) <?{ $0.Str ne 'MODULE' and is-fuzzy-match($0.Str, 'module', 2) }> }

    proto token my-determiner {*}
    token my-determiner:sym<English> { :i 'my' }

    proto token name-noun {*}
    token name-noun:sym<English> { :i 'name' | ([\w]+) <?{ $0.Str ne 'names' and is-fuzzy-match($0.Str, 'name', 2) }> }

    proto token names-noun {*}
    token names-noun:sym<English> { :i 'names' | ([\w]+) <?{ $0.Str ne 'name' and is-fuzzy-match($0.Str, 'names', 2) }> }

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
    token one-pronoun:sym<English> { :i 'one' | ([\w]+) <?{ $0.Str !(elem) <ones on> and is-fuzzy-match($0.Str, 'one', 1) }> }

    proto token ones-pronoun {*}
    token ones-pronoun:sym<English> { :i 'ones' | ([\w]+) <?{ $0.Str !(elem) <one on> and is-fuzzy-match($0.Str, 'ones', 2) }> }

    proto token or-conjunction {*}
    token or-conjunction:sym<English> { :i 'or' }

    proto token our-determiner {*}
    token our-determiner:sym<English> { :i 'our' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'our', 1) }> }

    proto token out-adverb {*}
    token out-adverb:sym<English> { :i 'out' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'out', 1) }> }

    proto token over-preposition {*}
    token over-preposition:sym<English> { :i 'over' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'over', 2) }> }

    proto token parameter-noun {*}
    token parameter-noun:sym<English> { :i 'parameter' | ([\w]+) <?{ $0.Str ne 'parameters' and is-fuzzy-match($0.Str, 'parameter', 2) }> }

    proto token parameters-noun {*}
    token parameters-noun:sym<English> { :i 'parameters' | ([\w]+) <?{ $0.Str ne 'parameter' and is-fuzzy-match($0.Str, 'parameters', 2) }> }

    proto token part-noun {*}
    token part-noun:sym<English> { :i 'part' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'part', 2) }> }

    proto token pattern-noun {*}
    token pattern-noun:sym<English> { :i 'pattern' | ([\w]+) <?{ $0.Str ne 'patterns' and is-fuzzy-match($0.Str, 'pattern', 2) }> }

    proto token per-preposition {*}
    token per-preposition:sym<English> { :i 'per' }

    proto token pipeline-noun {*}
    token pipeline-noun:sym<English> { :i 'pipeline' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'pipeline', 2) }> }

    proto token plot-noun {*}
    token plot-noun:sym<English> { :i 'plot' | ([\w]+) <?{ $0.Str ne 'plots' and is-fuzzy-match($0.Str, 'plot', 2) }> }

    proto token plots-noun {*}
    token plots-noun:sym<English> { :i 'plot' | ([\w]+) <?{ $0.Str ne 'plots' and is-fuzzy-match($0.Str, 'plot', 2) }> | 'plots' | ([\w]+) <?{ $0.Str ne 'plot' and is-fuzzy-match($0.Str, 'plots', 2) }> }

    proto token position-noun {*}
    token position-noun:sym<English> { :i 'position' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'position', 2) }> }

    proto token random-adjective {*}
    token random-adjective:sym<English> { :i 'random' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'random', 2) }> }

    proto token records {*}
    token records:sym<English> { :i 'records' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'records', 2) }> }

    proto token reduce-verb {*}
    token reduce-verb:sym<English> { :i 'reduce' | ([\w]+) <?{ $0.Str ne 'reduces' and is-fuzzy-match($0.Str, 'reduce', 2) }> }

    proto token remove-verb {*}
    token remove-verb:sym<English> { :i 'remove' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'remove', 2) }> }

    proto token replace-verb {*}
    token replace-verb:sym<English> { :i 'replace' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'replace', 2) }> }
    token represent-directive { <represent> | 'render' | 'reflect' }

    proto token rest-noun {*}
    token rest-noun:sym<English> { :i 'rest' | ([\w]+) <?{ $0.Str ne 'list' and is-fuzzy-match($0.Str, 'rest', 2) }> }

    proto token result-noun {*}
    token result-noun:sym<English> { :i 'result' | ([\w]+) <?{ $0.Str ne 'results' and is-fuzzy-match($0.Str, 'result', 2) }> }
    token results { <results-noun> }

    proto token results-noun {*}
    token results-noun:sym<English> { :i 'results' | ([\w]+) <?{ $0.Str ne 'result' and is-fuzzy-match($0.Str, 'results', 2) }> }

    proto token reverse-adjective {*}
    token reverse-adjective:sym<English> { :i 'reverse' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'reverse', 2) }> }
    token rows { <rows-noun> }

    proto token rows-noun {*}
    token rows-noun:sym<English> { :i 'rows' | ([\w]+) <?{ $0.Str ne 'row' and is-fuzzy-match($0.Str, 'rows', 2) }> }

    proto token run-verb {*}
    token run-verb:sym<English> { :i 'run' | ([\w]+) <?{ $0.Str !(elem) <runs running> and is-fuzzy-match($0.Str, 'run', 1) }> | 'runs' | ([\w]+) <?{ $0.Str !(elem) <running run> and is-fuzzy-match($0.Str, 'runs', 2) }> }

    proto token running-verb {*}
    token running-verb:sym<English> { :i 'running' | ([\w]+) <?{ $0.Str !(elem) <runs run> and is-fuzzy-match($0.Str, 'running', 2) }> }

    proto token separate-verb {*}
    token separate-verb:sym<English> { :i 'separate' | ([\w]+) <?{ $0.Str ne 'separator' and is-fuzzy-match($0.Str, 'separate', 2) }> }

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
    token simulate:sym<English> { :i 'simulate' | ([\w]+) <?{ $0.Str ne 'simulation' and is-fuzzy-match($0.Str, 'simulate', 2) }> }
    token simulate-directive { <simulate> }

    proto token simulation {*}
    token simulation:sym<English> { :i 'simulation' | ([\w]+) <?{ $0.Str ne 'simulate' and is-fuzzy-match($0.Str, 'simulation', 2) }> }

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
    token split-verb:sym<English> { :i 'split' | ([\w]+) <?{ $0.Str ne 'splitting' and is-fuzzy-match($0.Str, 'split', 2) }> }

    proto token spot-verb {*}
    token spot-verb:sym<English> { :i 'spot' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'spot', 2) }> }

    proto token spread-verb {*}
    token spread-verb:sym<English> { :i 'spread' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'spread', 2) }> }
    token statistical { <statistical-adjective> }

    proto token statistical-adjective {*}
    token statistical-adjective:sym<English> { :i 'statistical' | ([\w]+) <?{ $0.Str ne 'statistics' and is-fuzzy-match($0.Str, 'statistical', 2) }> }

    proto token statistics-noun {*}
    token statistics-noun:sym<English> { :i 'statistics' | ([\w]+) <?{ $0.Str ne 'statistical' and is-fuzzy-match($0.Str, 'statistics', 2) }> }

    proto token stats-noun {*}
    token stats-noun:sym<English> { :i 'stats' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'stats', 2) }> }

    proto token step-noun {*}
    token step-noun:sym<English> { :i 'step' | ([\w]+) <?{ $0.Str ne 'steps' and is-fuzzy-match($0.Str, 'step', 2) }> }

    proto token steps-noun {*}
    token steps-noun:sym<English> { :i 'steps' | ([\w]+) <?{ $0.Str ne 'step' and is-fuzzy-match($0.Str, 'steps', 2) }> }

    proto token string-noun {*}
    token string-noun:sym<English> { :i 'string' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'string', 2) }> }

    proto token sub-prefix {*}
    token sub-prefix:sym<English> { :i 'sub' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'sub', 1) }> }
    token summaries { <summaries-noun> }

    proto token summaries-noun {*}
    token summaries-noun:sym<English> { :i 'summaries' | ([\w]+) <?{ $0.Str ne 'summary' and is-fuzzy-match($0.Str, 'summaries', 2) }> }

    proto token summarize-directive {*}
    token summarize-directive:sym<English> { :i 'summarize' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'summarize', 2) }> }
    token summary { <summary-noun> }

    proto token summary-noun {*}
    token summary-noun:sym<English> { :i 'summary' | ([\w]+) <?{ $0.Str ne 'summaries' and is-fuzzy-match($0.Str, 'summary', 2) }> }

    proto token system-noun {*}
    token system-noun:sym<English> { :i 'system' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'system', 2) }> }

    proto token table-noun {*}
    token table-noun:sym<English> { :i 'table' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'table', 2) }> }

    proto token tabular-adjective {*}
    token tabular-adjective:sym<English> { :i 'tabular' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'tabular', 2) }> }

    proto token take-verb {*}
    token take-verb:sym<English> { :i 'take' | ([\w]+) <?{ $0.Str ne 'the' and is-fuzzy-match($0.Str, 'take', 2) }> }

    proto token target-noun {*}
    token target-noun:sym<English> { :i 'target' | ([\w]+) <?{ $0.Str ne 'TARGET' and is-fuzzy-match($0.Str, 'target', 2) }> }

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

    proto token time-noun {*}
    token time-noun:sym<English> { :i 'time' | ([\w]+) <?{ $0.Str ne 'times' and is-fuzzy-match($0.Str, 'time', 2) }> }

    proto token timeline-noun {*}
    token timeline-noun:sym<English> { :i 'timeline' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'timeline', 2) }> }

    proto token times-noun {*}
    token times-noun:sym<English> { :i 'times' | ([\w]+) <?{ $0.Str ne 'time' and is-fuzzy-match($0.Str, 'times', 2) }> }

    proto token to-preposition {*}
    token to-preposition:sym<English> { :i 'to' | 'into' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'into', 2) }> }

    proto token top-noun {*}
    token top-noun:sym<English> { :i 'top' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'top', 1) }> }

    proto token transform-verb {*}
    token transform-verb:sym<English> { :i 'transform' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'transform', 2) }> }

    proto token translation-noun {*}
    token translation-noun:sym<English> { :i 'translation' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'translation', 2) }> }

    proto token type-noun {*}
    token type-noun:sym<English> { :i 'type' | ([\w]+) <?{ $0.Str ne 'types' and is-fuzzy-match($0.Str, 'type', 2) }> }

    proto token up-adverb {*}
    token up-adverb:sym<English> { :i 'up' }

    proto token use-verb {*}
    token use-verb:sym<English> { :i 'use' | 'utilize' | ([\w]+) <?{ $0.Str !(elem) <utility utilized> and is-fuzzy-match($0.Str, 'utilize', 2) }> }

    proto token used-verb {*}
    token used-verb:sym<English> { :i 'used' | ([\w]+) <?{ $0.Str !(elem) <use using> and is-fuzzy-match($0.Str, 'used', 2) }> | 'utilized' | ([\w]+) <?{ $0.Str !(elem) <utilize utility> and is-fuzzy-match($0.Str, 'utilized', 2) }> }

    proto token using-preposition {*}
    token using-preposition:sym<English> { :i 'using' | ([\w]+) <?{ $0.Str !(elem) <used use> and is-fuzzy-match($0.Str, 'using', 2) }> | 'with' | 'over' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'over', 2) }> }

    proto token value-noun {*}
    token value-noun:sym<English> { :i 'value' | ([\w]+) <?{ $0.Str ne 'values' and is-fuzzy-match($0.Str, 'value', 2) }> }

    proto token values-noun {*}
    token values-noun:sym<English> { :i 'values' | ([\w]+) <?{ $0.Str ne 'value' and is-fuzzy-match($0.Str, 'values', 2) }> }

    proto token variable-noun {*}
    token variable-noun:sym<English> { :i 'variable' | ([\w]+) <?{ $0.Str ne 'variables' and is-fuzzy-match($0.Str, 'variable', 2) }> }

    proto token variables-noun {*}
    token variables-noun:sym<English> { :i 'variables' | ([\w]+) <?{ $0.Str ne 'variable' and is-fuzzy-match($0.Str, 'variables', 2) }> }
    token versus-preposition { 'vs' | 'vs.' | 'versus' }

    proto token way-noun {*}
    token way-noun:sym<English> { :i 'way' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'way', 1) }> }

    proto token weight-noun {*}
    token weight-noun:sym<English> { :i 'weight' | ([\w]+) <?{ $0.Str ne 'weights' and is-fuzzy-match($0.Str, 'weight', 2) }> }
    token weight { <weight-noun> }

    proto token weights-noun {*}
    token weights-noun:sym<English> { :i 'weights' | ([\w]+) <?{ $0.Str ne 'weight' and is-fuzzy-match($0.Str, 'weights', 2) }> }
    token weights { <weights-noun> }

    proto token what-pronoun {*}
    token what-pronoun:sym<English> { :i 'what' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'what', 2) }> }

    proto token when-pronoun {*}
    token when-pronoun:sym<English> { :i 'when' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'when', 2) }> }

    proto token which-determiner {*}
    token which-determiner:sym<English> { :i 'which' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'which', 2) }> }

    proto token with-preposition {*}
    token with-preposition:sym<English> { :i 'using' | ([\w]+) <?{ $0.Str !(elem) <use used> and is-fuzzy-match($0.Str, 'using', 2) }> | 'with' | 'by' }

    proto token without-preposition {*}
    token without-preposition:sym<English> { :i 'without' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'without', 2) }> }

    proto token words-noun {*}
    token words-noun:sym<English> { :i 'words' | ([\w]+) <?{ $0.Str ne 'word' and is-fuzzy-match($0.Str, 'words', 2) }> }

    # Directives and phrases
    rule USER-ID-phrase { <USER-noun> [ <ID-noun> | <IDENTIFIER-noun> ] }
    rule adjacency-matrix-phrase { [ <adjacency-noun> | <adjacent-adjective> ] <matrix-noun> }
    rule annex-directive { <annex-verb> | <append-verb> }
    rule assign-directive { <assign-verb> }
    rule complete-cases-phrase { <complete-adjective> <cases-noun> }
    rule compute-and-display { <compute-directive> [ <and-conjunction> <display-directive> ]? }
    rule creation-phrase { <creation-noun> | <making-noun> <of-preposition>? }
    rule data { <data-frame> | <data-noun> <set-noun> | <time-series-data> | <data-noun> | <dataset-noun> }
    rule data-column-phrase { <data-noun>? [ <column-noun> | <variable-noun> ] }
    rule data-columns-phrase { <data-noun>? [ <columns> | <variables-noun> ] }
    rule data-frame { <data-noun> <frame-noun> }
    rule data-frames { <data-noun> <frames-noun> }
    rule diagram-phrase { <plot-noun> | <plots-noun> | <graph-noun> | <chart-noun> }
    rule distance-function-phrase { <distance-noun> <function> }
    rule extend-directive { <extend-verb> | <broaden-verb> | <spread-verb> <out-adverb> }
    rule find-directive { <find-verb> | <locate-verb> | <spot-verb> | <detect-verb> }
    rule for-which-phrase { <for-preposition> <which-determiner> | <that-pronoun> <adhere-verb> <to-preposition> }
    rule join-directive { <join-verb> | <connect-verb> | <link-noun> }
    rule load-data-directive { [ <load-verb> | <ingest-verb> ] <the-determiner>? <data> }
    rule load-directive { <load-verb> | <get-verb> | <consider-verb> }
    rule max-iterations-phrase { <maximum>? <number-of>? [ <iterations> | <steps-noun> ] }
    rule missing-values-phrase { <missing-adjective> <values-noun>? }
    rule nearest-neighbors-phrase { <nearest-adjective>? <neighbors-noun> | 'nns' }
    rule number-of { [ <number-noun> | <count-verb> | <counts-noun> ] <of-preposition> }
    rule plot-directive { <plot-noun> | <chart-noun> | <display-directive> <diagram> }
    rule records-phrase { <table-noun>? [ <rows> | <records> ] }
    rule remove-directive { <delete-directive> | <drop-verb> | <take-off-phrase> | <take-away-phrase> }
    rule simple-way-phrase { <simple> [ <way-noun> | <manner> ] }
    rule simulate-and-display { <simulate-directive> [ <and-conjunction> <display-directive> ]? }
    rule take-away-phrase { <take-verb> <away-adverb> }
    rule take-off-phrase { <take-verb> <off-adverb> }
    rule time-series-phrase { <time-noun> <series-noun> }
    rule time-series-data { <time-series-phrase> <data-noun>? }
    rule use-directive { [ <get-verb> <and-conjunction>? ]? <use-verb> }
}

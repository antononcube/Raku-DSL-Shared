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
    token ID-noun { 'ID' }
    token IDENTIFIER-noun { 'IDENTIFIER' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'IDENTIFIER') }> }
    token MODULE-noun { 'MODULE' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'MODULE') }> }
    token TARGET-noun { 'TARGET' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'TARGET') }> }
    token USER-noun { 'USER' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'USER', 1) }> }
    token a-determiner { 'a' | 'an' }
    token adhere-verb { 'adhere' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'adhere') }> }
    token adjacency-noun { 'adjacency' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'adjacency') }> }
    token adjacent-adjective { 'adjacent' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'adjacent') }> }
    token algorithm-noun { 'algorithm' | ([\w]+) <?{ $0.Str ne 'algorithms' and is-fuzzy-match( $0.Str, 'algorithm') }> }
    token algorithms-noun { 'algorithms' | ([\w]+) <?{ $0.Str ne 'algorithm' and is-fuzzy-match( $0.Str, 'algorithms') }> }
    token all-determiner { 'all' }
    token and-conjunction { 'and' }
    token annex-verb { 'annex' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'annex') }> }
    token append-verb { 'append' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'append') }> }
    token apply-verb { 'apply' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'apply') }> }
    token are-verb { 'are' }
    token as-preposition { 'as' }
    token assign-verb { 'assign' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'assign') }> }
    token at-preposition { 'at' }
    token automatic { 'automatic' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'automatic') }> }
    token away-adverb { 'away' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'away', 1) }> }
    token axes-noun { 'axes' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'axes', 1) }> }
    token axis-noun { 'axis' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'axis', 1) }> }
    token be-verb { 'be' }
    token both-determiner { 'both' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'both', 1) }> }
    token bottom-noun { 'bottom' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'bottom') }> }
    token broaden-verb { 'broaden' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'broaden') }> }
    token by-preposition { 'by' | 'with' | 'using' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'using') }> }
    token calculation { 'calculation' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'calculation') }> }
    token case-noun { 'case' | ([\w]+) <?{ $0.Str ne 'case' and is-fuzzy-match( $0.Str, 'case', 1) }> }
    token cases-noun { 'cases' | ([\w]+) <?{ $0.Str ne 'cases' and is-fuzzy-match( $0.Str, 'cases', 1) }> }
    token chart-noun { 'chart' | ([\w]+) <?{ $0.Str ne 'what' and is-fuzzy-match( $0.Str, 'chart', 1) }> }
    token classify-verb { 'classify' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'classify') }> }
    token cluster { 'clusters' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'clusters') }> }
    token column-noun { 'column' | ([\w]+) <?{ $0.Str ne 'columns' and is-fuzzy-match( $0.Str, 'column') }> }
    token columns { 'columns' | ([\w]+) <?{ $0.Str ne 'column' and is-fuzzy-match( $0.Str, 'columns') }> }
    token columns-noun { 'columns' | ([\w]+) <?{ $0.Str ne 'column' and is-fuzzy-match( $0.Str, 'columns') }> }
    token complete-adjective { 'complete' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'complete') }> }
    token compute-directive { 'compute' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'compute') }> | 'find' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'find', 1) }> | 'calculate' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'calculate') }> }
    token connect-verb { 'link' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'link', 1) }> }
    token consider-verb { 'consider' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'consider') }> }
    token context-noun { 'context' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'context') }> }
    token contingency-noun { 'contingency' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'contingency') }> }
    token convert-verb { 'convert' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'convert') }> }
    token count-verb { 'count' | ([\w]+) <?{ $0.Str ne 'counts' and is-fuzzy-match( $0.Str, 'count') }> }
    token counts-noun { 'counts' | ([\w]+) <?{ $0.Str ne 'count' and is-fuzzy-match( $0.Str, 'counts') }> }
    token create { 'create' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'create') }> }
    token create-directive { <create-verb> | 'make' }
    token create-verb { 'create' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'create') }> }
    token creation-noun { 'creation' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'creation') }> }
    token current-adjective { 'current' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'current') }> }
    token data-noun { 'data' | ([\w]+) <?{ $0.Str !(elem) <date dates datum> and is-fuzzy-match( $0.Str, 'data', 1) }>}
    token datum-noun { 'datum' | ([\w]+) <?{ $0.Str !(elem) <data date dates> and is-fuzzy-match( $0.Str, 'datum') }>}
    token dataset { 'dataset' | ([\w]+) <?{ $0.Str !(elem) ('datasets', 'a dataset') and is-fuzzy-match( $0.Str, 'dataset') }> }
    token dataset-noun { 'dataset' | ([\w]+) <?{ $0.Str !(elem) ('datasets', 'a dataset') and is-fuzzy-match( $0.Str, 'dataset') }> }
    token datasets-noun { 'datasets' | ([\w]+) <?{ $0.Str !(elem) ('dataset', 'a dataset') and is-fuzzy-match( $0.Str, 'datasets') }> }
    token default { 'default' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'default') }> }
    token delete-directive { 'delete' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'delete') }> | 'drop' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'drop', 1) }> | 'erase' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'erase') }> | 'remove' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'remove') }> }
    token detect-verb { 'detect' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'detect') }> }
    token diagram { <plot-noun> | <plots-noun> | <graph-noun> | <chart-noun> }
    token diagram-noun { 'diagram' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'diagram') }> }
    token difference { 'difference' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'difference') }> }
    token dimension-noun { 'dimension' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'dimension') }> }
    token dimensions-noun { 'dimensions' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'dimensions') }> }
    token directly-adverb { 'directly' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'directly') }> }
    token display-directive { <display-verb> | 'show' | 'echo' }
    token display-verb { 'display' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'display') }> }
    token distance-noun { 'distance' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'distance') }> }
    token do-verb { 'do' }
    token document-noun { 'document' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'document') }> }
    token documents-noun { 'documents' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'documents') }> }
    token domain-noun { 'domain' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'words') }> }
    token drop-verb { 'drop' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'drop', 1) }> }
    token during-preposition { 'during' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'during') }> }
    token each-determiner { 'each' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'each', 1) }> }
    token element { 'element' | ([\w]+) <?{ $0.Str ne 'elements' and is-fuzzy-match( $0.Str, 'element') }> }
    token elements { 'elements' | ([\w]+) <?{ $0.Str ne 'element' and is-fuzzy-match( $0.Str, 'elements') }> }
    token every-determiner { 'every' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'every', 1) }> }
    token extend-verb { 'extend' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'extend') }> }
    token extract-directive { 'extract' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'extract') }> }
    token filter-verb { 'filter' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'filter') }> }
    token find-verb { 'find' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'find') }> }
    token for-preposition { 'for' | 'with' }
    token frame-noun { 'frame' | ([\w]+) <?{ $0.Str ne 'frames' and is-fuzzy-match( $0.Str, 'frame') }> }
    token frames-noun { 'frames' | ([\w]+) <?{ $0.Str ne 'frame' and is-fuzzy-match( $0.Str, 'frames') }> }
    token from-preposition { 'from' }
    token function { 'function' | ([\w]+) <?{ $0.Str ne 'functions' and is-fuzzy-match( $0.Str, 'function') }> }
    token functions { 'functions' | ([\w]+) <?{ $0.Str ne 'function' and is-fuzzy-match( $0.Str, 'functions') }> }
    token generate-directive { <generate-verb> | <create-verb> | 'make' }
    token generate-verb { 'generate' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'generate') }> }
    token get-verb { 'obtain' | 'get' | <take-verb> }
    token graph-noun { 'graph' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'graph') }> }
    token high-adjective { 'high' | ([\w]+) <?{ $0.Str ne 'dish' and $0.Str ne 'height' and is-fuzzy-match( $0.Str, 'high', 1) }> }
    token higher-adjective { 'higher' | ([\w]+) <?{ $0.Str ne 'height' and is-fuzzy-match( $0.Str, 'higher') }> }
    token histogram { 'histogram' | ([\w]+) <?{  $0.Str ne 'histograms' and is-fuzzy-match( $0.Str, 'histogram') }> }
    token histograms { 'histograms' | ([\w]+) <?{  $0.Str ne 'histogram' and is-fuzzy-match( $0.Str, 'histograms') }> }
    token how-adverb { 'how' }
    token id-noun { 'id' }
    token identifier-noun { 'identifier' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'identifier') }> }
    token in-preposition { 'in' }
    token ingest-verb { 'ingest' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'ingest') }> }
    token into-preposition { 'into' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'into', 1) }> }
    token is-verb { 'is' }
    token iterations { 'iterations' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'iterations') }> }
    token join-verb { 'join' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'join') }> }
    token language-noun { 'language' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'language') }> }
    token largest-adjective { 'largest' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'largest') }> }
    token link-noun { 'link' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'link', 1) }> }
    token list-noun { 'list' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'list', 1) }> }
    token load-verb { 'load' }
    token locate-verb { 'locate' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'locate') }> }
    token low-adjective { 'low' }
    token lower-adjective { 'lower' | ([\w]+) <?{ $0.Str ne 'low' and is-fuzzy-match( $0.Str, 'lower') }> }
    token make-verb { 'make' | ([\w]+) <?{ $0.Str ne 'make' and is-fuzzy-match( $0.Str, 'make', 1) }> }
    token making-noun { 'making' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'making') }> }
    token manner { 'manner' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'manner') }> }
    token matrix-noun { 'matrix' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'matrix') }> }
    token maximum { 'max' | 'maximum' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'maximum') }> }
    token message-noun { 'message' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'message') }> }
    token method-noun { 'method' | ([\w]+) <?{ $0.Str ne 'methods' and is-fuzzy-match( $0.Str, 'method') }> }
    token methods-noun { 'methods' | ([\w]+) <?{ $0.Str ne 'method' and is-fuzzy-match( $0.Str, 'methods') }> }
    token minimum { 'min' | 'minimum' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'minimum') }> }
    token missing-adjective { 'missing' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'missing') }> }
    token model { 'model' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'model') }> }
    token module-noun { 'module' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'module') }> }
    token my-determiner { 'my' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'my', 1) }> }
    token name-noun { 'name' | ([\w]+) <?{ $0.Str ne 'names' and is-fuzzy-match( $0.Str, 'name') }> }
    token names-noun { 'names' | ([\w]+) <?{ $0.Str ne 'name' and is-fuzzy-match( $0.Str, 'names') }> }
    token nearest-adjective { 'nearest' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'nearest') }> }
    token neighbors-noun { 'neighbors' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'neighbors') }> }
    token no-determiner { 'no' }
    token non-prefix { 'non' }
    token number-noun { 'number' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'number') }> }
    token object-noun { 'object' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'object') }> }
    token of-preposition { 'of' }
    token off-adverb { 'off' }
    token on-preposition { 'on' }
    token or-conjunction { 'or' }
    token our-determiner { 'our' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'our', 1) }> }
    token out-adverb { 'out' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'out', 1) }> }
    token outlier-noun { 'outlier' | ([\w]+) <?{ $0.Str ne 'outliers' and is-fuzzy-match( $0.Str, 'outlier') }> }
    token outliers-noun { 'outliers' | ([\w]+) <?{ $0.Str ne 'outlier' and is-fuzzy-match( $0.Str, 'outliers') }> }
    token over-preposition { 'over' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'over') }> }
    token parameter-noun { 'parameter' | ([\w]+) <?{ $0.Str ne 'parameters' and is-fuzzy-match( $0.Str, 'parameter') }> }
    token parameters-noun { 'parameters' | ([\w]+) <?{ $0.Str ne 'parameter' and is-fuzzy-match( $0.Str, 'parameters') }> }
    token pattern-noun { 'pattern' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'pattern') }> }
    token per-preposition { 'per' }
    token pipeline-noun { 'pipeline' | ([\w]+) <?{ $0.Str ne 'timeline' and is-fuzzy-match( $0.Str, 'pipeline') }> }
    token plot-noun { 'plot' | ([\w]+) <?{ $0.Str ne 'plots' and is-fuzzy-match( $0.Str, 'plot') }> }
    token plots-noun { <plot-noun> | 'plots' | ([\w]+) <?{ $0.Str ne 'plot' and is-fuzzy-match( $0.Str, 'plots') }> }
    token random-adjective { 'random' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'random') }> }
    token records { 'records' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'records') }> }
    token reduce-verb { 'reduce' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'reduce') }> }
    token remove-verb { 'remove' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'remove') }> }
    token represent-directive { <represent> | 'render' | 'reflect' }
    token results { 'results' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'results') }> }
    token reverse-adjective { 'reverse' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'reverse') }> }
    token rows { 'rows' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'rows', 1) }> }
    token run-verb { 'run' | 'runs' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'runs') }> }
    token running-verb { 'running' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'running') }> }
    token separate-verb { 'separate' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'separate') }> }
    token series-noun { 'series' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'series') }> }
    token set-directive { 'set' }
    token shape-noun { 'shape' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'shape') }> }
    token simple { 'simple' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'simple') }> | 'direct' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'direct') }> }
    token simply-adverb { 'simply' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'simply') }> }
    token simulate { 'simulate' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'simulate') }> }
    token simulate-directive { <simulate> }
    token simulation { 'simulation' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'simulation') }> }
    token single-adjective { 'single' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'single') }> }
    token site-noun { 'site' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'site') }> }
    token smallest { 'smallest' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'smallest') }> }
    token smallest-adjective { 'smallest' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'smallest') }> }
    token some-determiner { 'some' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'some', 1) }> }
    token sparse-adjective { 'sparse' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'sparse') }> }
    token specific-adjective { 'specific' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'specific') }> }
    token split-verb { 'split' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'split') }> }
    token spot-verb { 'spot' }
    token spread-verb { 'spread' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'spread') }> }
    token statistical { 'statistical' | ([\w]+) <?{  $0.Str ne 'statistics' and is-fuzzy-match( $0.Str, 'statistical') }> }
    token statistics-noun { 'statistics' | ([\w]+) <?{  $0.Str ne 'statistical' and  is-fuzzy-match( $0.Str, 'statistics') }> }
    token stats-noun { 'stats' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'stats') }> }
    token step-noun { 'step' | ([\w]+) <?{ $0.Str ne 'steps' and is-fuzzy-match( $0.Str, 'step', 1) }> }
    token steps-noun { 'steps' | ([\w]+) <?{ $0.Str ne 'step' and is-fuzzy-match( $0.Str, 'steps') }> }
    token string-noun { 'string' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'string') }> }
    token sub-prefix { 'sub' }
    token summaries { 'summaries' | ([\w]+) <?{ $0.Str ne 'summarize' and is-fuzzy-match( $0.Str, 'summaries') }> }
    token summarize-directive { 'summarize' | ([\w]+) <?{ $0.Str ne 'summarise' and is-fuzzy-match( $0.Str, 'summarize') }> }
    token summary { 'summary' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'summary') }> }
    token system-noun { 'system' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'system') }> }
    token table-noun { 'table' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'table') }> }
    token tabular-adjective { 'tabular' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'tabular') }> }
    token take-verb { 'take' }
    token target-noun { 'target' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'target') }> }
    token text-noun { 'text' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'text') }> }
    token that-pronoun { 'that' }
    token the-determiner { 'the' }
    token them-pronoun { 'them' }
    token this-pronoun { 'this' }
    token time-noun { 'time' | ([\w]+) <?{ $0.Str !(elem) <the times> and is-fuzzy-match( $0.Str, 'time', 1) }> }
    token timeline-noun { 'timeline' | ([\w]+) <?{ $0.Str ne 'pipeline' and is-fuzzy-match( $0.Str, 'timeline') }> }
    token times-noun { 'time' | ([\w]+) <?{ $0.Str ne 'time' and is-fuzzy-match( $0.Str, 'times', 1) }> }
    token to-preposition { 'to' | 'into' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'into', 1) }> }
    token top-noun { 'top' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'top', 1) }> }
    token transform-verb { 'transform' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'transform') }> }
    token translation-noun { 'translation' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'TARGET') }> }
    token type-noun { 'type' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'type') }> }
    token use-verb { 'use' | 'utilize' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'utilize') }> }
    token using-preposition { 'using' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'using') }> | 'with' | 'over' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'over', 1) }> }
    token value-noun { 'value' | ([\w]+) <?{ $0.Str ne 'values' and is-fuzzy-match( $0.Str, 'value') }> }
    token values-noun { 'values' | ([\w]+) <?{ $0.Str ne 'value' and is-fuzzy-match( $0.Str, 'values') }> }
    token variable-noun { 'variable' | ([\w]+) <?{ $0.Str ne 'variables' and is-fuzzy-match( $0.Str, 'variable') }> }
    token variables-noun { 'variables' | ([\w]+) <?{ $0.Str ne 'variable' and is-fuzzy-match( $0.Str, 'variables') }> }
    token versus-preposition { 'vs' | 'vs.' | 'versus' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'versus') }> }
    token way-noun { 'way' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'way', 1) }> }
    token weight { 'weight' | ([\w]+) <?{ $0.Str ne 'weights' and is-fuzzy-match( $0.Str, 'weight') }> }
    token weights { 'weights' | ([\w]+) <?{ $0.Str ne 'weight' and is-fuzzy-match( $0.Str, 'weights') }> }
    token what-pronoun { 'what' | ([\w]+) <?{ $0.Str !(elem) <when which whith chart> and is-fuzzy-match( $0.Str, 'what', 1) }> }
    token when-pronoun { 'when' | ([\w]+) <?{ $0.Str !(elem) <what which whith chart> and is-fuzzy-match( $0.Str, 'when', 1) }> }
    token which-determiner { 'which' | ([\w]+) <?{ $0.Str !(elem) <what when whith chart> and is-fuzzy-match( $0.Str, 'which') }> }
    token with-preposition { 'using' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'using') }> | 'with' | 'by' }
    token without-preposition { 'without' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'without') }> }
    token words-noun { 'words' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'words') }> }

    # Directives and phrases
    rule USER-ID-phrase { <USER-noun> [ <ID-noun> | <IDENTIFIER-noun> ] }
    rule adjacency-matrix-phrase { [ <adjacency-noun> | <adjacent-adjective> ] <matrix-noun> }
    rule annex-directive { <annex-verb> | <append-verb> }
    rule assign-directive { <assign-verb> }
    rule complete-cases-phrase { <complete-adjective> <cases-noun> }
    rule compute-and-display { <compute-directive> [ <and-conjunction> <display-directive> ]? }
    rule creation-phrase { <creation-noun> | <making-noun> <of-preposition>? }
    rule data { <data-frame> | <data-noun> | <dataset-noun> | <time-series-data> }
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

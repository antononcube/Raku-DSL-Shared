
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
    token a-determiner { 'a' | 'an' }
    token adhere-verb { 'adhere' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'adhere') }> }
    token all-determiner { 'all' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'all') }> }
    token and-conjunction { 'and' }
    token apply-verb { 'apply' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'apply') }> }
    token assign { 'assign' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'assign') }> | 'set' }
    token at-preposition { 'at' }
    token automatic { 'automatic' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'automatic') }> }
    token axes-noun { 'axes' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'axes') }> }
    token axis-noun { 'axis' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'axis') }> }
    token both-determiner { 'both' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'both') }> }
    token bottom-noun { 'bottom' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'bottom') }> }
    token by-preposition { 'by' | 'with' | 'using' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'using') }> }
    token calculation { 'calculation' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'calculation') }> }
    token chart-noun { 'chart' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'chart') }> }
    token classify { 'classify' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'classify') }> }
    token columns { 'columns' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'columns') }> }
    token compute-directive { 'compute' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'compute') }> | 'find' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'find') }> | 'calculate' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'calculate') }> }
    token contingency-noun { 'contingency' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'contingency') }> }
    token count-verb { 'count' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'count') }> }
    token counts-noun { 'counts' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'counts') }> }
    token create { 'create' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'create') }> }
    token create-directive { 'create' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'create') }> | 'make' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'make') }> }
    token creation-noun { 'creation' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'creation') }> }
    token data-noun { 'data' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'data') }> }
    token dataset-noun { 'dataset' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'dataset') }> }
    token default { 'default' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'default') }> }
    token delete-directive { 'delete' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'delete') }> | 'drop' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'drop') }> | 'erase' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'erase') }> }
    token diagram-noun { 'diagram' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'diagram') }> }
    token difference { 'difference' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'difference') }> }
    token directly-adverb { 'directly' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'directly') }> }
    token display-directive { 'display' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'display') }> | 'show' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'show') }> | 'echo' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'echo') }> }
    token do-verb { 'do' }
    token element { 'element' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'element') }> }
    token elements { 'elements' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'elements') }> }
    token for-preposition { 'for' | 'with' }
    token frame-noun { 'frame' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'frame') }> }
    token from-preposition { 'from' }
    token function { 'function' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'function') }> }
    token functions { 'functions' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'functions') }> }
    token generate-directive { 'generate' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'generate') }> | 'create' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'create') }> | 'make' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'make') }> }
    token get-verb { 'obtain' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'obtain') }> | 'get' | 'take' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'take') }> }
    token graph { 'graph' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'graph') }> }
    token histogram { 'histogram' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'histogram') }> }
    token histograms { 'histograms' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'histograms') }> }
    token in-preposition { 'in' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'in') }> }
    token is-verb { 'is' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'is') }> }
    token ingest-verb { 'ingest' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'ingest') }> }
    token list-noun { 'list' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'list') }> }
    token load-verb { 'load' }
    token making-noun { 'making' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'making') }> }
    token manner { 'manner' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'manner') }> }
    token matrix-noun { 'matrix' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'matrix') }> }
    token missing-adjective { 'missing' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'missing') }> }
    token model { 'model' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'model') }> }
    token number-noun { 'number' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'number') }> }
    token object { 'object' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'object') }> }
    token of-preposition { 'of' }
    token or-conjunction { 'or' }
    token over-preposition { 'over' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'over') }> }
    token per-preposition { 'per' }
    token plot { 'plot' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'plot') }> }
    token plots { 'plot' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'plot') }> | 'plots' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'plots') }> }
    token records { 'records' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'records') }> }
    token results { 'results' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'results') }> }
    token rows { 'rows' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'rows') }> }
    token run-verb { 'run' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'run') }> | 'runs' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'runs') }> }
    token running-verb { 'running' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'running') }> }
    token series-noun { 'series' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'series') }> }
    token simple { 'simple' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'simple') }> | 'direct' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'direct') }> }
    token simply-adverb { 'simply' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'simply') }> }
    token simulate { 'simulate' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'simulate') }> }
    token simulation { 'simulation' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'simulation') }> }
    token smallest { 'smallest' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'smallest') }> }
    token step-noun { 'step' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'step') }> }
    token summaries { 'summaries' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'summaries') }> }
    token summarize-directive { 'summarize' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'summarize') }> }
    token summary { 'summary' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'summary') }> }
    token system { 'system' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'system') }> }
    token table-noun { 'table' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'table') }> }
    token that-pronoun { 'that' }
    token the-determiner { 'the' }
    token them-pronoun { 'them' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'them') }> }
    token this-pronoun { 'this' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'this') }> }
    token time-noun { 'time' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'time') }> }
    token to-preposition { 'to' | 'into' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'into') }> }
    token top-noun { 'top' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'top') }> }
    token transform-verb { 'transform' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'transform') }> }
    token use-verb { 'use' | 'utilize' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'utilize') }> }
    token using-preposition { 'using' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'using') }> | 'with' | 'over' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'over') }> }
    token value-noun { 'value' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'value') }> }
    token values-noun { 'values' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'values') }> }
    token variable-noun { 'variable' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'variable') }> }
    token variables-noun { 'variables' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'variables') }> }
    token way-noun { 'way' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'way') }> }
    token weight { 'weight' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'weight') }> }
    token weights { 'weights' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'weights') }> }
    token with-preposition { 'using' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'using') }> | 'with' | 'by' }

    # Directives and phrases
    rule compute-and-display { <compute-directive> [ <and-conjunction> <display-directive> ]? }
    rule creation { <creation-noun> | <making-noun> <of-preposition>? }
    rule data { <data-frame> | <data-noun> | <dataset-noun> | <time-series-data> }
    rule data-frame { <data-noun> <frame-noun> }
    rule diagram-phrase { <plot> | <plots> | <graph-noun> | <chart-noun> }
    rule for-which-phrase { <for-preposition> <which-determiner> | <that-pronoun> <adhere-verb> <to-preposition> }
    rule load-data-directive { ( <load-verb> | <ingest-verb> ) <the-determiner>? <data> }
    rule missing-values-phrase { <missing-adjective> <values-noun>? }
    rule number-of { [ <number-noun> | <count-verb> | <counts-noun> ] <of-preposition> }
    rule plot-directive { <plot> | <chart-noun> | <display-directive> <diagram> }
    rule records-phrase { <table-noun>? [ <rows> | <records> ] }
    rule simple-way-phrase { <simple> [ <way-noun> | <manner> ] }
    rule time-series-data { <time-noun> <series-noun> <data-noun>? }
    rule use-directive { [ <get-verb> <and-conjunction>? ]? <use-verb> }
}

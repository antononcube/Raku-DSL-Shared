use v6;

# This role class has common command parts.
role DSL::Shared::Roles::English::CommonSpeechParts {
    # Speech parts
    token a-determiner { 'a' | 'an'}
    token all-determiner { 'all' }
    token and-conjunction { 'and' }
    token apply-verb { 'apply' }
    token assign { 'assign' | 'set' }
    token at-preposition { 'at' }
    token automatic { 'automatic' }
    token axes-noun { 'axes' }
    token axis-noun { 'axis' }
    token both-determiner { 'both' }
    token bottom-noun { 'bottom' }
    token by-preposition { 'by' | 'with' | 'using' }
    token calculation { 'calculation' }
    token columns { 'columns' }
    token contingency-noun { 'contingency' }
    token count-verb { 'count' }
    token counts-noun { 'counts' }
    token create { 'create' }
    token data-noun { 'data' }
    token dataset-noun { 'dataset' }
    token default { 'default' }
    token difference { 'difference' }
    token directly-adverb { 'directly' }
    token do-verb { 'do' }
    token element { 'element' }
    token elements { 'elements' }
    token for-preposition { 'for' | 'with' }
    token frame-noun { 'frame' }
    token from-preposition { 'from' }
    token function { 'function' }
    token functions { 'functions' }
    token get-verb { 'obtain' | 'get' | 'take' }
    token histogram { 'histogram' }
    token histograms { 'histograms' }
    token in-preposition { 'in' }
    token is-verb { 'is' }
    token list-noun { 'list' }
    token matrix-noun { 'matrix' }
    token missing-adjective { 'missing' }
    token model { 'model' }
    token object { 'object' }
    token of-preposition { 'of' }
    token or-conjunction { 'or' }
    token over-preposition { 'over' }
    token per-preposition { 'per' }
    token plot { 'plot' }
    token plots { 'plot' | 'plots' }
    token records { 'records' }
    token results { 'results' }
    token rows { 'rows' }
    token run-verb { 'run' | 'runs' }
    token running-verb { 'running' }
    token simple { 'simple' | 'direct' }
    token simply-adverb { 'simply' }
    token simulate { 'simulate' }
    token simulation { 'simulation' }
    token smallest { 'smallest' }
    token step-noun { 'step' }
    token summaries { 'summaries' }
    token summary { 'summary' }
    token table-noun { 'table' }
    token that-pronoun { 'that' }
    token the-determiner { 'the' }
    token them-pronoun { 'them' }
    token this-pronoun { 'this' }
    token time-noun { 'time' }
    token to-preposition { 'to' | 'into' }
    token top-noun { 'top' }
    token transform-verb { 'transform' }
    token use-verb { 'use' | 'utilize' }
    token using-preposition { 'using' | 'with' | 'over' }
    token value-noun { 'value' }
    token values-noun { 'values' }
    token variable-noun { 'variable' }
    token variables-noun { 'variables' }
    token way-noun { 'way' }
    token weight { 'weight' }
    token weights { 'weights' }
    token with-preposition { 'using' | 'with' | 'by' }

    rule creation { 'creation' | 'making' <of-preposition>? }
    rule for-which-phrase { 'for' 'which' | 'that' 'adhere' 'to' }
    rule missing-values-phrase { <missing-adjective> <values-noun>? }
    rule number-of { [ 'number' | 'count' ] 'of' }
    rule simple-way-phrase { 'simple' [ 'way' | 'manner' ] }

    # Data
    rule time-series-data { 'time' 'series' <data-noun>? }
    rule data-frame { <data-noun> <frame-noun> }
    rule data { <data-frame> | <data-noun> | <dataset-noun> | <time-series-data> }

    # Directives
    token classify { 'classify' }
    token compute-directive { 'compute' | 'find' | 'calculate' }
    token create-directive { 'create' | 'make' }
    token delete-directive { 'delete' | 'drop' | 'erase' }
    token diagram { <plot> | 'plots' | 'graph' | 'chart' }
    token display-directive { 'display' | 'show' | 'echo' }
    token generate-directive { 'generate' | 'create' | 'make' }
    token summarize-directive { 'summarize' }

    rule compute-and-display { <compute-directive> [ <and-conjunction> <display-directive> ]? }
    rule load-data-directive { ( 'load' | 'ingest' ) <.the-determiner>? <data> }
    rule plot-directive { <plot> | 'chart' | <display-directive> <diagram> }
    rule use-directive { [ <get-verb> <and-conjunction>? ]? <use-verb> }

}
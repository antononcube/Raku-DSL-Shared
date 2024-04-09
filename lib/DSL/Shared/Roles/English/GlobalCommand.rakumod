use DSL::Shared::Roles::English::CommonSpeechParts;

role DSL::Shared::Roles::English::GlobalCommand {

    rule global-command {
        <global-help> |
        <global-quit> |
        <global-cancel> |
        <global-show-all> |
        <global-priority-list> |
        <global-recover-state> |
        <global-save-state> |
        <global-save-data> |
        <global-repeat-last> }
    
    rule global-help {:i 'help' | <what-pronoun> <to-preposition> [ <do-verb> | 'enter' ] }
    rule global-quit-verb {:i 'quit' | 'exit' | 'halt' }
    rule global-quit {:i <global-quit-verb> <the-determiner>? 'session'? }
    rule global-cancel {:i [ 'start' | 'starting' ] <over-preposition> | 'cancel' 'request'?}
    rule global-show-all {:i <display-directive> [ <all-determiner> | 'full' ] [ <data> | <records-phrase> | <results-noun> | <result-noun> ]? }
    rule global-priority-list-phrase {:i 'priority' [ 'order' | <list-noun> ] | 'order' <by-preposition> 'priority' | 'prioritized' 'list' | 'prioritize' }
    rule global-priority-list {:i <display-directive>? <global-priority-list-phrase> }
    rule global-recover-state {:i [ 'recover' | 'rollback' ] <the-determiner>? <last-adjective>? 'state' }
    rule global-save-state {:i [ 'save' | 'export' ] <the-determiner>? <current-adjective>? 'state' }
    rule global-save-data {:i [ 'save' | 'export' ] <the-determiner>? [ <data-noun> | <records-phrase> ] }
    rule global-repeat-last {:i [ <repeat-verb> | <display-directive> ] <the-determiner>? <last-adjective> [ <result-noun> | <answer-noun> ]? || <repeat-verb> 'it'? }
}
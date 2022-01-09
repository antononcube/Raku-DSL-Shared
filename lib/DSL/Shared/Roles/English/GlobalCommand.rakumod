use DSL::Shared::Roles::English::CommonSpeechParts;

role DSL::Shared::Roles::English::GlobalCommand {

    rule global-command {
        <global-help> |
        <global-quit> |
        <global-cancel> |
        <global-show-all> |
        <global-priority-list> }
    
    rule global-help {:i 'help' | <what-pronoun> <to-preposition> [ <do-verb> | 'enter' ] }
    rule global-quit-verb {:i 'quit' | 'exit' | 'halt' }
    rule global-quit {:i <global-quit-verb> <the-determiner>? 'session'? }
    rule global-cancel {:i [ 'start' | 'starting' ] <over-preposition> | 'cancel' 'request'?}
    rule global-show-all {:i <display-directive> [ <all-determiner> | 'full' ] [ <data> | <records-phrase> | <results> ]? }
    rule global-priority-list-phrase {:i 'priority' [ 'order' | <list-noun> ] | 'order' <by-preposition> 'priority' | 'prioritized' 'list'}
    rule global-priority-list {:i <display-directive>? <global-priority-list-phrase> }
}


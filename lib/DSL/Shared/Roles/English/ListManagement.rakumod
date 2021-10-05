use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::English::PipelineCommand;

role DSL::Shared::Roles::English::ListManagement
        does DSL::Shared::Roles::ErrorHandling
        does DSL::Shared::Roles::English::PipelineCommand {

    rule list-management-command { 
        <list-management-replace-part> |
        <list-management-drop> | 
        <list-management-take> | 
        <list-management-assignment> | 
        <list-management-clear> | 
        <list-management-position-query> | 
        <list-management-position-spec> }
    
    rule list-management-assignment {
        [ <set-directive> <variable-spec> [ <to-preposition> | <as-conjunction> ] <value-spec>] |
        <assign-verb> <value-spec> <to-preposition> <variable-spec> }

    rule list-management-take {[ <take-verb> | <get-verb> ] [ <list-management-position-query> | <list-management-position-spec> ]}

    rule list-management-drop { <delete-directive> [ <list-management-position-query> | <list-management-position-spec> ]}

    rule list-management-replace-part {'replace' <list-management-position-spec> <by-preposition> [ <list-management-position-spec> | [ <the-determiner> ]? <value-spec> ]}

    rule list-management-clear { [ 'clear' | 'empty' ] <list-noun>? | <delete-directive> 'all' [ <list-noun> ]? <elements>? [ <list-phrase> ]? }

    rule variable-spec { <variable-noun>? <variable-name> }
    rule value-spec { <value-noun>? <word-value> }
    rule list-phrase {[ <in-preposition> | <of-preposition> ] <the-determiner> <list-noun>}

    rule position-query-link {
        <.element> <position-index> |
        <.the-determiner>? <position-ordinal>   <.element-phrase>? |
        <.the-determiner>? <position-reference> <.element-phrase>? }

    rule list-management-position-query { [ <position-query-link>+ % [<.in-preposition> | <.of-preposition>] ] [<.in-preposition> | <.of-preposition>] <.the-determiner>? <variable-spec> }

    rule list-management-position-spec { <the-determiner>? <element>? [ <position-index> | <position-word> ] <element-phrase>? <list-phrase>?}
    token position-index { \d+ }
    rule position-word { <position-ordinal> | <position-reference> }
    rule position-reference { 'head' | 'rest' | 'last' | <one-pronoun> 'before' <the-determiner>? 'last' | 'former' | 'latter' }
    rule position-ordinal { <position-ordinal-gen> || <position-ordinal-enum> }
    regex position-ordinal-gen { <position-index> \h* [ 'st' | 'nd' | 'rd' | 'th' ]? }
    rule position-ordinal-enum { 'first'    | 'second'    | 'third'    | 'fourth'    | 'fifth'    | 'sixth'    | 'seventh'    | 'eight'    | 'ninth'    | 'tenth' }

    rule element-phrase {<element> | <one-pronoun>}
}


use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::English::PipelineCommand;
use Lingua::NumericWordForms::Roles::English::WordedNumberSpec;

role DSL::Shared::Roles::English::ListManagementCommand {

    rule list-management-command { 
        <list-management-replace-part> |
        <list-management-drop> | 
        <list-management-take> | 
        <list-management-assignment> | 
        <list-management-clear> | 
        <list-management-position-query> }
    
    rule list-management-assignment {
        [ <.set-directive> <variable-spec> [ <.to-preposition> | <.as-conjunction> ] <value-spec>] |
        <.assign-verb> <value-spec> <.to-preposition> <variable-spec> }

    rule list-management-take {[ <.take-verb> | <.get-verb> ]? [ <list-management-position-query> | <list-management-position-spec> ]}

    rule list-management-drop { <.delete-directive> [ <list-management-position-query> | <list-management-position-spec> ]}

    rule list-management-replace-part {
        'replace' <.the-determiner>? ['position' | 'part']?
        <pos1=.list-management-position-spec> <.by-preposition>
        [ <pos2=.list-management-position-spec> | [ <.the-determiner> ]? <value-spec> ]}

    rule list-management-clear { [ 'clear' | 'empty' ] <list-noun>? | <delete-directive> 'all' [ <list-noun> ]? <elements>? [ <in-preposition> | <of-preposition> ]? <the-determiner>? <list-phrase>? }

    rule variable-spec { <the-list-reference> || <.variable-noun>? <variable-name> }
    rule value-spec { <.value-noun>? [ <word-value> | <number-value> ] }
    rule the-list-reference {<list-phrase>}
    rule list-phrase {<list-noun>}

    rule position-query-link {
        <.element> <position-index> |
        <.the-determiner>? <position-ordinal>   <.element-phrase>? |
        <.the-determiner>? <position-reference> <.element-phrase>? }

    rule list-management-position-query { [ <position-query-link>+ % [<.in-preposition> | <.of-preposition>] ] [<.in-preposition> | <.of-preposition>] <.the-determiner>? <variable-spec> }

    rule list-management-position-spec { <.the-determiner>? <.element>? [ <position-index> | <position-word> ] <.element-phrase>? <.list-phrase>?}
    token position-index { <integer-value> }
    rule position-word { <position-ordinal> | <position-reference> }
    rule position-reference { 'head' | 'rest' | 'last' | <one-pronoun> 'before' <the-determiner>? 'last' | 'former' | 'latter' }
    rule position-ordinal { <position-ordinal-gen> || <position-ordinal-enum> }
    regex position-ordinal-gen { <position-index> \h* [ 'st' | 'nd' | 'rd' | 'th' ]? }
    rule position-ordinal-enum { <numeric-word-form> }

    rule element-phrase {<element> | <one-pronoun>}
}


use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::English::PipelineCommand;
use Lingua::NumericWordForms::Roles::English::WordedNumberSpec;

role DSL::Shared::Roles::English::ListManagementCommand {

    rule list-management-command { 
        <list-management-replace-part> |
        <list-management-drop> | 
        <list-management-take> |
        <list-management-show> |
        <list-management-assignment> | 
        <list-management-clear> | 
        <list-management-position-query> }
    
    rule list-management-assignment {
        [ <.set-directive> <variable-spec> [ <.to-preposition> | <.as-preposition> ] <value-spec>] |
        <.assign-verb> <value-spec> <.to-preposition> <variable-spec> }

    rule list-management-take { [ <.take-verb> | <.get-verb> ]? [ <list-management-position-query> | <list-management-range> | <list-management-position-spec> ] }

    rule list-management-show { <list-management-show-a-take> | <list-management-show-simple> }
    rule list-management-show-simple { <display-directive> [ <it-pronoun> | <the-determiner>? <list-noun> ] }
    rule list-management-show-a-take { <.display-directive> [ <list-management-position-query> | <list-management-range> | <list-management-position-spec> ] }

    # <range-spec>, <r-range-spec>, and <wl-range-spec> are from DSL::Shared::Roles::CommonStructures
    rule list-management-range { <.the-determiner>? <.elements-phrase>? [ <list-management-top-range> | <list-management-bottom-range> | <range-spec> ] }
    rule list-management-top-range    { [ <.top-noun>    | <.first-adjective> ] [ <position-index> | <position-ordinal-enum> ] <.elements-noun>? }
    rule list-management-bottom-range { [ <.bottom-noun> | <.last-adjective>  ] [ <position-index> | <position-ordinal-enum> ] <.elements-noun>? }

    rule list-management-drop { <.delete-directive> [ <list-management-position-query> | <list-management-position-spec> ]}

    rule list-management-replace-part {
        <.replace-verb> <.the-determiner>? [ <.position-noun> | <.part-noun>]?
        <pos1=.list-management-position-spec> <.by-preposition>
        [ <pos2=.list-management-position-spec> | [ <.the-determiner> ]? <value-spec> ]}

    rule list-management-clear { [ <.clear-verb> | <.empty-verb> ] <list-noun>? | <delete-directive> 'all' [ <list-noun> ]? <elements>? [ <in-preposition> | <of-preposition> ]? <the-determiner>? <list-phrase>? }

    rule variable-spec { <the-list-reference> || <.variable-noun>? <variable-name> }
    rule value-spec { <.value-noun>? [ <word-value> | <number-value> ] }
    rule the-list-reference {<list-phrase>}
    rule list-phrase {<list-noun>}

    rule position-query-link {
        <.element-noun> <position-index> |
        <.the-determiner>? <position-ordinal>   <.element-phrase>? |
        <.the-determiner>? <position-reference> <.element-phrase>? }

    rule list-management-position-query { [ <position-query-link>+ % [<.in-preposition> | <.of-preposition>] ] [<.in-preposition> | <.of-preposition>] <.the-determiner>? <variable-spec> }

    rule list-management-position-spec { <.the-determiner>? <.element>? [ <position-index> | <position-word> ] <.element-phrase>? <.list-phrase>?}
    token position-index { <integer-value> }
    rule position-word { <position-ordinal> | <position-reference> }
    rule position-reference { <first-adjective> | <head-adjective> | <rest-noun> | <last-adjective> | <one-pronoun> 'before' <the-determiner>? <last-adjective> | 'former' | 'latter' }
    rule position-ordinal { <position-ordinal-gen> || <position-ordinal-enum> }
    regex position-ordinal-gen { <position-index> \h* [ 'st' | 'nd' | 'rd' | 'th' ]? }
    rule position-ordinal-enum { <numeric-word-form> }

    rule element-phrase { <element> | <one-pronoun> }
    rule elements-phrase { <elements> | <ones-pronoun> }
}


use v6;

# Note that this roles uses the role DSL::Shared::Roles::CommonStructures
# but does explicitly do it. (With 'does'.)

# This role class has common command parts.
role DSL::Shared::Roles::PredicateSpecification {

    # Predicate expression
    rule predicates-list { <predicate>+ % <list-separator> }
    rule predicate { <predicate-sum> }
    rule predicate-sum { <predicate-product>+ % <or-operator> }
    rule predicate-product { <predicate-term>+ % <and-operator> }
    rule predicate-term { <predicate-simple> | <predicate-group> }
    rule predicate-group { '(' <predicate-term> ')' }

    # Simple predicate
    regex predicate-simple { <lhs=predicate-value> <predicate-relation> <rhs=predicate-value> }
    rule predicate-value { <mixed-quoted-variable-name> | <number-value> }
    rule predicate-operator { <logical-connective> | <predicate-relation> }
    rule logical-connective { <and-operator> | <or-operator> }
    token and-operator { 'and' | '&&' | '&' }
    token or-operator { 'or' | '||' | '|' }

    # Predicate relations
    rule predicate-relation {
        <equal-relation> | <not-equal-relation> |
        <less-relation> | <less-equal-relation> |
        <greater-relation> | <greater-equal-relation> |
        <same-relation> | <not-same-relation>
        <in-relation> | <not-in-relation> |
        <like-relation> }

    token equal-relation { '=' | '==' | 'eq' | 'equals' | 'is'? \h* 'equal' \h+ 'to'? | 'is' }
    token not-equal-relation { '!=' | '¬=' | 'neq' | 'is'? \h* 'not' \h+ 'equal' \h+ 'to'? | 'is' \h+ 'not' }
    token less-relation { '<' | 'lt' | 'is'? \h* 'less' \h+ 'than'? }
    token less-equal-relation { '<=' | '≤' | 'lte' | 'less' \h* 'or'? \h* 'equal' \h+ [ 'than' | 'to' ]? }
    token greater-relation { '>' | 'gt' | 'is'? \h* 'greater' \h* 'than'? }
    token greater-equal-relation { '>=' | '≥' | 'gte' | 'is'? \h* 'greater' \h* 'or'? \h* 'equal' \h+ [ 'than' | 'to' ]? }
    token same-relation { '===' | 'same' \h+ 'as'? }
    token not-same-relation { '=!=' | 'is'? \h* 'not' \h+ 'the'? \h* 'same' \h+ 'as'? }
    token in-relation { 'in' | 'belongs' \h+ 'to' }
    token not-in-relation { '!in' | '¬in' | 'is'? \h* 'not' \h+ 'in' | [ 'does' \h+ 'not' | 'doesn\'t' ] 'belong' \h+ 'to' }
    token like-relation { 'is'? \h* [ 'like' | 'similar' \h+ 'to' ] }
}

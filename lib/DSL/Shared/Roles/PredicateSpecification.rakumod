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
    rule predicate-value { <mixed-quoted-variable-name> | <number-value> | <wl-expr> | <regex-pattern-spec> }
    rule predicate-operator { <logical-connective> | <predicate-relation> }
    rule logical-connective { <and-operator> | <or-operator> }

    # Predicate relations
    rule predicate-relation {
        <equal-relation> | <not-equal-relation> |
        <less-relation> | <less-equal-relation> |
        <greater-relation> | <greater-equal-relation> |
        <same-relation> | <not-same-relation> |
        <in-relation> | <not-in-relation> |
        <like-relation> | <like-start-relation> | <like-end-relation> | <like-contains-relation> |
        <match-relation> }

    # Tokens
    proto token and-operator {*}
    token and-operator:sym<English> { :i  'and' | '&&' | '&'  }

    proto token or-operator {*}
    token or-operator:sym<English> { :i  'or' | '||' | '|'  }

    proto token equal-relation {*}
    token equal-relation:sym<English> { :i  '=' | '==' | 'eq' | 'equals' | 'is'? \h* 'equal' \h+ 'to'? | 'is'  }

    proto token not-equal-relation {*}
    token not-equal-relation:sym<English> { :i  '!=' | '¬=' | 'neq' | 'is'? \h* 'not' \h+ 'equal' \h+ 'to'? | 'is' \h+ 'not'  }

    proto token less-relation {*}
    token less-relation:sym<English> { :i  '<' | 'lt' | 'is'? \h* 'less' \h+ 'than'?  }

    proto token less-equal-relation {*}
    token less-equal-relation:sym<English> { :i  '<=' | '≤' | 'lte' | 'less' \h* 'or'? \h* 'equal' \h+ [ 'than' | 'to' ]?  }

    proto token greater-relation {*}
    token greater-relation:sym<English> { :i  '>' | 'gt' | 'is'? \h* 'greater' \h* 'than'?  }

    proto token greater-equal-relation {*}
    token greater-equal-relation:sym<English> { :i  '>=' | '≥' | 'gte' | 'is'? \h* 'greater' \h* 'or'? \h* 'equal' \h+ [ 'than' | 'to' ]?  }

    proto token same-relation {*}
    token same-relation:sym<English> { :i  '===' | 'same' \h+ 'as'?  }

    proto token not-same-relation {*}
    token not-same-relation:sym<English> { :i  '=!=' | 'is'? \h* 'not' \h+ 'the'? \h* 'same' \h+ 'as'?  }

    proto token in-relation {*}
    token in-relation:sym<English> { :i  'in' | 'belongs' \h+ 'to'  }

    proto token not-in-relation {*}
    token not-in-relation:sym<English> { :i  '!in' | '¬in' | 'is'? \h* 'not' \h+ 'in' | [ 'does' \h+ 'not' | 'doesn\'t' ] 'belong' \h+ 'to'  }

    proto token like-relation {*}
    token like-relation:sym<English> { :i  'is'? \h* [ 'like' | 'similar' \h+ 'to' ]  }

    proto token like-start-relation {*}
    token like-start-relation:sym<English> { :i  [ 'starts' | 'start' ] \h+ 'with'  }

    proto token like-end-relation {*}
    token like-end-relation:sym<English> { :i  [ 'ends' | 'end' ] \h+ 'with'  }

    proto token like-contains-relation {*}
    token like-contains-relation:sym<English> { :i 'contains' | 'has' }

    proto token match-relation {*}
    token match-relation:sym<English> { :i  'match' | 'matches' | 'is'? \h+ 'matching'  }
}

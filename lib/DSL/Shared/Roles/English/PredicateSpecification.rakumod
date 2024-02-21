use v6.d;

role DSL::Shared::Roles::English::PredicateSpecification {
    
    # Tokens
    proto token and-operator-phrase {*}
    token and-operator-phrase:sym<English> { :i  'and' | '&&' | '&'  }

    proto token or-operator-phrase {*}
    token or-operator-phrase:sym<English> { :i  'or' | '||' | '|'  }

    proto token equal-relation-phrase {*}
    token equal-relation-phrase:sym<English> { :i  '=' | '==' | 'eq' | 'equals' | 'is'? \h* 'equal' \h+ 'to'? | 'is'  }

    proto token not-equal-relation-phrase {*}
    token not-equal-relation-phrase:sym<English> { :i  '!=' | '¬=' | 'neq' | 'is'? \h* 'not' \h+ 'equal' \h+ 'to'? | 'is' \h+ 'not'  }

    proto token less-relation-phrase {*}
    token less-relation-phrase:sym<English> { :i  '<' | 'lt' | 'is'? \h* 'less' \h+ 'than'?  }

    proto token less-equal-relation-phrase {*}
    token less-equal-relation-phrase:sym<English> { :i  ['is' \h*]? [ '<=' | '≤' | 'lte' | 'less' \h* 'or'? \h* 'equal' ] \h+ [ 'than' | 'to' ]?  }

    proto token greater-relation-phrase {*}
    token greater-relation-phrase:sym<English> { :i  '>' | 'gt' | 'is'? \h* 'greater' \h* 'than'?  }

    proto token greater-equal-relation-phrase {*}
    token greater-equal-relation-phrase:sym<English> { :i  '>=' | '≥' | 'gte' | 'is'? \h* 'greater' \h* 'or'? \h* 'equal' \h+ [ 'than' | 'to' ]?  }

    proto token same-relation-phrase {*}
    token same-relation-phrase:sym<English> { :i  '===' | 'same' \h+ 'as'?  }

    proto token not-same-relation-phrase {*}
    token not-same-relation-phrase:sym<English> { :i  '=!=' | 'is'? \h* 'not' \h+ 'the'? \h* 'same' \h+ 'as'?  }

    proto token in-relation-phrase {*}
    token in-relation-phrase:sym<English> { :i  'in' | '∈' | 'belongs' \h+ 'to'  }

    proto token not-in-relation-phrase {*}
    token not-in-relation-phrase:sym<English> { :i  '!in' | '¬in' | '∉' | 'is'? \h* 'not' \h+ 'in' | [ 'does' \h+ 'not' | 'doesn\'t' ] 'belong' \h+ 'to'  }

    proto token like-relation-phrase {*}
    token like-relation-phrase:sym<English> { :i  'is'? \h* [ 'like' | 'similar' \h+ 'to' ]  }

    proto token like-start-relation-phrase {*}
    token like-start-relation-phrase:sym<English> { :i  [ 'starts' | 'start' ] \h+ 'with'  }

    proto token like-end-relation-phrase {*}
    token like-end-relation-phrase:sym<English> { :i  [ 'ends' | 'end' ] \h+ 'with'  }

    proto token like-contains-relation-phrase {*}
    token like-contains-relation-phrase:sym<English> { :i 'contains' | 'has' }

    proto token match-relation-phrase {*}
    token match-relation-phrase:sym<English> { :i  'match' | 'matches' | 'is'? \h+ 'matching'  }
}

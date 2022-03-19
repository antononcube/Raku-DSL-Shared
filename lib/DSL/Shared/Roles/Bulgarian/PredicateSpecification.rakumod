use v6.d;

role DSL::Shared::Roles::Bulgarian::PredicateSpecification {

    # Tokens
    token and-operator:sym<Bulgarian> { :i  'и' }
    token or-operator:sym<Bulgarian> { :i  'или'  }
    token equal-relation:sym<Bulgarian> { :i  'се' \h+ равнява \h+ на | 'е'? \h* 'равно' \h+ 'на'? | 'е'  }
    token not-equal-relation:sym<Bulgarian> { :i  'не' \h+ 'се' \h+ равнява \h+ на | 'не' \h+ 'е'? \h* 'равно' \h+ 'на'? | 'не' \h+ 'е'  }
    token less-relation:sym<Bulgarian> { :i 'is'? \h* 'по-малко' \h+ 'от'?  }
    token less-equal-relation:sym<Bulgarian> { :i  'по-малко' \h* 'или'? \h* 'равно' \h+ [ 'от' | 'на' ]?  }
    token greater-relation:sym<Bulgarian> { :i  'е'? \h* 'по-голямо' \h* 'от'?  }
    token greater-equal-relation:sym<Bulgarian> { :i  'е'? \h* 'по-голямо' \h* 'или'? \h* 'равно' \h+ [ 'от' | 'на' ]?  }
    token same-relation:sym<Bulgarian> { :i 'е'? \h* 'същото' \h+ 'като'?  }
    token not-same-relation:sym<Bulgarian> { :i   'не' \h* 'е' \h+ 'същото' \h* 'като' }
    token in-relation:sym<Bulgarian> { :i  'в' | 'във' | 'принадлежи' \h+ 'на'  }
    token not-in-relation:sym<Bulgarian> { :i  'не' [ 'е' [ 'в' | 'във' ] ] | 'принадлежи' \h+ 'на'  }
    token like-relation:sym<Bulgarian> { :i  'е'? \h* [ 'подобно' \h+ 'на' ] | 'наподобява' }
    token like-start-relation:sym<Bulgarian> { :i  [ 'стартира' | 'започва' ] \h+ [ 'със' | 'с' ] }
    token like-end-relation:sym<Bulgarian> { :i  [ 'завършва' | 'свършва' ] \h+ [ 'със' | 'с' ]  }
    token like-contains-relation:sym<Bulgarian> { :i 'съдържа' | 'има' }
    token match-relation:sym<Bulgarian> { :i  [ 'се' | 'си' ] ? \h+ [ 'пасва' | 'приляга' ] \h+ [ 'със' | 'с' | 'към' | 'на' ] }
    }

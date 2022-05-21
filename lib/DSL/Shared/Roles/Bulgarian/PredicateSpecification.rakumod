use v6.d;

role DSL::Shared::Roles::Bulgarian::PredicateSpecification {

    # Tokens
    token and-operator-phrase:sym<Bulgarian> { :i  'и' }
    token or-operator-phrase:sym<Bulgarian> { :i  'или'  }
    token equal-relation-phrase:sym<Bulgarian> { :i  'се' \h+ равнява \h+ на | 'е'? \h* 'равно' \h+ 'на'? | 'е'  }
    token not-equal-relation-phrase:sym<Bulgarian> { :i  'не' \h+ 'се' \h+ равнява \h+ на | 'не' \h+ 'е'? \h* 'равно' \h+ 'на'? | 'не' \h+ 'е'  }
    token less-relation-phrase:sym<Bulgarian> { :i 'е'? \h* 'по-малко' [\h+ 'от']?  }
    token less-equal-relation-phrase:sym<Bulgarian> { :i  'по-малко' \h* 'или'? \h* 'равно' \h* [ 'от' | 'на' ]?  }
    token greater-relation-phrase:sym<Bulgarian> { :i  'е'? \h* 'по-голямо' \h* 'от'?  }
    token greater-equal-relation-phrase:sym<Bulgarian> { :i  'е'? \h* 'по-голямо' \h* 'или'? \h* 'равно' \h+ [ 'от' | 'на' ]?  }
    token same-relation-phrase:sym<Bulgarian> { :i 'е'? \h* 'същото' \h+ 'като'? }
    token not-same-relation-phrase:sym<Bulgarian> { :i   'не' \h* 'е' \h+ 'същото' \h* 'като' }
    token in-relation-phrase:sym<Bulgarian> { :i  'в' | 'във' | 'принадлежи' \h+ 'на'  }
    token not-in-relation-phrase:sym<Bulgarian> { :i  'не' \h+ [ 'е' \h+ [ 'в' | 'във' ]  | 'принадлежи' \h+ 'на' ] }
    token like-relation-phrase:sym<Bulgarian> { :i  'е'? \h* [ 'подобно' \h+ 'на' ] | 'наподобява' | 'е' \h+ 'като' }
    token like-start-relation-phrase:sym<Bulgarian> { :i  [ 'стартира' | 'започва' ] \h+ [ 'със' | 'с' ] }
    token like-end-relation-phrase:sym<Bulgarian> { :i  [ 'завършва' | 'свършва' ] \h+ [ 'със' | 'с' ]  }
    token like-contains-relation-phrase:sym<Bulgarian> { :i 'съдържа' | 'има' }
    token match-relation-phrase:sym<Bulgarian> { :i  [ 'се' | 'си' ] ? \h+ [ 'пасва' | 'приляга' | 'прилича' ] \h+ [ 'със' | 'с' | 'към' | 'на' ] }
}

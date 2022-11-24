use v6.d;

role DSL::Shared::Roles::Portuguese::PredicateSpecification {

    # Tokens
    token and-operator-phrase:sym<Portuguese> { :i  'и' }
    token or-operator-phrase:sym<Portuguese> { :i  'ou'  }
    token equal-relation-phrase:sym<Portuguese> { :i  'obter' \h+ равнява \h+ на | 'е'? \h* 'igualmente' \h+ 'em'? | 'е'  }
    token not-equal-relation-phrase:sym<Portuguese> { :i  'não' \h+ 'obter' \h+ равнява \h+ на | 'não' \h+ 'е'? \h* 'igualmente' \h+ 'em'? | 'não' \h+ 'е'  }
    token less-relation-phrase:sym<Portuguese> { :i 'е'? \h* 'по-малко' [\h+ 'a partir de']?  }
    token less-equal-relation-phrase:sym<Portuguese> { :i  'по-малко' \h* 'ou'? \h* 'igualmente' \h* [ 'a partir de' | 'em' ]?  }
    token greater-relation-phrase:sym<Portuguese> { :i  'е'? \h* 'по-голямо' \h* 'a partir de'?  }
    token greater-equal-relation-phrase:sym<Portuguese> { :i  'е'? \h* 'по-голямо' \h* 'ou'? \h* 'igualmente' \h+ [ 'a partir de' | 'em' ]?  }
    token same-relation-phrase:sym<Portuguese> { :i 'е'? \h* 'o mesmo' \h+ 'como'? }
    token not-same-relation-phrase:sym<Portuguese> { :i   'não' \h* 'е' \h+ 'o mesmo' \h* 'como' }
    token in-relation-phrase:sym<Portuguese> { :i  'в' | 'em' | 'pertence a' \h+ 'em'  }
    token not-in-relation-phrase:sym<Portuguese> { :i  'não' \h+ [ 'е' \h+ [ 'в' | 'em' ]  | 'pertence a' \h+ 'em' ] }
    token like-relation-phrase:sym<Portuguese> { :i  'е'? \h* [ 'semelhante a' \h+ 'em' ] | 'assemelha-se a' | 'е' \h+ 'como' }
    token like-start-relation-phrase:sym<Portuguese> { :i  [ 'lançado em' | 'começa em' ] \h+ [ 'com' | 'с' ] }
    token like-end-relation-phrase:sym<Portuguese> { :i  [ 'fim' | 'termina' ] \h+ [ 'com' | 'с' ]  }
    token like-contains-relation-phrase:sym<Portuguese> { :i 'contido em' | 'tem' }
    token match-relation-phrase:sym<Portuguese> { :i  [ 'obter' | 'o seu' ] ? \h+ [ 'encaixa' | 'caber' | 'como' ] \h+ [ 'com' | 'с' | 'para' | 'em' ] }
}

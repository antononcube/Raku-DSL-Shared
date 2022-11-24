use v6.d;

role DSL::Shared::Roles::Portuguese::PredicateSpecification {

    # Tokens
    token and-operator-phrase:sym<Portuguese> { :i  'e' }
    token or-operator-phrase:sym<Portuguese> { :i  'ou'  }
    token equal-relation-phrase:sym<Portuguese> { :i  'obter' \h+ igual \h+ 'a' | 'é'? \h* 'igualmente' \h+ 'em'? | 'é'  }
    token not-equal-relation-phrase:sym<Portuguese> { :i  'não' \h+ 'obter' \h+ 'igual' \h+ 'a' | 'não' \h+ 'é'? \h* 'igualmente' \h+ 'em'? | 'não' \h+ 'é'  }
    token less-relation-phrase:sym<Portuguese> { :i 'é'? \h* [ 'menor' | 'inferior' ] [\h+ 'que' | 'a']?  }
    token less-equal-relation-phrase:sym<Portuguese> { :i  'menor' \h* 'ou'? \h* 'igualmente' \h* [ 'a partir de' | 'em' ]?  }
    token greater-relation-phrase:sym<Portuguese> { :i  'é'? \h* 'superior' \h* [ 'a' | 'de' ]?  }
    token greater-equal-relation-phrase:sym<Portuguese> { :i  'é'? \h* 'superior' \h* 'ou'? \h* 'igualmente' \h+ [ 'a partir de' | 'em' ]?  }
    token same-relation-phrase:sym<Portuguese> { :i 'é'? \h* 'o mesmo' \h+ 'como'? }
    token not-same-relation-phrase:sym<Portuguese> { :i   'não' \h* 'é' \h+ 'o mesmo' \h* 'como' }
    token in-relation-phrase:sym<Portuguese> { :i  'в' | 'em' | 'pertence a' \h+ 'em'  }
    token not-in-relation-phrase:sym<Portuguese> { :i  'não' \h+ [ 'é' \h+ [ 'в' | 'em' ]  | 'pertence a' \h+ 'em' ] }
    token like-relation-phrase:sym<Portuguese> { :i  'é'? \h* [ 'semelhante a' \h+ 'em' ] | 'assemelha-se a' | 'é' \h+ 'como' }
    token like-start-relation-phrase:sym<Portuguese> { :i  [ 'lançado em' | 'começa em' ] \h+ [ 'com' | 'с' ] }
    token like-end-relation-phrase:sym<Portuguese> { :i  [ 'fim' | 'termina' ] \h+ [ 'com' | 'с' ]  }
    token like-contains-relation-phrase:sym<Portuguese> { :i 'contido em' | 'tem' }
    token match-relation-phrase:sym<Portuguese> { :i  [ 'obter' | 'o seu' ] ? \h+ [ 'encaixa' | 'caber' | 'como' ] \h+ [ 'com' | 'с' | 'para' | 'em' ] }
}

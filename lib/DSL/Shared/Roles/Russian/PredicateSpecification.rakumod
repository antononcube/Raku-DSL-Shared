use v6.d;

role DSL::Shared::Roles::Russian::PredicateSpecification {

    # Tokens
    token and-operator-phrase:sym<Russian> { :i  'и' }
    token or-operator-phrase:sym<Russian> { :i  'или'  }
    token equal-relation-phrase:sym<Russian> { :i  'есть'? \h* [ 'равно' | 'равняется' ] \h+ 'на'? | 'есть'  }
    token not-equal-relation-phrase:sym<Russian> { :i  'не' \h+ [ 'равно' | 'равняется' ] \h+ 'на'? | 'не' \h+ 'есть'  }
    token less-relation-phrase:sym<Russian> { :i 'есть'? \h* 'меньше' [\h+ 'от']?  }
    token less-equal-relation-phrase:sym<Russian> { :i  'меньше' \h* 'или'? \h* 'равно' \h* [ 'чем' | 'на' ]?  }
    token greater-relation-phrase:sym<Russian> { :i  'есть'? \h* 'больше' \h* 'чем'?  }
    token greater-equal-relation-phrase:sym<Russian> { :i  'есть'? \h* 'больше' \h* 'или'? \h* 'равно' \h+ [ 'чем' | 'на' ]?  }
    token same-relation-phrase:sym<Russian> { :i 'есть'? \h* 'то' \h+ 'же' \h+ 'самое' \h+ 'как'? }
    token not-same-relation-phrase:sym<Russian> { :i   'не' \h+ 'есть'? \h* 'то' \h+ 'же' \h+ 'самое' \h+ 'как'?  }
    token in-relation-phrase:sym<Russian> { :i  'в' | 'във' | 'принадлежить' \h+ 'на'  }
    token not-in-relation-phrase:sym<Russian> { :i  'не' \h+ [ 'е' \h+ [ 'в' | 'във' ]  | 'принадлежи' \h+ 'на' ] }
    token like-relation-phrase:sym<Russian> { :i  'есть'? \h* [ 'похоже' | 'напоминает' ] \h+ 'на' | 'есть' \h+ 'как' }
    token like-start-relation-phrase:sym<Russian> { :i  [ 'начинает' | 'започва' ] \h+ 'с'  }
    token like-end-relation-phrase:sym<Russian> { :i  [ 'закончивает' | 'кончаеться' ] \h+ 'с'  }
    token like-contains-relation-phrase:sym<Russian> { :i 'содержить' | 'има' }
    token match-relation-phrase:sym<Russian> { :i  [ 'подходит' | 'соответствует' | 'похоже' ] [ \h* [ 'к' | 'на' ] ]? }
}

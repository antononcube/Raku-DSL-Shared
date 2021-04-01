use v6;

role DSL::Shared::Roles::English::RudimentaryUserOnboarding {
    
    rule user-onboarding-command {
       [ <i-am-user-onboarding-command> | <my-attribute-is-onboarding-command> ]+ % <.list-separator>
    }

    rule i-am-user-onboarding-command {
        <.i-user-onboarding-word> <.am-user-onboarding-word> <user-attribute-spec>
    }

    rule my-attribute-is-onboarding-command {
        <.my-user-onboarding-word> [
           <.race-user-onboarding-word>   <.is-user-onboarding-word> <user-race-spec> |
           <.name-user-onboarding-word>   <.is-user-onboarding-word> <user-name-spec> |
           <.weight-user-onboarding-word> <.is-user-onboarding-word> <user-weight-spec> |
           <.age-user-onboarding-word>    <.is-user-onboarding-word> <user-age-spec> ]
    }

    rule user-attribute-spec {
        <user-age-spec>     |
        <user-weight-spec>  |
        <user-race-spec>    |
        <user-bio-sex-spec> |
        <user-name-spec>
    }

    ##-------------------------------------------------------
    rule user-race-spec {
        <african-user-onboarding-word> <american-user-onboarding-word>    |
        <asian-user-onboarding-word>    |
        <black-user-onboarding-word>    |
        <caucasian-user-onboarding-word>    |
        <native-user-onboarding-word> <american-user-onboarding-word>    |
        <white-user-onboarding-word>
    }

    ##-------------------------------------------------------
    regex user-name-spec { <user-name-word>+ % \h+ }
    token user-name-word { (<.alpha>+) <?{ $0.Str ne 'and' }> }

    ##-------------------------------------------------------
    rule user-age-spec { <human-age-spec> <.human-age-pos-phrase>? }
    token human-age-spec { (\d+) <?{ 0 <= $0.Str.Num <= 110 }> }
    rule human-age-pos-phrase { <years-user-onboarding-word> <old-user-onboarding-word> }

    ##-------------------------------------------------------
    rule user-weight-spec { <human-weight-spec> <user-weight-unit-spec> }
    token human-weight-spec { (\d+) <?{ 5 <= $0.Str.Num <= 450 }> }
    token user-weight-unit-spec { 'pounds' | 'lbs' | 'kilograms' | 'kg' }

    ##-------------------------------------------------------
    token user-bio-sex-spec { 'male' | 'female' }

    ##-------------------------------------------------------
    token african-user-onboarding-word { 'african' }
    token age-user-onboarding-word { 'age' }
    token am-user-onboarding-word { 'am' }
    token american-user-onboarding-word { 'american' }
    token asian-user-onboarding-word { 'asian' }
    token black-user-onboarding-word { 'black' }
    token caucasian-user-onboarding-word { 'caucasian' }
    token female-user-onboarding-word { 'female' }
    token i-user-onboarding-word { 'i' }
    token is-user-onboarding-word { 'is' }
    token kilograms-user-onboarding-word { 'kilograms' }
    token my-user-onboarding-word { 'my' }
    token name-user-onboarding-word { 'name' }
    token native-user-onboarding-word { 'native' }
    token nina-user-onboarding-word { 'nina' }
    token old-user-onboarding-word { 'old' }
    token pounds-user-onboarding-word { 'pounds' }
    token race-user-onboarding-word { 'race' }
    token weight-user-onboarding-word { 'weight' }
    token white-user-onboarding-word { 'white' }
    token years-user-onboarding-word { 'years' }

}

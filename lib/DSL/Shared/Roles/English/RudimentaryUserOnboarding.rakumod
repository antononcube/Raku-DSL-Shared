use v6;

use DSL::Shared::Utilities::FuzzyMatching;

role DSL::Shared::Roles::English::RudimentaryUserOnboarding {
    
    rule user-onboarding-command {
        [ <i-am-user-onboarding-command> | <my-attribute-is-onboarding-command> ]+ % <.list-separator>
    }

    rule i-am-user-onboarding-command {
        <.i-user-onboarding-word> <.am-user-onboarding-word> <user-attribute-spec>
    }

    rule my-attribute-is-onboarding-command {
        <.my-user-onboarding-word> [
           <.age-user-onboarding-word>    <.is-user-onboarding-word> <user-age-spec>    ||
           <.weight-user-onboarding-word> <.is-user-onboarding-word> <user-weight-spec> ||
           <.race-user-onboarding-word>   <.is-user-onboarding-word> <user-race-spec>   ||
           <.name-user-onboarding-word>   <.is-user-onboarding-word> <user-name-spec> ]
    }

    rule user-attribute-spec {
        <user-age-spec>     ||
        <user-weight-spec>  ||
        <user-race-spec>    ||
        <user-bio-sex-spec> ||
        <user-name-spec>
    }

    ##-------------------------------------------------------
    rule user-race-spec {
        <african-user-onboarding-word> <american-user-onboarding-word> |
        <african-user-onboarding-word>  |
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
    rule human-age-spec { <human-age-num-spec> || <numeric-word-form> }
    token human-age-num-spec { (\d+) <?{ 0 <= $0.Str.Num <= 110 }> }
    rule human-age-pos-phrase { <years-user-onboarding-word> <old-user-onboarding-word> }

    ##-------------------------------------------------------
    rule user-weight-spec { <human-weight-spec> <user-weight-unit-spec> }
    rule human-weight-spec { <human-weight-num-spec> || <numeric-word-form> }
    token human-weight-num-spec { (\d+) <?{ 5 <= $0.Str.Num <= 450 }> }
    token user-weight-unit-spec { :i 'pounds' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'pounds') }> | 'lbs' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'lbs') }> | 'kilograms' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'kilograms') }> | 'kg' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'kg') }> }

    ##-------------------------------------------------------
    token user-bio-sex-spec { :i 'male' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'male') }> | 'female' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'female') }> }

    ##-------------------------------------------------------
    token african-user-onboarding-word { :i 'african' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'african') }> }
    token age-user-onboarding-word { :i 'age' }
    token am-user-onboarding-word { :i 'am' }
    token american-user-onboarding-word { :i 'american' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'american') }> }
    token asian-user-onboarding-word { :i 'asian' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'asian') }> }
    token black-user-onboarding-word { :i 'black' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'black') }> }
    token caucasian-user-onboarding-word { :i 'caucasian' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'caucasian') }> }
    token female-user-onboarding-word { :i 'female' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'female') }> }
    token i-user-onboarding-word { :i 'i' }
    token is-user-onboarding-word { :i 'is' }
    token kilograms-user-onboarding-word { :i 'kilograms' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'kilograms') }> }
    token my-user-onboarding-word { :i 'my' }
    token name-user-onboarding-word { :i 'name' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'name', 1) }> }
    token native-user-onboarding-word { :i 'native' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'native') }> }
    token nina-user-onboarding-word { :i 'nina' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'nina') }> }
    token old-user-onboarding-word { :i 'old' }
    token pounds-user-onboarding-word { :i 'pounds' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'pounds') }> }
    token race-user-onboarding-word { :i 'race' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'race', 1) }> }
    token weight-user-onboarding-word { :i 'weight' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'weight') }> }
    token white-user-onboarding-word { :i 'white' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'white') }> }
    token years-user-onboarding-word { :i 'years' | ([\w]+) <?{ is-fuzzy-match( $0.Str, 'years') }> }

}


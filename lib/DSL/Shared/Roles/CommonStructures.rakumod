use v6;

# There is a small dependency on  DSL::Shared::Roles::English::CommonSpeechParts that can be easily removed:
# <from-preposition> <to-preposition> <with-preposition> <step-noun>

# This role class has common command (data, code) structure parts.
role DSL::Shared::Roles::CommonStructures {

    token dataset-name { ([ \w | '_' | '-' | '.' | \d ]+) <!{ $0 eq 'and' }> }
    token variable-name { ([ \w | '_' | '-' | '.' | \d ]+) <!{ $0 eq 'and' }> }
    token date-spec { [ \d ** 4 ] '-' [ \d ** 2 ] '-' [ \d ** 2 ] }

    # Quoted variable name
    token quoted-variable-name { <variable-name> | <single-quoted-variable-name> | <double-quoted-variable-name> }

    token single-quote-symbol { '\'' }

    token double-quote-symbol { '"' }

    token single-quoted-variable-name {
        <.single-quote-symbol>
        <variable-name>
        <.single-quote-symbol>
    }
    token double-quoted-variable-name {
        <.double-quote-symbol>
        <variable-name>
        <.double-quote-symbol>
    }

    # Value types
    token number-value { (\d+ ['.' \d*]?  [ [e|E] \d+]?) }
    token integer-value { \d+ }
    token percent { '%' | 'percent' }
    token percent-value { <number-value> <.percent> }
    token boolean-value { 'True' | 'False' | 'true' | 'false' | 'TRUE' | 'FALSE' }

    # Lists of things
    token list-separator-symbol { ',' | '&' | 'and' | ',' \h* 'and' }
    token list-separator { <.ws>? <list-separator-symbol> <.ws>? }

    # Number list
    rule number-value-list { <number-value>+ % <list-separator>? }

    # Variable names list
    rule variable-names-list { <variable-name>+ % <list-separator> }
    rule quoted-variable-names-list { <quoted-variable-name>+ % <list-separator> }

    # Range spec
    rule range-spec { <range-spec-from> <range-spec-to> <range-spec-step>? }
    rule range-spec-from { <.from-preposition> <number-value> }
    rule range-spec-to { <.to-preposition> <number-value> }
    rule range-spec-step { <.range-spec-step-phrase> <number-value> }
    rule range-spec-step-phrase { <with-preposition>? <step-noun> | <with-preposition> }

    # Programming languages ranges
    rule wl-range-spec { [ 'Range' '[' | 'Range[' ] <number-value-list> ']' }
    rule r-range-spec { [ 'seq' '(' | 'seq(' ] <number-value-list> ')' }
    rule wl-numeric-list-spec { '{' <number-value-list> '}' }
    rule r-numeric-list-spec { [ [ 'c' | 'list' ] '(' | 'c(' | 'list(' ] <number-value-list> ')' }

    # Operators
    token key-to-symbol { '->' }
    token equal-symbol { '=' }
    token equal2-symbol { '==' }
    token assign-to-symbol { '=' | ':=' | '<-' }

    # Expressions
    token wl-expr { '`' <-[`]>+ '`' }
    token code-expr { '`' \w+ \h+ <-[`]>+ '`' }
}
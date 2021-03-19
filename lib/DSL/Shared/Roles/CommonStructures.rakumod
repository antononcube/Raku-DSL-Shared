use v6;

# There is a small dependency on  DSL::Shared::Roles::English::CommonSpeechParts that can be easily removed:
# <from-preposition> <to-preposition> <with-preposition> <step-noun>

# This role class has common command (data, code) structure parts.
role DSL::Shared::Roles::CommonStructures {

    # Date spec
    token date-spec { [ \d ** 4 ] '-' [ \d ** 2 ] '-' [ \d ** 2 ] }

    # Variable names
    token raku-module-name { [ <.alnum> | '-' | ':' ]+ }
    token variable-ws-name { [ <.alnum> | '-' | '.' | ':' | \h ]+ }
    regex variable-name { <.alnum> [ <.alnum> | '-' | '.' ]* <.alnum> | <.alnum> }
    token quoted-variable-name { <single-quoted-variable-name> | <double-quoted-variable-name> }
    token mixed-quoted-variable-name { <variable-name> | <quoted-variable-name> }

    token single-quote-symbol { '\'' }

    token double-quote-symbol { '"' }

    token single-quoted-variable-name {
        <.single-quote-symbol>
        <variable-ws-name>
        <.single-quote-symbol>
    }
    token double-quoted-variable-name {
        <.double-quote-symbol>
        <variable-ws-name>
        <.double-quote-symbol>
    }

    # Keyword-variable name
    token keyword-variable-name-separator { ':' }
    token keyword-variable-name { <variable-name> <keyword-variable-name-separator> <variable-name> }
    token quoted-keyword-variable-name { <single-quoted-keyword-variable-name> | <double-quoted-keyword-variable-name> }
    token mixed-quoted-keyword-variable-name { <keyword-variable-name> | <quoted-keyword-variable-name> }

    token single-quoted-keyword-variable-name {
        <.single-quote-symbol>
        <keyword-variable-name>
        <.single-quote-symbol>
    }
    token double-quoted-keyword-variable-name {
        <.double-quote-symbol>
        <keyword-variable-name>
        <.double-quote-symbol>
    }

    # Common programming languages tokens
    token dataset-name  { <variable-name> }

    # Regex
    regex regex-pattern { .* }
    regex regex-pattern-spec { [ 'rx/' | '/' ] <regex-pattern> '/' }

    # Value types
    token number-value { (\d+ ['.' \d*]?  [ [e|E] \d+]?) }
    token integer-value { \d+ }
    token percent { '%' | 'percent' }
    token percent-value { <number-value> \h* <.percent> }
    token boolean-value { 'True' | 'False' | 'true' | 'false' | 'TRUE' | 'FALSE' }
    token word-value { <.alnum> [ <.alnum> | '-' ]* }
    token letter-word-value { \w [ \w | '-' ]* }

    # Lists of things
    token list-separator-symbol { ',' | '&' | 'and' | ',' \h* 'and' }
    token list-separator { <.ws>? <list-separator-symbol> <.ws>? }

    # Number list
    rule number-value-list { <number-value>+ % <list-separator>? }

    # Variable names list
    rule variable-names-list { <variable-name>+ % <list-separator> }
    rule quoted-variable-names-list { <quoted-variable-name>+ % <list-separator> }
    rule mixed-quoted-variable-names-list { <mixed-quoted-variable-name>+ % <list-separator> }
    rule quoted-keyword-variable-names-list { <quoted-keyword-variable-name>+ % <list-separator> }
    rule mixed-quoted-keyword-variable-names-list { <mixed-quoted-keyword-variable-name>+ % <list-separator> }

    # Range spec
    rule range-spec { <range-spec-from> <range-spec-to> <range-spec-step>? }
    rule range-spec-from { <.from-preposition> <number-value> }
    rule range-spec-to { <.to-preposition> <number-value> }
    rule range-spec-step { <.range-spec-step-phrase> <number-value> }
    rule range-spec-step-phrase { <with-preposition>? <step-noun> | <with-preposition> }

    # Programming languages ranges
    rule r-range-spec { [ 'seq' '(' | 'seq(' ] <number-value-list> ')' }
    rule wl-range-spec { [ 'Range' '[' | 'Range[' ] <number-value-list> ']' }
    rule r-numeric-list-spec { [ [ 'c' | 'list' ] '(' | 'c(' | 'list(' ] <number-value-list> ')' }
    rule wl-numeric-list-spec { '{' <number-value-list> '}' }

    # Span spec
    rule span-spec     { <from=.range-spec-from> <to=.range-spec-to> }
    token r-span-spec  { <from=.number-value> \h* ':'  \h* <to=.number-value> }
    token wl-span-spec { <from=.number-value> \h* ';;' \h* <to=.number-value> }

    # Operators
    token key-to-symbol { '->' }
    token equal-symbol { '=' }
    token equal2-symbol { '==' }
    token assign-to-symbol { '=' | ':=' | '<-' }

    # Expressions
    token wl-expr { '`' <-[`]>+ '`' }
    token code-expr { '`' \w+ \h+ <-[`]>+ '`' }

    # Expression combinations
    rule variable-name-or-wl-expr { <variable-name> | <wl-expr> }
    rule variable-name-or-wl-expr-list { <variable-name-or-wl-expr>+ % <list-separator> }
    rule mixed-quoted-variable-name-or-wl-expr { <mixed-quoted-variable-name> | <wl-expr> }
    rule mixed-quoted-variable-name-or-wl-expr-list { <mixed-quoted-variable-name-or-wl-expr>+ % <list-separator> }
}
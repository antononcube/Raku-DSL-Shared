use v6.d;

# Note that this roles uses the role DSL::Shared::Roles::CommonStructures
# but does explicitly do it. (With 'does'.)

# This role class has common command parts.
role DSL::Shared::Roles::PredicateSpecification {

    token predicate-list-separator-symbol { ',' | ';' }
    token predicate-list-separator { <.ws>? <predicate-list-separator-symbol> <.ws>? }

    # Predicate expression
    rule predicates-list { <predicate>+ % <predicate-list-separator> }
    rule predicate { <predicate-sum> }
    rule predicate-sum { <predicate-product>+ % <or-operator> }
    rule predicate-product { <predicate-term>+ % <and-operator> }
    rule predicate-term { <predicate-simple> | <predicate-group> }
    rule predicate-group { '(' <predicate-term> ')' }

    # Simple predicate
    regex predicate-simple { <lhs=predicate-value> <predicate-relation> <rhs=predicate-value> }
    rule predicate-value { <mixed-quoted-variable-name> | <number-value> | <wl-expr> | <regex-pattern-spec> }
    rule predicate-operator { <logical-connective> | <predicate-relation> }
    rule logical-connective { <and-operator> | <or-operator> }

    # Predicate relations
    rule predicate-relation {
        <equal-relation> | <not-equal-relation> |
        <less-relation> | <less-equal-relation> |
        <greater-relation> | <greater-equal-relation> |
        <same-relation> | <not-same-relation> |
        <in-relation> | <not-in-relation> |
        <like-relation> | <like-start-relation> | <like-end-relation> | <like-contains-relation> |
        <match-relation> }

    # Tokens
    token and-operator { <and-operator-phrase> }
    token or-operator { <or-operator-phrase> }
    token equal-relation{ <equal-relation-phrase> }
    token not-equal-relation { <not-equal-relation-phrase> }
    token less-relation  { <less-relation-phrase> }
    token less-equal-relation  { <less-equal-relation-phrase> }
    token greater-relation  { <greater-relation-phrase> }
    token greater-equal-relation  { <greater-equal-relation-phrase> }
    token same-relation  { <same-relation-phrase> }
    token not-same-relation  { <not-same-relation-phrase> }
    token in-relation  { <in-relation-phrase> }
    token not-in-relation  { <not-in-relation-phrase> }
    token like-relation  { <like-relation-phrase> }
    token like-start-relation  { <like-start-relation-phrase> }
    token like-end-relation  { <like-end-relation-phrase> }
    token like-contains-relation  { <like-contains-relation-phrase> }
    token match-relation  { <match-relation-phrase> }
}


use v6;

use DSL::Shared::Roles::PredicateSpecification;
use DSL::Shared::Actions::Raku::CommonStructures;

unit module DSL::Shared::Actions::Raku::PredicateSpecification;

class DSL::Shared::Actions::Raku::PredicateSpecification
        is DSL::Shared::Actions::Raku::CommonStructures {

  # Predicates
  method predicates-list($/) { make $<predicate>>>.made.join(', '); }
  method predicate($/) { make $/.values>>.made.join(' '); }
  method predicate-sum($/) { make $<predicate-product>>>.made.join(' or '); }
  method predicate-product($/) { make $<predicate-term>>>.made.join(' and '); }
  method predicate-term($/) { make $/.values[0].made; }
  method predicate-group($/) { make '(' ~ $/<predicate-term>.made ~ ')'; }

  method predicate-simple($/) {
    my Str $objCol = self.double-quote-if-not-already($<lhs>.made);
    if $<predicate-relation>.made eq 'like' {
      make $objCol ~ ' ~~ ' ~ $<rhs>.made;
    } elsif $<predicate-relation>.made eq 'like-start' {
      make $objCol ~ ' ~~ rx/ ' ~ $<rhs>.made ~ ' . * /';
    } elsif $<predicate-relation>.made eq 'like-end' {
      make $objCol ~ ' ~~ rx/ . * ' ~ $<rhs>.made ~ ' /';
    } elsif $<predicate-relation>.made eq 'match' {
      make $objCol ~ ' ~~ ' ~ $<rhs>.made;
    } else {
      make '$_{' ~ $objCol ~ '} ' ~ $<predicate-relation>.made ~ ' ' ~ $<rhs>.made;
    }
  }
  method logical-connective($/) { make $/.values[0].made; }
  method and-operator($/) { make 'and'; }
  method or-operator($/) { make 'or'; }
  method predicate-symbol($/) { make $/.Str; }
  method predicate-value($/) { make $/.values[0].made; }
  method predicate-relation($/) { make $/.values[0].made; }
  method equal-relation($/) { make 'eq'; }
  method not-equal-relation($/) { make '!eq'; }
  method less-relation($/) { make '<'; }
  method less-equal-relation($/) { make '<='; }
  method greater-relation($/) { make '>'; }
  method greater-equal-relation($/) { make '>='; }
  method same-relation($/) { make '=='; }
  method not-same-relation($/) { make '!='; }
  method in-relation($/) { make '(elem)'; }
  method not-in-relation($/) { make '!(elem)'; }
  method like-relation($/) { make '~~'; }
  method like-start-relation($/) { make 'like-start'; }
  method like-end-relation($/) { make 'like-end'; }
  method match-relation($/) { make 'match'; }

}


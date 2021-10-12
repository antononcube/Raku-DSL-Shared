
use v6;

use DSL::Shared::Roles::PredicateSpecification;
use DSL::Shared::Actions::WL::CommonStructures;

unit module DSL::Shared::Actions::WL::PredicateSpecification;

class DSL::Shared::Actions::WL::PredicateSpecification
        is DSL::Shared::Actions::WL::CommonStructures {

  # Predicates
  method predicates-list($/) { make $<predicate>>>.made.join(', '); }
  method predicate($/) { make $/.values>>.made.join(' '); }
  method predicate-sum($/) { make $<predicate-product>>>.made.join(' || '); }
  method predicate-product($/) { make $<predicate-term>>>.made.join(' && '); }
  method predicate-term($/) { make $/.values[0].made; }
  method predicate-group($/) { make '(' ~ $/<predicate-term>.made ~ ')'; }

  method predicate-simple($/) {
    my Str $objCol = self.double-quote-if-not-already($<lhs>.made);
    if $<predicate-relation>.made eq 'like' {
      make 'StringMatchQ[ #[' ~ $objCol ~ '], ' ~ $<rhs>.made ~ ']';
    } elsif $<predicate-relation>.made eq 'like-start' {
      make 'StringMatchQ[ #[' ~ $objCol ~ '], ' ~ $<rhs>.made ~ ' ~~ ___ ]';
    } elsif $<predicate-relation>.made eq 'like-end' {
      make 'StringMatchQ[ #[' ~ $objCol ~ '], ___ ~~ ' ~ $<rhs>.made ~ ']';
    } elsif $<predicate-relation>.made eq 'match' {
      make 'MatchQ[ #[' ~ $objCol ~ '], ' ~ $<rhs>.made ~ ']';
    } else {
      make '#[' ~ $objCol ~ '] ' ~ $<predicate-relation>.made ~ ' ' ~ $<rhs>.made;
    }
  }
  method logical-connective($/) { make $/.values[0].made; }
  method and-operator($/) { make '&&'; }
  method or-operator($/) { make '||'; }
  method predicate-symbol($/) { make $/.Str; }
  method predicate-value($/) { make $/.values[0].made; }
  method predicate-relation($/) { make $/.values[0].made; }
  method equal-relation($/) { make '=='; }
  method not-equal-relation($/) { make '!='; }
  method less-relation($/) { make '<'; }
  method less-equal-relation($/) { make '<='; }
  method greater-relation($/) { make '>'; }
  method greater-equal-relation($/) { make '>='; }
  method same-relation($/) { make '=='; }
  method not-same-relation($/) { make '!='; }
  method in-relation($/) { make '\[Element]'; }
  method not-in-relation($/) { make '\[NotElement]'; }
  method like-relation($/) { make 'like'; }
  method like-start-relation($/) { make 'like-start'; }
  method like-end-relation($/) { make 'like-end'; }
  method match-relation($/) { make 'match'; }

}


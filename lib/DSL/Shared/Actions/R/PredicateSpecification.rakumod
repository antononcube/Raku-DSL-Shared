
use v6.d;

use DSL::Shared::Roles::PredicateSpecification;
use DSL::Shared::Actions::R::CommonStructures;

class DSL::Shared::Actions::R::PredicateSpecification
        is  DSL::Shared::Actions::R::CommonStructures {

  # Predicates
  method predicates-list($/) { make $<predicate>>>.made.join(', '); }
  method predicate($/) { make $/.values>>.made.join(' '); }
  method predicate-sum($/) { make $<predicate-product>>>.made.join(' | '); }
  method predicate-product($/) { make $<predicate-term>>>.made.join(' & '); }
  method predicate-term($/) { make $/.values[0].made; }
  method predicate-group($/) { make '(' ~ $/<predicate-term>.made ~ ')'; }

  method predicate-simple($/) {
    if $<predicate-relation>.made eq '%!in%' {
      make '!(' ~ $<lhs>.made ~ ' %in% ' ~ $<rhs>.made ~ ')';
    } elsif $<predicate-relation>.made eq 'like' {
      with $<rhs><regex-pattern-spec> {
        make 'grepl( pattern = ' ~ $<rhs>.made ~ ', x = ' ~ $<lhs>.made ~ ')';
      } else {
        make 'grepl( pattern = ' ~ $<rhs>.made.subst(/^\"/, '".*').subst(/\"$/, '.*"') ~ ', x = ' ~ $<lhs>.made ~ ')';
      }
    } elsif $<predicate-relation>.made eq 'like-start' {
      make 'grepl( pattern = ' ~ $<rhs>.made.subst( /^\"/, '"^' ) ~ ', x = ' ~ $<lhs>.made ~ ')';
    } elsif $<predicate-relation>.made eq 'like-end' {
      make 'grepl( pattern = ' ~ $<rhs>.made.subst( /\"$/, '$"' ) ~ ', x = ' ~ $<lhs>.made ~ ')';
    } elsif $<predicate-relation>.made eq 'like-contains' {
      make 'grepl( pattern = ' ~ $<rhs>.made ~ ', x = ' ~ $<lhs>.made ~ ')';
    } else {
      make $<lhs>.made ~ ' ' ~ $<predicate-relation>.made ~ ' ' ~ $<rhs>.made;
    }
  }
  method logical-connective($/) { make $/.values[0].made; }
  method and-operator($/) { make '&'; }
  method or-operator($/) { make '|'; }
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
  method in-relation($/) { make '%in%'; }
  method not-in-relation($/) { make '%!in%'; }
  method like-relation($/) { make 'like'; }
  method like-start-relation($/) { make 'like-start'; }
  method like-end-relation($/) { make 'like-end'; }
  method like-contains-relation($/) { make 'like-contains'; }
  method match-relation($/) { make 'match'; }

}


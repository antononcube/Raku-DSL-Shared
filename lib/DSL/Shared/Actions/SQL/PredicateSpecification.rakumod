use v6.d;

use DSL::Shared::Roles::PredicateSpecification;
use DSL::Shared::Actions::SQL::CommonStructures;

class DSL::Shared::Actions::SQL::PredicateSpecification
        is  DSL::Shared::Actions::SQL::CommonStructures {

  # Predicates
  method predicates-list($/) { make $<predicate>>>.made.join(', '); }
  method predicate($/) { make $/.values>>.made.join(' '); }
  method predicate-sum($/) { make $<predicate-product>>>.made.join(' | '); }
  method predicate-product($/) { make $<predicate-term>>>.made.join(' & '); }
  method predicate-term($/) { make $/.values[0].made; }
  method predicate-group($/) { make '(' ~ $/<predicate-term>.made ~ ')'; }

  method predicate-simple($/) {
    if $<predicate-relation>.made eq '%!in%' {
      make '(' ~ $<lhs>.made ~ ' NOT IN ' ~ $<rhs>.made ~ ')';
    } elsif $<predicate-relation>.made eq 'like' {
      with $<rhs><regex-pattern-spec> {
          make $<lhs>.made ~ ' LIKE ' ~ $<rhs>.made;
      } else {
          make "{$<lhs>.made} LIKE \"{$<rhs>.made}%\"";
      }
    } elsif $<predicate-relation>.made eq 'like-start' {
        make "{$<lhs>.made} LIKE \"{$<rhs>.made}%\"";
    } elsif $<predicate-relation>.made eq 'like-end' {
        make "{$<lhs>.made} LIKE \"%{$<rhs>.made}\"";
    } elsif $<predicate-relation>.made eq 'like-contains' {
        make "{$<lhs>.made} LIKE \"%{$<rhs>.made}%\"";
    } else {
      make "{$<lhs>.made} {$<predicate-relation>.made} {$<rhs>.made}";
    }
  }
  method logical-connective($/) { make $/.values[0].made; }
  method and-operator($/) { make 'AND'; }
  method or-operator($/) { make 'OR'; }
  method predicate-symbol($/) { make $/.Str; }
  method predicate-value($/) { make $/.values[0].made; }
  method predicate-relation($/) { make $/.values[0].made; }
  method equal-relation($/) { make '='; }
  method not-equal-relation($/) { make '!='; }
  method less-relation($/) { make '<'; }
  method less-equal-relation($/) { make '<='; }
  method greater-relation($/) { make '>'; }
  method greater-equal-relation($/) { make '>='; }
  method same-relation($/) { make '='; }
  method not-same-relation($/) { make '!='; }
  method in-relation($/) { make 'IN'; }
  method not-in-relation($/) { make 'NOT IT'; }
  method like-relation($/) { make 'like'; }
  method like-start-relation($/) { make 'like-start'; }
  method like-end-relation($/) { make 'like-end'; }
  method like-contains-relation($/) { make 'like-contains'; }
  method match-relation($/) { make 'match'; }

}


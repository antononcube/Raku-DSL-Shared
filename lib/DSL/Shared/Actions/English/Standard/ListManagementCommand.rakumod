
role DSL::Shared::Actions::English::Standard::ListManagementCommand {

    method TOP($/) { make $/.values[0].made; }

    method list-management-command($/) { make $/.values[0].made; }

    method list-management-assignment($/) { $<variable-spec>.made ~ ' = ' ~ $<value-spec>.made; }

    method list-management-take-expr($/) {
        if $<list-management-range> {
            $<list-management-range>.made;
        } elsif $<list-management-position-query> {
            $<list-management-position-query>.made;
        } else {
            'take the element at position ' ~ $/.values[0].made;
        }
    }

    method list-management-take($/) {
        make self.list-management-take-expr($/)
    }

    method list-management-show($/) { make $/.values[0].made; }
    method list-management-show-simple($/) { make 'show the object'; }
    method list-management-show-a-take($/) {
        my $res = self.list-management-take-expr($/);
        make $res.subst('obj <-', 'show ');
    }

    method list-management-range($/) { make $/.values[0].made; }
    method list-management-top-range($/) {
        make 'take the first ' ~ $/.values[0].made ~ ' elements';
    }
    method list-management-bottom-range($/) {
        make 'tale tje last ' ~ $/.values[0].made ~ ' elements';
    }
    method range-spec($/) {
        if $<range-spec-step> {
            make 'take elements from ' ~ $<range-spec-from>.made ~ ' to ' ~ $<range-spec-to>.made ~ ' with step ' ~ $<range-spec-step>.made;
        } else {
            make 'take elements from ' ~ $<range-spec-from>.made ~ ' to ' ~ $<range-spec-to>.made;
        }
    }

    method list-management-drop($/) { make 'drop the element at position ' ~ $/.values[0].made; }

    method list-management-replace-part($/) {
        my $valPart = $<pos2> ?? $<pos2>.made !! $<value-spec>.made;
        make 'obj[' ~ $<pos1>.made ~ '] <- ' ~ $valPart;
    }

    method list-management-clear($/) { make 'empty the object'; }

    method variable-spec($/) { make $/.values[0].made; }
    method value-spec($/) { make $/.values[0].made; }
    method the-list-reference($/) { make 'obj'; }

    method position-query-link($/) { make $/.values[0].made; }

    method list-management-position-query($/) {
        my Str $res = $<variable-spec>.made;
        for $<position-query-link>».made.reverse -> $p {
            $res = $res ~ '[' ~ $p ~ ']'
        }
        make $res;
    }

    method list-management-position-spec($/) { make $/.values[0].made; }
    method position-index($/) { make $/.values[0].made; }
    method position-word($/) { make $/.values[0].made; }
    method position-reference($/) {
        my Str $t = $/.Str.trim.lc;
        my $res =
                do given $t {
                    when $_ (elem) <first head> { 'first' }
                    when $_ (elem) <rest tail> { 'tail' }
                    when 'former' { 'former' }
                    when 'latter' { 'latter' }
                    when 'last' { 'last' }
                    default { note "problem with $t"; $t }
                };
        make $res;
    }
    method position-ordinal($/) { make $/.values[0].made; }
    method position-ordinal-gen($/) { make $/.values[0].made; }
    method position-ordinal-enum($/) { make $<numeric-word-form>.made }

}

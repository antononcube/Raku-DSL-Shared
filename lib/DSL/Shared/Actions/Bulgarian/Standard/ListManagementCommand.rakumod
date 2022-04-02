

role DSL::Shared::Actions::Bulgarian::Standard::ListManagementCommand {

    method TOP($/) { make $/.values[0].made; }

    method list-management-command($/) { make $/.values[0].made; }

    method list-management-assignment($/) { $<variable-spec>.made ~ ' = ' ~ $<value-spec>.made; }

    method list-management-take-expr($/) {
        if $<list-management-range> {
            $<list-management-range>.made;
        } elsif $<list-management-position-query> {
            $<list-management-position-query>.made;
        } else {
            'вземи ' ~ $/.values[0].made ~ '-я елемент от обекта';
        }
    }

    method list-management-take($/) {
        make self.list-management-take-expr($/)
    }

    method list-management-show($/) { make $/.values[0].made; }
    method list-management-show-simple($/) { make 'покажи обекта'; }
    method list-management-show-a-take($/) {
        my $res = self.list-management-take-expr($/);
        make $res.subst('obj <-', 'покажи ');
    }

    method list-management-range($/) { make $/.values[0].made; }
    method list-management-top-range($/) {
        make 'вземи първите ' ~ $/.values[0].made ~ ' елемента';
    }
    method list-management-bottom-range($/) {
        make 'вземи последните ' ~ $/.values[0].made ~ ' елемента';
    }
    method range-spec($/) {
        if $<range-spec-step> {
            make 'вземи елементите от ' ~ $<range-spec-from>.made ~ ' до ' ~ $<range-spec-to>.made ~ ' със стъпка ' ~ $<range-spec-step>.made;
        } else {
            make 'вземи елементите от ' ~ $<range-spec-from>.made ~ ' до ' ~ $<range-spec-to>.made;
        }
    }

    method list-management-drop($/) { make 'изхвърли ' ~ $/.values[0].made ~ ' елемент'; }

    method list-management-replace-part($/) {
        my $valPart = $<pos2> ?? $<pos2>.made !! $<value-spec>.made;
        make 'замени елемента ' ~ $<pos1>.made ~ ' с ' ~ $valPart;
    }

    method list-management-clear($/) { make 'изпразни обекта'; }

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
                    when $_ (elem) <first head> { 'първи' }
                    when $_ (elem) <rest tail> { 'опашка' }
                    when 'former' { 'предния' }
                    when 'latter' { 'предишния' }
                    when 'last' { 'последния' }
                    default { note "problem with $t"; $t }
                };
        make $res;
    }
    method position-ordinal($/) { make $/.values[0].made; }
    method position-ordinal-gen($/) { make $/.values[0].made; }
    method position-ordinal-enum($/) { make $<numeric-word-form>.made }

}

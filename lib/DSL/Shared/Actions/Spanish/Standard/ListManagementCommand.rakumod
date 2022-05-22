

role DSL::Shared::Actions::Spanish::Standard::ListManagementCommand {

    method TOP($/) { make $/.values[0].made; }

    method list-management-command($/) { make $/.values[0].made; }

    method list-management-assignment($/) { 'asignar al objeto ' ~ $<variable-spec>.made ~ ' el valor ' ~ $<value-spec>.made; }

    method list-management-take-expr($/) {
        if $<list-management-range> {
            $<list-management-range>.made;
        } elsif $<list-management-position-query> {
            $<list-management-position-query>.made;
        } else {
            'tomar el elemento ' ~ $/.values[0].made ~ '-ésimo del objeto';
        }
    }

    method list-management-take($/) {
        make self.list-management-take-expr($/)
    }

    method list-management-show($/) { make $/.values[0].made; }
    method list-management-show-simple($/) { make 'mostrar el objeto'; }
    method list-management-show-a-take($/) {
        my $res = self.list-management-take-expr($/);
        make $res.subst('obj <-', 'mostrar ');
    }

    method list-management-range($/) { make $/.values[0].made; }
    method list-management-top-range($/) {
        make 'tomar los primeros ' ~ $/.values[0].made ~ ' elementos';
    }
    method list-management-bottom-range($/) {
        make 'tomar los últimos ' ~ $/.values[0].made ~ ' elementos';
    }
    method range-spec($/) {
        if $<range-spec-step> {
            make 'tomar los elementos de ' ~ $<range-spec-from>.made ~ ' a ' ~ $<range-spec-to>.made ~ ' con el paso ' ~ $<range-spec-step>.made;
        } else {
            make 'tomar los elementos de ' ~ $<range-spec-from>.made ~ ' a ' ~ $<range-spec-to>.made;
        }
    }

    method list-management-drop($/) { make 'dejar el ' ~ $/.values[0].made ~ ' elemento'; }

    method list-management-replace-part($/) {
        my $valPart = $<pos2> ?? $<pos2>.made !! $<value-spec>.made;
        make 'sustituye el ' ~ $<pos1>.made ~ ' elemento por ' ~ $valPart;
    }

    method list-management-clear($/) { make 'borrar el objeto'; }

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
                    when $_ (elem) <first head> { 'primero' }
                    when $_ (elem) <rest tail> { 'descanso' }
                    when 'former' { 'antiguo' }
                    when 'latter' { 'este último' }
                    when 'last' { 'último' }
                    default { note "problem with $t"; $t }
                };
        make $res;
    }
    method position-ordinal($/) { make $/.values[0].made; }
    method position-ordinal-gen($/) { make $/.values[0].made; }
    method position-ordinal-enum($/) { make $<numeric-word-form>.made }

}

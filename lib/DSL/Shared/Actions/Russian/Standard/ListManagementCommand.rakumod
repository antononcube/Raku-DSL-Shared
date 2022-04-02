

role DSL::Shared::Actions::Russian::Standard::ListManagementCommand {

    method TOP($/) { make $/.values[0].made; }

    method list-management-command($/) { make $/.values[0].made; }

    method list-management-assignment($/) { $<variable-spec>.made ~ ' = ' ~ $<value-spec>.made; }

    method list-management-take-expr($/) {
        if $<list-management-range> {
            $<list-management-range>.made;
        } elsif $<list-management-position-query> {
            $<list-management-position-query>.made;
        } else {
            'взять ' ~ $/.values[0].made ~ '-й элемент объекта';
        }
    }

    method list-management-take($/) {
        make self.list-management-take-expr($/)
    }

    method list-management-show($/) { make $/.values[0].made; }
    method list-management-show-simple($/) { make 'показать объект'; }
    method list-management-show-a-take($/) {
        my $res = self.list-management-take-expr($/);
        make $res.subst('obj <-', 'показать ');
    }

    method list-management-range($/) { make $/.values[0].made; }
    method list-management-top-range($/) {
        make 'взять первые ' ~ $/.values[0].made ~ ' элемента';
    }
    method list-management-bottom-range($/) {
        make 'взять последние ' ~ $/.values[0].made ~ ' элемента';
    }
    method range-spec($/) {
        if $<range-spec-step> {
            make 'взять элементы с ' ~ $<range-spec-from>.made ~ ' по ' ~ $<range-spec-to>.made ~ ' с шагом ' ~ $<range-spec-step>.made;
        } else {
            make 'вземи элементы с ' ~ $<range-spec-from>.made ~ ' по ' ~ $<range-spec-to>.made;
        }
    }

    method list-management-drop($/) { make 'отбросить ' ~ $/.values[0].made ~ ' элемент'; }

    method list-management-replace-part($/) {
        my $valPart = $<pos2> ?? $<pos2>.made !! $<value-spec>.made;
        make 'заменить ' ~ $<pos1>.made ~ ' элемент с ' ~ $valPart;
    }

    method list-management-clear($/) { make 'очистить объект'; }

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
                    when $_ (elem) <first head> { 'первый' }
                    when $_ (elem) <rest tail> { 'хвост' }
                    when 'former' { 'передний' }
                    when 'latter' { 'предыдущий' }
                    when 'last' { 'последний' }
                    default { note "problem with $t"; $t }
                };
        make $res;
    }
    method position-ordinal($/) { make $/.values[0].made; }
    method position-ordinal-gen($/) { make $/.values[0].made; }
    method position-ordinal-enum($/) { make $<numeric-word-form>.made }

}

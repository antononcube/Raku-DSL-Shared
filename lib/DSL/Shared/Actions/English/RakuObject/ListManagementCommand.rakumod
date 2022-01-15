# Arguably this actions class is not needed since we can use EVAL and
#  DSL::Shared::Actions::English::Raku::ListManagementCommand .
# Nevertheless, this class was implemented for exemplification and explanation purposes.

use DSL::Shared::Actions::English::Raku::ListManagementCommand;

class DSL::Shared::Actions::English::RakuObject::ListManagementCommand
        is DSL::Shared::Actions::English::Raku::ListManagementCommand {

    has $.object is rw;

    method TOP($/) { make $/.values[0].made; }

    method list-management-command($/) { make $/.values[0].made; }

    method list-management-assignment($/) {
        warn 'Not implemented.';
        make $!object;
    }

    method list-management-take($/) {
        if $<list-management-range> {
            make $<list-management-range>.made
        } elsif $<list-management-position-query> {
            make $<list-management-position-query>.made;
        } else {
            my $p = $/.values[0].made;
            if $p - 1 < $!object.elems {
                $!object = $!object[$p - 1]
            } else {
                warn "<list-management-take>: The specification $p is out of range."
            }
            make $!object;
        }
    }

    method list-management-range($/) { make $/.values[0].made; }
    method list-management-top-range($/) {
        $!object = $!object.head( $/.values[0].made );
        make $!object;
    }
    method list-management-bottom-range($/) {
        $!object = $!object.tail( $/.values[0].made );
        make $!object;
    }

    method list-management-drop($/) {
        my $p = $/.values[0].made;
        if $p - 1 < $!object.elems {
            $!object = $!object.splice( $p - 1, 1 )
        } else {
            warn "<list-management-drop>: The specification $p is out of range."
        }
        make $!object;
    }

    method list-management-replace-part($/) {
        my $valPart = $<pos2> ?? $<pos2>.made !! $<value-spec>.made;
        $!object[ $<pos1>.made - 1 ] = $valPart;
        make $!object;
    }

    method list-management-clear($/) {
        $!object = ();
        make $!object;
    }

    method variable-spec($/) { make $/.values[0].made; }
    method value-spec($/) { make $/.values[0].made; }
    method the-list-reference($/) { make $!object; }

    method position-query-link($/) { make $/.values[0].made; }

    method list-management-position-query($/) {
        for $<position-query-link>».made.reverse -> $p {
            if $p - 1 < $!object.elems {
                $!object = $!object[$p - 1]
            } else {
                warn "<list-management-position-query>: The specification $p is out of range."
            }
       }
        make $!object;
    }

    method list-management-position-spec($/) { make $/.values[0].made; }
    method position-index($/) { make $/.values[0].made.Int; }
    method position-word($/) { make $/.values[0].made; }
    method position-reference($/) {
        my Str $t = $/.Str.trim.lc;
        my $res =
                do given $t {
                    when $_ (elem) <first head> { 1 }
                    when $_ (elem) <rest tail> { 2 .. $!object.elems }
                    when 'former' { 1 }
                    when 'latter' { 2 }
                    when 'last' { $!object.elems }
                    default { note "problem with $t"; $t }
                };
        make $res;
    }
    method position-ordinal($/) { make $/.values[0].made.Int; }
    method position-ordinal-gen($/) { make $/.values[0].made; }
    method position-ordinal-enum($/) { make $<numeric-word-form>.made }

}
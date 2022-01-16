
unit module DSL::Shared::Actions::English::Raku::ListManagementCommand;

use Lingua::NumericWordForms::Actions::English::WordedNumberSpec;
use DSL::Shared::Actions::English::Raku::PipelineCommand;

class DSL::Shared::Actions::English::Raku::ListManagementCommand
        is DSL::Shared::Actions::English::Raku::PipelineCommand {

    method TOP($/) { make $/.values[0].made; }

    method list-management-command($/) { make $/.values[0].made; }

    method list-management-assignment($/) { $<variable-spec>.made ~ ' = ' ~ $<value-spec>.made; }

    method list-management-take($/) {
        if $<list-management-range> {
            make $<list-management-range>.made;
        } elsif $<list-management-position-query> {
            make $<list-management-position-query>.made;
        } else {
            make '$obj = $obj[' ~ $/.values[0].made ~ '-1]';
        }
    }

    method list-management-range($/) { make $/.values[0].made; }
    method list-management-top-range($/) {
        make '$obj = $obj.head(' ~ $/.values[0].made ~ ')';
    }
    method list-management-bottom-range($/) {
        make '$obj = $obj.tail(' ~ $/.values[0].made ~ ')';
    }
    method range-spec($/) {
        if $<range-spec-step> {
            make '$obj = $obj[ (' ~ $<range-spec-from>.made ~ ' - 1), (' ~ $<range-spec-from>.made ~ ' + ' ~ $<range-spec-step>.made ~ ' - 1) ... (' ~ $<range-spec-to>.made ~ ' - 1) ]'
        } else {
            make '$obj = $obj[ (' ~ $<range-spec-from>.made ~ ' - 1) ... (' ~ $<range-spec-to>.made ~ ' - 1 ) ]'
        }
    }

    method list-management-drop($/) { make '$obj.splice(' ~ $/.values[0].made ~ ', 1)'; }

    method list-management-replace-part($/) {
        my $valPart = $<pos2> ?? $<pos2>.made !! $<value-spec>.made;
        make '$obj[' ~ $<pos1>.made ~ '-1] = ' ~ $valPart;
    }

    method list-management-clear($/) { make '$obj = ()'; }

    method variable-spec($/) { make $/.values[0].made; }
    method value-spec($/) { make $/.values[0].made; }
    method the-list-reference($/) { make '$obj'; }

    method position-query-link($/) { make $/.values[0].made; }

    method list-management-position-query($/) {
        my Str $res = $<variable-spec>.made;
        for $<position-query-link>».made.reverse -> $p {
            $res = $res ~ '[' ~ $p ~ '-1]'
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
                    when $_ (elem) <first head> { '1' }
                    when $_ (elem) <rest tail> { '2..*' }
                    when 'former' { '1' }
                    when 'latter' { '2' }
                    when 'last' { '*' }
                    default { note "problem with $t"; $t }
                };
        make $res;
    }
    method position-ordinal($/) { make $/.values[0].made; }
    method position-ordinal-gen($/) { make $/.values[0].made; }
    method position-ordinal-enum($/) { make $<numeric-word-form>.made }

}
use v6.d;

use Lingua::NumericWordForms::Actions::English::WordedNumberSpec;
use DSL::Shared::Actions::English::PipelineCommand;

class DSL::Shared::Actions::English::WL::ListManagementCommand
        is DSL::Shared::Actions::English::PipelineCommand {

    method TOP($/) { make $/.values[0].made; }

    method list-management-command($/) { make $/.values[0].made; }

    method list-management-assignment($/) { $<variable-spec>.made ~ ' = ' ~ $<value-spec>.made; }

    method list-management-take-expr($/) {
        if $<list-management-range> {
            $<list-management-range>.made;
        } elsif $<list-management-position-query> {
            $<list-management-position-query>.made;
        } else {
            'obj = Take[obj, {' ~ $/.values[0].made ~ '}]';
        }
    }

    method list-management-take($/) {
        make self.list-management-take-expr($/);
    }

    method list-management-show($/) { make $/.values[0].made; }
    method list-management-show-simple($/) { make 'Print[obj]'; }
    method list-management-show-a-take($/) {
        my $res = self.list-management-take-expr($/);
        make $res.subst('obj =', 'Print[') ~ ']';
    }

    method list-management-range($/) { make $/.values[0].made; }
    method list-management-top-range($/) {
        make 'obj = obj[1;;' ~ $/.values[0].made ~ ']';
    }
    method list-management-bottom-range($/) {
        make 'obj = obj[' ~ $/.values[0].made ~ ';;-1]';
    }
    method range-spec($/) {
        if $<range-spec-step> {
            make 'obj = obj[Range[' ~ $<range-spec-from>.made ~ ', ' ~ $<range-spec-to>.made ~ ', ' ~ $<range-spec-step>.made ~ ']]'
        } else {
            make 'obj = obj[' ~ $<range-spec-from>.made ~ ';;' ~ $<range-spec-to>.made ~ ']'
        }
    }
    
    method list-management-drop($/) { make 'obj = Drop[obj, {' ~ $/.values[0].made ~ '}]'; }

    method list-management-replace-part($/) {
        my $valPart = $<pos2> ?? $<pos2>.made !! $<value-spec>.made;
        make 'obj = ReplacePart[obj, ' ~ $<pos1>.made ~ '->' ~ $valPart ~ ']';
    }

    method list-management-clear($/) { make 'obj = {}'; }

    method variable-spec($/) { make $/.values[0].made; }
    method value-spec($/) { make $/.values[0].made; }
    method the-list-reference($/) { make 'obj'; }

    method position-query-link($/) { make $/.values[0].made; }

    method list-management-position-query($/) {
        my Str $res =  $<variable-spec>.made;
        for $<position-query-link>».made.reverse -> $p {
            $res = $res ~ '[[' ~ $p ~ ']]'
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
                    when 'head' { '1' }
                    when $_ (elem) <rest tail> { '2;;-1' }
                    when 'former' { '1' }
                    when 'latter' { '2' }
                    when 'last' { '-1' }
                    default { note "problem with $t"; $t }
                };
        make $res;
    }
    method position-ordinal($/) { make $/.values[0].made; }
    method position-ordinal-gen($/) { make $/.values[0].made; }
    method position-ordinal-enum($/) { make $<numeric-word-form>.made }

}
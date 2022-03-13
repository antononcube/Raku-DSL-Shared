use v6.d;

unit module DSL::Shared::Utilities::DeterminedWordsMatching;

#============================================================
# Determiner matching
#============================================================
proto is-determined-word(Str $lang, Str $word, Str $candidate, :$gender = Whatever, :$plurality = Whatever --> Bool) is export {*}

multi is-determined-word('Bulgarian', Str $word, Str $candidate, :$gender is copy = Whatever, :$plurality is copy = Whatever --> Bool) {

    #| Process input options
    $gender = $gender.isa(Whatever) ?? 'any' !! $gender;
    die 'The argument $gender is expected to be one of: Whatever, \'female\', \'male\', \'neutral\', or \'any\'.'
    when not ($gender.isa(Str) and $gender.lc (elem) <male female neutral any>);

    $plurality = $plurality.isa(Whatever) ?? 'any' !! $plurality;
    die 'The argument $plurality is expected to be one of: Whatever, \'single\', \'plural\', \'any\'.'
    when not ($plurality.isa(Str) and $plurality.lc (elem) <single plural any>);

    $gender = $gender.lc;
    $plurality = $plurality.lc;

    #| Make determiner-suffix rules
    my %suffixes =
            male => { single => <а я ът ят>, plural => ('те',) },
            female => { single => ('та', ), plural => ('те',) },
            neutral => { single => ('то', ), plural => ('те',) };

    %suffixes<any> = %();

    for <male female neutral> -> $g {
        %suffixes{$g}<any> = unique((|%suffixes{$g}<single>, |%suffixes{$g}<plural>)).List;
    }

    for <single plural any> -> $p {
        %suffixes<any>{$p} = unique((|%suffixes<male>{$p}, |%suffixes<female>{$p}, |%suffixes<neutral>{$p})).List;
    }

    my $suffixPattern = %suffixes{$gender}{$plurality}.join(' | ');


    #| Determine is it determined
    if so $candidate.match(/ ^^ <{$word}> <{$suffixPattern}> $$ /) {
        return True;
    }
    return False;
}
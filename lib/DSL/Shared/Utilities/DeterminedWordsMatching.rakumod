use v6.d;

use DSL::Shared::Utilities::FuzzyMatching;

unit module DSL::Shared::Utilities::DeterminedWordsMatching;

# See the definition at bottom of the file.
my %determinerSuffixes;

#============================================================
# Determiner matching
#============================================================
proto is-determined-word(Str $lang, Str $candidate, Str $actual, :$gender = Whatever, :$plurality = Whatever --> Bool) is export {*}

multi is-determined-word(Str $lang, Str $candidate, Str $actual is copy,
                         :$gender is copy = Whatever,
                         :$plurality is copy = Whatever --> Bool) {

    #| Process input options
    $gender = $gender.isa(Whatever) ?? 'any' !! $gender;
    die 'The argument $gender is expected to be one of: Whatever, \'female\', \'male\', \'neutral\', or \'any\'.'
    when not ($gender.isa(Str) and $gender.lc (elem) <male female neutral any>);

    $plurality = $plurality.isa(Whatever) ?? 'any' !! $plurality;
    die 'The argument $plurality is expected to be one of: Whatever, \'single\', \'plural\', \'any\'.'
    when not ($plurality.isa(Str) and $plurality.lc (elem) <single plural any>);

    $gender = $gender.lc;
    $plurality = $plurality.lc;

    # my $suffixPattern = %determinerSuffixes{$gender}{$plurality}.join(' | ');
    my @suffixes = |%determinerSuffixes{$lang}{$gender}{$plurality};
    my @actuals = @suffixes.map({ $actual ~ $_});

    #| Determine is it determined
    if $candidate (elem) @actuals {
        return True;
    }
    return False;
}

#============================================================
# Bulgarian fuzzy matching
#============================================================
proto is-bg-fuzzy-match($c, $a, $maxDist = 2) is export {*};

multi is-bg-fuzzy-match(Str $candidate, Str $actual, UInt $maxDist = 2) {
    return is-determined-word('Bulgarian', $candidate, $actual) || is-fuzzy-match($candidate, $actual, $maxDist);
}

#============================================================
# Russian fuzzy matching
#============================================================
proto is-ru-fuzzy-match($c, $a, $maxDist = 2) is export {*};

multi is-ru-fuzzy-match(Str $candidate, Str $actual, UInt $maxDist = 2) {
    return is-determined-word('Russian', $candidate, $actual) || is-fuzzy-match($candidate, $actual, $maxDist);
}

#============================================================
# Determiner suffixes
#============================================================
%determinerSuffixes = BEGIN {

    # Bulgarian
    #| Make determiner-suffix rules
    my %suffixesBG =
            male => { single => <а я ът ят ия ият>, plural => ('те',) },
            female => { single => ('та',), plural => ('те',) },
            neutral => { single => ('то',), plural => ('те',) };

    %suffixesBG<any> = %();

    for <male female neutral> -> $g {
        %suffixesBG{$g}<any> = unique((|%suffixesBG{$g}<single>, |%suffixesBG{$g}<plural>)).List;
    }

    for <single plural any> -> $p {
        %suffixesBG<any>{$p} = unique((|%suffixesBG<male>{$p}, |%suffixesBG<female>{$p}, |%suffixesBG<neutral>{$p})).List;
    }

    # Russian
    # TBD ...
    my %suffixesRU = %suffixesBG;

    # All languages
    my %suffixes = Bulgarian => %suffixesBG, Russian => %suffixesRU;

    %suffixes
}
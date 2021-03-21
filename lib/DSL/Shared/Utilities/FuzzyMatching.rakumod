use v6;

use Text::Levenshtein::Damerau;

unit module DSL::Shared::Utilities::FuzzyMatching;

#============================================================
# Core fuzzy match functions
#============================================================

# All edits that are one edit from `word`
sub edits1(Str $word) {
    my @letters = 'a' .. 'z';
    my @splits = (|($word.substr(0 .. $_ - 1), $word.substr($_)) for 0 .. $word.chars);
    my @deletes = do for @splits -> $L, $R { if $R { $L ~ $R.substr(1) } };
    my @transposes = do for @splits -> $L, $R { if $R.chars > 1 { $L ~ $R.substr(1, 1) ~ $R.substr(0, 0) ~ $R
            .substr(2) } }
    my @replaces = do for @splits -> $L, $R { @letters.map: { $L ~ $_ ~ $R.substr(1) } if $R }
    my @inserts = do for @splits -> $L, $R { @letters.map: { $L ~ $_ ~ $R } }
    return (gather (@deletes, @transposes, @replaces, @inserts).deepmap: *.take).unique;
}

# All edits that are two edits from `word`
sub edits2(Str $word) {
    return (for edits1($word) -> $e1 { $_ for edits1($e1) })
}

# Generate possible spelling corrections for word
sub edit-candidates(Str $word) is export {
    edits1($word) || edits2($word) || ($word,);
}


#============================================================
# Fuzzy match checks
#============================================================

proto is-fuzzy-match($c, $a) is export {*};

multi is-fuzzy-match(Str $candidate, @actuals) {

    my %dists = map({ $_ => dld($candidate, $_) }, @actuals);

    my $distPair = %dists.min({ $_.value });

    if 0 == $distPair.value {
        return True;
    } elsif 0 < $distPair.value and $distPair.value <= 2 {
        my %dists2 = grep({ $_.value eq $distPair.value }, %dists);
        if %dists2.elems == 1 {
            warn "Possible misspelling of '{$distPair.key}' as '$candidate'.";
        } else {
            warn "Possible misspelling of one of { map( { '\'' ~ $_ ~ '\'' }, %dists2.keys ).join(', ') } as '$candidate'.";
        }
        return True;
    }

    return False;
}

multi is-fuzzy-match(Str $candidate, Str $actual) {
    my $dist = dld($candidate, $actual);

    if 0 == $dist {
        return True;
    } elsif 0 < $dist and $dist <= 2 {
        warn "Possible misspelling of '$actual' as '$candidate'.";
        return True;
    }

    return False;
}

#multi is-fuzzy-match( Str $candidate, Str $actual ) {
#    if $actual.chars < 5 {
#        return dld( $candidate, $actual ) <= 2;
#    } elsif edit-candidates($actual).contains($candidate) {
#        say "Possible misspelling of '$actual' as '$candidate'.";
#        return True;
#    }
#    return False;
#}

#============================================================
# Pick fuzzy match(es)
#============================================================
# TBD...


sub known-string-candidates(Set $knownStrings, Str:D $candidate) is export {

    my @res;
    for edit-candidates($candidate) -> $var {
        if $var (elem) $knownStrings {
            @res.append($var)
        }
    }
    if @res.elems == 0 { Nil } else { @res }

}

sub known-string(Set $knownStrings, Str:D $candidate, Bool :$bool = True, Bool :$warn = True) is export {

    if $candidate (elem) $knownStrings {
        if $bool { return True } else { return $candidate }
    } else {
        for edit-candidates($candidate) -> $var {
            if $var (elem) $knownStrings {
                if $warn { warn "Possible misspelling of '$var' as '$candidate'."; }
                if $bool { return True } else { return $var }
            }
        }
    }
    if $bool { False } else { Nil }
}

sub known-phrase( Set $knownPhrases, Set $knownStrings, Str:D $phrase, Bool :$bool = True, Bool :$warn = True) is export {

    ## First test
    my Bool $res = known-string($knownPhrases, $phrase, :bool, :$warn);

    if $res {
        if $bool { return True } else { return $phrase }
    }

    ## Split the phrase into words
    my @words = $phrase.split(/\s+/);

    ## If one word then fail
    if @words.elems == 1 {
        if $bool { return False } else { return Nil }
    }

    ## Get known job title words
    my @candidates = do for @words -> $w {
        my $ws = known-string-candidates($knownStrings, $w);
        if !$ws {
            if $bool { return False } else { return Nil }
        }
        $ws
    }

    ## Cross product of known words
    @candidates = ([X] @candidates).map(*.join(' '));

    ## Find if any of the cross product candidates is known
    for @candidates -> $c {
        $res = known-string($knownPhrases, $c, :bool, :!warn);
        if $res {
            if $warn { warn "Possible misspelling of '$c' as '$phrase'."; }
            if $bool { return True } else { return $c }
        }
    }

    ## Final result
    if $bool { return False } else { return Nil }
}

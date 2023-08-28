use v6;

use Text::Levenshtein::Damerau;

unit module DSL::Shared::Utilities::FuzzyMatching;

#============================================================
# Core fuzzy match functions
#============================================================

my %savedEdits;

sub get-saved-edits() is export { %savedEdits }

# All edits that are one edit from `word`
sub edits1(Str $word) {

    if %savedEdits{$word}:exists { return %savedEdits{$word}.Seq; }

    my @letters = 'a' .. 'z';
    my @splits = (|($word.substr(^$_), $word.substr($_)) for 0 .. $word.chars);
    my @deletes = do for @splits -> $L, $R { if $R { $L ~ $R.substr(1) } };
    my @transposes = do for @splits -> $L, $R { if $R.chars > 1 { $L ~ $R.substr(1, 1) ~ $R.substr(0, 0) ~ $R.substr(2) } }
    my @replaces = do for @splits -> $L, $R { @letters.map: { $L ~ $_ ~ $R.substr(1) } if $R }
    my @inserts = do for @splits -> $L, $R { @letters.map: { $L ~ $_ ~ $R } }
    my @res = (gather (@deletes, @transposes, @replaces, @inserts).deepmap: *.take).unique;

    %savedEdits{$word} = @res;

    return @res.Seq;
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

proto is-fuzzy-match($c, $a, $maxDist = 2) is export {*};

multi is-fuzzy-match(Str $candidate, @actuals, UInt $maxDist = 2) {

    if $maxDist == 0 {
        return $candidate ∈ @actuals;
    }

    my %dists = map({ $_ => dld($candidate, $_) }, @actuals);

    my $distPair = %dists.min({ $_.value });

    if 0 == $distPair.value {
        return True;
    } elsif 0 < $distPair.value and $distPair.value <= $maxDist {
        my %dists2 = grep({ $_.value eq $distPair.value }, %dists);
        if %dists2.elems == 1 {
            note "Possible misspelling of '{ $distPair.key }' as '$candidate'.";
        } else {
            note "Possible misspelling of one of { map({ '\'' ~ $_ ~ '\'' }, %dists2.keys).join(', ') } as '$candidate'.";
        }
        return True;
    }

    return False;
}

multi is-fuzzy-match(Str $candidate, Str $actual, UInt $maxDist = 2) {

    if $maxDist == 0 {
        return $candidate eq $actual;
    }

    my $dist = dld($candidate, $actual);

    if 0 == $dist {
        return True;
    } elsif 0 < $dist and $dist <= $maxDist {
        note "Possible misspelling of '$actual' as '$candidate'.";
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

#============================================================
# Known strings and phrases
#============================================================

multi sub known-string-candidates(Set $knownStrings, Str:D $candidate, UInt :$maxDist = 2) is export {

    my @res;
    my @candidates = $maxDist < 2 ?? edits1($candidate) !! edit-candidates($candidate);
    for @candidates  -> $var {
        if $var (elem) $knownStrings {
            @res.append($var)
        }
    }

    @res.elems == 0 ?? Nil !! @res

}

multi sub known-string(Set $knownStrings,
                       Str:D $candidate,
                       Bool :$bool = True,
                       Bool :$warn = True,
                       UInt :$maxDist = 2) is export {

    if $candidate (elem) $knownStrings {
        return $bool ?? True !! $candidate;
    } elsif $maxDist == 0 {
        return $bool ?? False !! Nil;
    } else {
        my @candidates = $maxDist < 2 ?? edits1($candidate) !! edit-candidates($candidate);
        for @candidates -> $var {
            if $var (elem) $knownStrings {
                if $warn { note "Possible misspelling of '$var' as '$candidate'."; }
                if $bool { return True } else { return $var }
            }
        }
    }

    $bool ?? False !! Nil
}

multi sub known-phrase(Set $knownPhrases,
                       Set $knownStrings,
                       Str:D $phrase, Bool
                       :$bool = True,
                       Bool :$warn = True,
                       UInt :$maxDist = 2) is export {

    ## First test
    my Str $res = known-string($knownPhrases, $phrase, :!bool, :$warn, :$maxDist);

    if $res {
        return $bool ?? True !! $res
    }

    ## Split the phrase into words
    my @words = $phrase.split(/\s+/);

    ## If one word then fail
    if @words.elems == 1 {
        return $bool ?? False !! Nil
    }

    ## Get known phrase words
    my @candidates = do for @words -> $w {
        my $ws = known-string-candidates($knownStrings, $w, :$maxDist);
        if !$ws {
            return $bool ?? False !! Nil
        }
        $ws
    }

    ## Cross product of known words
    @candidates = ([X] @candidates).map(*.join(' '));

    ## Find if any of the cross product candidates is known
    for @candidates -> $c {
        my Bool $bres = known-string($knownPhrases, $c, :bool, :!warn, :$maxDist);
        if $bres {
            if $warn { note "Possible misspelling of '$c' as '$phrase'."; }
            return $bool ?? True !! return $c
        }
    }

    ## Final result
    return $bool ?? False !! Nil
}


#============================================================
# Matched strings
#============================================================

proto sub matched-string(|) is export {*}

multi sub matched-string(Str $knownRegex, Str:D $candidate, *%args) {
    return matched-string([$knownRegex, ], $candidate, |%args)
}

multi sub matched-string(@knownRegexes,
                         Str:D $candidate,
                         Bool :$bool is copy = True,
                         Bool :$all = False,
                         Bool :p(:$pair) = False,
                         Bool :c(:$contains) = False) {

    my @allMatches;
    if $pair || $all { $bool = False; }
    if $candidate (elem) @knownRegexes {
        # This is some sort of optimization
        if $bool { return True; }
        else { return $pair ?? ($candidate => $candidate) !! $candidate; }
    } else {
        for @knownRegexes -> $rx {
            if $candidate ~~ ( $contains ?? / (<$rx>) / !! / ^ (<$rx>) $ / ) {
                if $bool {
                    return True;
                } else {
                    if $all {
                        if $pair {
                            @allMatches.append($rx => $0.Str);
                        } else {
                            @allMatches.append($0.Str);
                        }
                    } else {
                        return $pair ?? ($rx => $0.Str) !! $0.Str;
                    }
                }
            }
        }
    }

    if $all { return @allMatches; }
    $bool ?? False !! Nil
}
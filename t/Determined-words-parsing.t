
use DSL::Shared::Utilities::DeterminedWordsMatching;

use Test;

plan 3;

#-----------------------------------------------------------
# Correct and expected to pass
#-----------------------------------------------------------
# 1
my %wordPairs1 =
        'колене', 'коленете',
        'коляно', 'коляното',
        'по-дълга', 'по-дългата',
        'най-червен', 'най-червения',
        'първи', 'първите',
        'първи', 'първият',
        'пътник', 'пътника',
        'пътник', 'пътникът',
        'руло', 'рулото',
        'ръка', 'ръката';

my $res1 = [&&] %wordPairs1.pairs.map({ is-determined-word( 'Bulgarian', $_.value, $_.key, gender => 'any' ) });

is-deeply $res1, True, 'correct and expected to pass';


#-----------------------------------------------------------
# Wrong and expected to pass
#-----------------------------------------------------------
# 2
my %wordPairs2 =
        'коляно', 'колянота',
        'риза', 'ризате';

my $res2 = [&&] %wordPairs2.pairs.map({ is-determined-word( 'Bulgarian', $_.value, $_.key, gender => 'any' ) });

is-deeply $res2, True, 'wrong and expected to pass';


#-----------------------------------------------------------
# Wrong and expected to fail
#-----------------------------------------------------------
# 3
my %wordPairs3 =
        'по-дълъг', 'по-дългият',
        'ризи', 'ризте',
        'мех', 'мехт',
        'мех', 'мехат',
        'челебия', 'черебиат';

my $res3 = [||] %wordPairs3.pairs.map({ is-determined-word( 'Bulgarian', $_.value, $_.key, gender => 'any' ) });

is-deeply $res3, False, 'wrong and expected to fail';


done-testing;

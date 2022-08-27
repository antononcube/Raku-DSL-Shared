use v6.d;

use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::English::TimeIntervalSpec;
use DSL::Shared::Roles::English::PipelineCommand;
use DSL::Shared::Actions::English::TimeIntervalSpec;

use Lingua::NumericWordForms::Roles::English::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::English::WordedNumberSpec;

grammar ParseObj
        does DSL::Shared::Roles::ErrorHandling
        does Lingua::NumericWordForms::Roles::English::WordedNumberSpec
        does DSL::Shared::Roles::English::TimeIntervalSpec
        does DSL::Shared::Roles::English::PipelineCommand {

    rule TOP { <pipeline-command> || <time-interval-spec> || <numeric-word-form>  }
};

# This code show the ability to parse numeric word forms:
#say ParseObj.parse( 'two hundred and one', rule => 'numeric-word-form');

#say ParseObj.parse( 'one thousand and five hundred',
#        rule => 'numeric-word-form',
#        actions => Lingua::NumericWordForms::Actions::English::WordedNumberSpec.new ).made;
#
#say "-" x 80;
#
#say ParseObj.parse( 'eight hundred sixty‐seven billion, five hundred sixty‐one million, three hundred eighty thousand, four hundred fourteen',
#        rule => 'numeric-word-form',
#        actions => Lingua::NumericWordForms::Actions::English::WordedNumberSpec.new ).made;

#say "=" x 80;


my @commands = (
'past year',
'last year',
'from week 12 to week 20',
'from week twelve to week twenty',
'from jan to mar',
'from january 2020 to march 2021',
'2 week of 2019',
'two weeks ago',
'in the last three weeks',
'between 30 and 40 days',
'between thirty and forty days'
);

my $action-type = 'interpret';

for @commands.kv -> $i, $c {
    say "=" x 80;
    say "$i : $c";
    say "-" x 80;
    if $action-type eq 'parse' {
        say ParseObj.parse($c);
    } else {
        say ParseObj.parse( $c, rule => 'time-interval-spec', actions => DSL::Shared::Actions::English::TimeIntervalSpec.new ).made;
    }
};


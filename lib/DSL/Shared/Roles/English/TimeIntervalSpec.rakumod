use v6;

# The first version of this role/grammar was made in 2011 using Mathematica and ENBF.
# See this file:
#   https://github.com/antononcube/ConversationalAgents/blob/master/Packages/WL/EBNFGrammarToRakuPerl6.m

use DSL::Shared::Roles::English::TimeIntervalSpeechParts;

role DSL::Shared::Roles::English::TimeIntervalSpec
        does DSL::Shared::Roles::English::TimeIntervalSpeechParts {
  regex time-interval-spec { <week-of-year> || <month-of-year> || <time-interval-in-units-spec> || <time-interval-from-to-spec> || <time-interval-into-spec> || <time-interval-every-spec> || <number-of-time-units> }

  token time-unit  { <hour-time-spec-word>  | <day-time-spec-word>  | <week-time-spec-word>  | <month-time-spec-word>  | <year-time-spec-word>  | <lifetime-time-spec-word> }

  token time-units { <hours-time-spec-word> | <days-time-spec-word> | <weeks-time-spec-word> | <months-time-spec-word> | <years-time-spec-word> | <lifetimes-time-spec-word> }

  regex number-of-time-units { <few-time-units> || <multi-time-units> || <one-time-unit> }
  regex few-time-units { [ <.a-determiner> \h+ ]? <few-time-spec-word> \h+ <time-units> }
  regex multi-time-units { <time-spec-number> \h+ <time-units> }
  regex one-time-unit { [ [ <.a-determiner> | <.one-time-spec-word> ] \h+ ]? <time-unit> }

  regex named-time-intervals { <day-name-relative> | <time-interval-relative> | <month-name> }

  regex time-interval-relative {
    [ <.the-determiner> \h+ ]? [ <next-time-spec-word> | <last-time-spec-word> | <past-time-spec-word> ] \h+ <number-of-time-units> |
    <number-of-time-units> \h+ <ago-time-spec-word> |
    <before-time-spec-word> \h+ <number-of-time-units>
  }

  regex time-interval-from-to-spec {
    <.between-time-spec-word> \h+ <from=.time-spec> \h+ <.and-conjunction> \h+ <to=.time-spec> |
    <.from-preposition> \h+ <from=.time-spec> \h+ [ <.to-preposition> | <.until-preposition> ] \h+ <to=.time-spec> }

  regex time-interval-into-spec {
    [ [ <.in-preposition> | <.during-time-spec-word> ] \h+ ]? <named-time-intervals> }

  regex time-interval-every-spec {
    <.each-determiner> \h+ <time-unit> | <.every-determiner> \h+ <number-of-time-units> }

  regex time-interval-in-units-spec {
    [ <.between-time-spec-word> | <.within-time-spec-word> ] \h+ <time-spec-number> \h+ <.and-conjunction> \h+ <number-of-time-units> }

  regex time-spec { <right-now> || <day-name> || <week-of-year> || <week-number> || <month-of-year> || <month-name> || <holiday-name> || <hour-spec> || <holiday-offset> || <full-date-spec> }
  token right-now { <now-time-spec-word> | <right-time-spec-word> \h+ <now-time-spec-word> | <just-time-spec-word> \h+ <now-time-spec-word> }
  token day-name-relative { <today-time-spec-word> | <yesterday-time-spec-word> | <tomorrow-time-spec-word> | <.the-determiner> \h+ <day-time-spec-word> \h+ <before-time-spec-word> \h+ <yesterday-time-spec-word> }
  token day-name-long { <monday-time-spec-word> | <tuesday-time-spec-word> | <wednesday-time-spec-word> | <thursday-time-spec-word> | <friday-time-spec-word> | <saturday-time-spec-word> | <sunday-time-spec-word> }
  token day-name-long-plurals { <mondays-time-spec-word> | <tuesdays-time-spec-word> | <wednesdays-time-spec-word> | <thursdays-time-spec-word> | <fridays-time-spec-word> | <saturdays-time-spec-word> | <sundays-time-spec-word> }
  token day-name-abbr { <mon-time-spec-word> | <tue-time-spec-word> | <wed-time-spec-word> | <thu-time-spec-word> | <fri-time-spec-word> | <sat-time-spec-word> | <sun-time-spec-word> }
  token day-name { <day-name-long> | <day-name-abbr> | <day-name-long-plurals> }
  regex week-number { <.week-time-spec-word> \h+ <week-number-range> }
  regex week-of-year {
    [ <.the-determiner> \h+ ]?
    [ <.week-time-spec-word> \h+ <week-number-range> | <week-number-range> \h+ <.week-time-spec-word> ] \h+
    [ <.of-preposition> | <.from-preposition> ] \h+
    <year-spec> }
  token month-name-long { <january-time-spec-word> | <february-time-spec-word> | <march-time-spec-word> | <april-time-spec-word> | <may-time-spec-word> | <june-time-spec-word> | <july-time-spec-word> | <august-time-spec-word> | <september-time-spec-word> | <october-time-spec-word> | <november-time-spec-word> | <december-time-spec-word> }
  token month-name-abbr { <jan-time-spec-word> | <feb-time-spec-word> | <mar-time-spec-word> | <apr-time-spec-word> | <may-time-spec-word> | <jun-time-spec-word> | <jul-time-spec-word> | <aug-time-spec-word> | <sep-time-spec-word> | <oct-time-spec-word> | <nov-time-spec-word> | <dec-time-spec-word> }
  token month-name { <month-name-long> | <month-name-abbr> }
  regex month-of-year { <month-name> \h+ [ <.of-preposition> \h+ ]? <year-spec>? }
  regex year-spec { [ <.year-time-spec-word> \h+]? <year-number-range> }
  token holiday-name {
    <christmas-time-spec-word> |
    <lincoln-time-spec-word> \h+ <day-time-spec-word> |
    <memorial-time-spec-word> \h+ <day-time-spec-word> |
    <mother-time-spec-word> \h+ <day-time-spec-word> |
    <new-time-spec-word> \h+ <year-time-spec-word> |
    <ramadan-time-spec-word> |
    <thanksgiving-time-spec-word> }
  regex holiday-offset { <number-of-time-units> \h+ [ <before-time-spec-word> | <after-time-spec-word> ] \h+ <holiday-name> }
  regex hour-spec { [ <integer-value> | <numeric-word-form> ] [\h+  [ <am-time-spec-word> | <pm-time-spec-word> ] ]? }

  proto regex full-date-spec {*};
  regex full-date-spec:sym<Simple> { [ <worded-date-spec> | <iso-date-spec> ] [ \h+ <full-date-hour-spec> ]? }

  regex worded-date-spec { [ <date=.date-number-range> \h+ <month=.month-name> | <month=.month-name> \h+ <date=.date-number-range> ] [\h* ',' \h* | \h* ] <year=.year-number-range> }
  regex iso-date-spec { <year=.year-number-range> <:Pd> <month=.integer-value> <:Pd> <date=.integer-value> }
  regex full-date-hour-spec { <hour=.time-spec-number> [ ':' <minite=.time-spec-number> ] [ <am-time-spec-word> | <pm-time-spec-word> ] }

  token week-number-range { (\d+) <?{ 1 <= $0.Str.Num <= 52 }> | <numeric-word-form> }
  token date-number-range { (\d+) <?{ 1 <= $0.Str.Num <= 31 }> | <numeric-word-form> }
  token year-number-range { (\d+) <?{ 1900 <= $0.Str.Num <= 2100 }> | <numeric-word-form> }
  regex time-spec-number { <integer-value> | <numeric-word-form> }
}
use v6;

# The first version of this role/grammar was made in 2011 using Mathematica and ENBF.
# See this file:
#   https://github.com/antononcube/ConversationalAgents/blob/master/Packages/WL/EBNFGrammarToRakuPerl6.m

role DSL::Shared::Roles::English::TimeIntervalSpec {
  rule time-interval-spec { <week-of-year> || <month-of-year> || <time-interval-from-to-spec> || <number-of-time-units> }
  rule time-unit  { <hour-time-spec-word>  | <day-time-spec-word>  | <week-time-spec-word>  | <month-time-spec-word>  | <year-time-spec-word>  | <lifetime-time-spec-word> }
  rule time-units { <hours-time-spec-word> | <days-time-spec-word> | <weeks-time-spec-word> | <months-time-spec-word> | <years-time-spec-word> | <lifetimes-time-spec-word> }
  rule number-of-time-units { <time-spec-number> <time-units> | [ <.a-determiner> | <one-time-spec-word> ] <time-unit> }
  rule named-time-intervals { <day-name-relative> | <time-interval-relative> | <month-name> }
  rule time-interval-relative {
    <.the-determiner>? [ <next-time-spec-word> | <last-time-spec-word> ] [ <time-unit> | [ <few-time-spec-word> | <time-spec-number> ] <time-units> ] |
    <number-of-time-units> <ago-time-spec-word>
  }
  rule time-interval-from-to-spec {
    <between-time-spec-word> <time-spec> <.and-conjunction> <time-spec> |
    <.from-preposition> <time-spec> <.to-preposition> <time-spec> |
    [ <in-preposition> | <during-time-spec-word> ]? <named-time-intervals> |
    <between-time-spec-word> <time-spec-number> <.and-conjunction> <number-of-time-units> }
  rule time-spec { <right-now> | <day-name> | <week-of-year> | <week-number> | <month-of-year> | <month-name> | <holiday-name> | <hour-spec> | <holiday-offset> }
  rule right-now { <now-time-spec-word> | <right-time-spec-word> <now-time-spec-word> | <just-time-spec-word> <now-time-spec-word> }
  rule day-name-relative { <today-time-spec-word> | <yesterday-time-spec-word> | <tomorrow-time-spec-word> | <.the-determiner> <day-time-spec-word> <before-time-spec-word> <yesterday-time-spec-word> }
  rule day-name-long { <monday-time-spec-word> | <tuesday-time-spec-word> | <wednesday-time-spec-word> | <thursday-time-spec-word> | <friday-time-spec-word> | <saturday-time-spec-word> | <sunday-time-spec-word> }
  rule day-name-long-plurals { <mondays-time-spec-word> | <tuesdays-time-spec-word> | <wednesdays-time-spec-word> | <thursdays-time-spec-word> | <fridays-time-spec-word> | <saturdays-time-spec-word> | <sundays-time-spec-word> }
  rule day-name-abbr { <mon-time-spec-word> | <tue-time-spec-word> | <wed-time-spec-word> | <thu-time-spec-word> | <fri-time-spec-word> | <sat-time-spec-word> | <sun-time-spec-word> }
  rule day-name { <day-name-long> | <day-name-abbr> | <day-name-long-plurals> }
  rule week-number { <week-time-spec-word> <week-number-range> }
  rule week-of-year { <.the-determiner>? [ <.week-time-spec-word> <week-number-range> | <week-number-range> <.week-time-spec-word> ] <.of-preposition> <year-spec> }
  rule month-name-long { <january-time-spec-word> | <february-time-spec-word> | <march-time-spec-word> | <april-time-spec-word> | <may-time-spec-word> | <june-time-spec-word> | <july-time-spec-word> | <august-time-spec-word> | <september-time-spec-word> | <october-time-spec-word> | <november-time-spec-word> | <december-time-spec-word> }
  rule month-name-abbr { <jan-time-spec-word> | <feb-time-spec-word> | <mar-time-spec-word> | <apr-time-spec-word> | <may-time-spec-word> | <jun-time-spec-word> | <jul-time-spec-word> | <aug-time-spec-word> | <sep-time-spec-word> | <oct-time-spec-word> | <nov-time-spec-word> | <dec-time-spec-word> }
  rule month-name { <month-name-long> | <month-name-abbr> }
  rule month-of-year { <month-name> <.of-preposition>? <year-spec>? }
  rule year-spec { <year-time-spec-word> <year-number-range> | <year-number-range> }
  rule holiday-name {
    <christmas-time-spec-word> |
    <lincoln-time-spec-word> <day-time-spec-word> |
    <memorial-time-spec-word> <day-time-spec-word> |
    <mother-time-spec-word> <day-time-spec-word> |
    <new-time-spec-word> <year-time-spec-word> |
    <ramadan-time-spec-word> |
    <thanksgiving-time-spec-word> }
  rule holiday-offset {<number-of-time-units> [ <before-time-spec-word> | <after-time-spec-word> ] <holiday-name>}
  rule hour-spec { [ <integer-value> | <worded-number-spec> ] [ <am-time-spec-word> | <pm-time-spec-word> ]? }
  rule full-date-spec {[ <time-spec-number> <month-name> | <month-name> <time-spec-number> ] <time-spec-number> [ <time-spec-number> [ <am-time-spec-word> | <pm-time-spec-word> ] ]?}

  token week-number-range { (\d+) <?{ 1 <= $0.Str.Num <= 52 }> | <worded-number-spec> }
  token year-number-range { (\d+) <?{ 1900 <= $0.Str.Num <= 2100 }> | <worded-number-spec> }
  token time-spec-number { <integer-value> | <worded-number-spec> }
  
  token after-time-spec-word { 'after' };
  token ago-time-spec-word { 'ago' };
  token am-time-spec-word { 'am' };
  token apr-time-spec-word { 'apr' };
  token april-time-spec-word { 'april' };
  token aug-time-spec-word { 'aug' };
  token august-time-spec-word { 'august' };
  token before-time-spec-word { 'before' };
  token between-time-spec-word { 'between' };
  token christmas-time-spec-word { 'christmas' };
  token day-time-spec-word { 'day' };
  token days-time-spec-word { 'days' };
  token dec-time-spec-word { 'dec' };
  token december-time-spec-word { 'december' };
  token during-time-spec-word { 'during' };
  token feb-time-spec-word { 'feb' };
  token february-time-spec-word { 'february' };
  token few-time-spec-word { 'few' };
  token fri-time-spec-word { 'fri' };
  token friday-time-spec-word { 'friday' };
  token fridays-time-spec-word { 'fridays' };
  token hour-time-spec-word { 'hour' };
  token hours-time-spec-word { 'hours' };
  token jan-time-spec-word { 'jan' };
  token january-time-spec-word { 'january' };
  token jul-time-spec-word { 'jul' };
  token july-time-spec-word { 'july' };
  token jun-time-spec-word { 'jun' };
  token june-time-spec-word { 'june' };
  token just-time-spec-word { 'just' };
  token last-time-spec-word { 'last' };
  token lifetime-time-spec-word { 'lifetime' };
  token lifetimes-time-spec-word { 'lifetimes' };
  token lincoln-time-spec-word { 'lincoln' };
  token mar-time-spec-word { 'mar' };
  token march-time-spec-word { 'march' };
  token may-time-spec-word { 'may' };
  token memorial-time-spec-word { 'memorial' };
  token mon-time-spec-word { 'mon' };
  token monday-time-spec-word { 'monday' };
  token mondays-time-spec-word { 'mondays' };
  token month-time-spec-word { 'month' };
  token months-time-spec-word { 'months' };
  token mother-time-spec-word { 'mother' };
  token new-time-spec-word { 'new' };
  token next-time-spec-word { 'next' };
  token nov-time-spec-word { 'nov' };
  token november-time-spec-word { 'november' };
  token now-time-spec-word { 'now' };
  token oct-time-spec-word { 'oct' };
  token october-time-spec-word { 'october' };
  token of-time-spec-word { 'of' };
  token one-time-spec-word { 'one' };
  token pm-time-spec-word { 'pm' };
  token ramadan-time-spec-word { 'ramadan' };
  token right-time-spec-word { 'right' };
  token sat-time-spec-word { 'sat' };
  token saturday-time-spec-word { 'saturday' };
  token saturdays-time-spec-word { 'saturdays' };
  token sep-time-spec-word { 'sep' };
  token september-time-spec-word { 'september' };
  token sun-time-spec-word { 'sun' };
  token sunday-time-spec-word { 'sunday' };
  token sundays-time-spec-word { 'sundays' };
  token thanksgiving-time-spec-word { 'thanksgiving' };
  token thu-time-spec-word { 'thu' };
  token thursday-time-spec-word { 'thursday' };
  token thursdays-time-spec-word { 'thursdays' };
  token today-time-spec-word { 'today' };
  token tomorrow-time-spec-word { 'tomorrow' };
  token tue-time-spec-word { 'tue' };
  token tuesday-time-spec-word { 'tuesday' };
  token tuesdays-time-spec-word { 'tuesdays' };
  token wed-time-spec-word { 'wed' };
  token wednesday-time-spec-word { 'wednesday' };
  token wednesdays-time-spec-word { 'wednesdays' };
  token week-time-spec-word { 'week' };
  token weeks-time-spec-word { 'weeks' };
  token year-time-spec-word { 'year' };
  token years-time-spec-word { 'years' };
  token yesterday-time-spec-word { 'yesterday' };
}
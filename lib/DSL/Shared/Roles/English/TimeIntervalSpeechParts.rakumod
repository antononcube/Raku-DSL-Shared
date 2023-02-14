# I am not sure should we have these time interval speech parts separated from the CommonSpeechParts.rakumod.
# One advantage of combining the files is that the finding the nearest neighbors is very direct
# and straightforward with the CLI add-token-fuzzy-matching.

use v6.d;
use DSL::Shared::Utilities::FuzzyMatching;

role DSL::Shared::Roles::English::TimeIntervalSpeechParts {
  

  proto token after-time-spec-word {*}
  token after-time-spec-word:sym<English> { :i 'after' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'after', 2) }> }

  proto token ago-time-spec-word {*}
  token ago-time-spec-word:sym<English> { :i 'ago' | ([\w]+) <?{ $0.Str !(elem) <am apr aug> and is-fuzzy-match($0.Str, 'ago', 1) }> }

  proto token am-time-spec-word {*}
  token am-time-spec-word:sym<English> { :i 'am' }

  proto token apr-time-spec-word {*}
  token apr-time-spec-word:sym<English> { :i 'apr' | ([\w]+) <?{ $0.Str !(elem) <ago am april aug mar pm> and is-fuzzy-match($0.Str, 'apr', 1) }> }

  proto token april-time-spec-word {*}
  token april-time-spec-word:sym<English> { :i 'april' | ([\w]+) <?{ $0.Str ne 'apr' and is-fuzzy-match($0.Str, 'april', 2) }> }

  proto token aug-time-spec-word {*}
  token aug-time-spec-word:sym<English> { :i 'aug' | ([\w]+) <?{ $0.Str !(elem) <ago am apr jul jun sun tue> and is-fuzzy-match($0.Str, 'aug', 1) }> }

  proto token august-time-spec-word {*}
  token august-time-spec-word:sym<English> { :i 'august' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'august', 2) }> }

  proto token before-time-spec-word {*}
  token before-time-spec-word:sym<English> { :i 'before' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'before', 2) }> }

  proto token between-time-spec-word {*}
  token between-time-spec-word:sym<English> { :i 'between' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'between', 2) }> }

  proto token christmas-time-spec-word {*}
  token christmas-time-spec-word:sym<English> { :i 'christmas' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'christmas', 2) }> }

  proto token day-time-spec-word {*}
  token day-time-spec-word:sym<English> { :i 'day' | ([\w]+) <?{ $0.Str !(elem) <am days dec jan mar may sat today> and is-fuzzy-match($0.Str, 'day', 1) }> }

  proto token days-time-spec-word {*}
  token days-time-spec-word:sym<English> { :i 'days' | ([\w]+) <?{ $0.Str !(elem) <day may> and is-fuzzy-match($0.Str, 'days', 2) }> }

  proto token dec-time-spec-word {*}
  token dec-time-spec-word:sym<English> { :i 'dec' | ([\w]+) <?{ $0.Str !(elem) <day feb few new sep wed> and is-fuzzy-match($0.Str, 'dec', 1) }> }

  proto token december-time-spec-word {*}
  token december-time-spec-word:sym<English> { :i 'december' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'december', 2) }> }

  proto token during-time-spec-word {*}
  token during-time-spec-word:sym<English> { :i 'during' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'during', 2) }> }

  proto token feb-time-spec-word {*}
  token feb-time-spec-word:sym<English> { :i 'feb' | ([\w]+) <?{ $0.Str !(elem) <dec few fri new sep wed> and is-fuzzy-match($0.Str, 'feb', 1) }> }

  proto token february-time-spec-word {*}
  token february-time-spec-word:sym<English> { :i 'february' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'february', 2) }> }

  proto token few-time-spec-word {*}
  token few-time-spec-word:sym<English> { :i 'few' | ([\w]+) <?{ $0.Str !(elem) <dec feb fri new now sep wed> and is-fuzzy-match($0.Str, 'few', 1) }> }

  proto token fri-time-spec-word {*}
  token fri-time-spec-word:sym<English> { :i 'fri' | ([\w]+) <?{ $0.Str !(elem) <feb few> and is-fuzzy-match($0.Str, 'fri', 1) }> }

  proto token friday-time-spec-word {*}
  token friday-time-spec-word:sym<English> { :i 'friday' | ([\w]+) <?{ $0.Str ne 'fridays' and is-fuzzy-match($0.Str, 'friday', 2) }> }

  proto token fridays-time-spec-word {*}
  token fridays-time-spec-word:sym<English> { :i 'fridays' | ([\w]+) <?{ $0.Str ne 'friday' and is-fuzzy-match($0.Str, 'fridays', 2) }> }

  proto token hour-time-spec-word {*}
  token hour-time-spec-word:sym<English> { :i 'hour' | ([\w]+) <?{ $0.Str ne 'hours' and is-fuzzy-match($0.Str, 'hour', 2) }> }

  proto token hours-time-spec-word {*}
  token hours-time-spec-word:sym<English> { :i 'hours' | ([\w]+) <?{ $0.Str ne 'hour' and is-fuzzy-match($0.Str, 'hours', 2) }> }

  proto token jan-time-spec-word {*}
  token jan-time-spec-word:sym<English> { :i 'jan' | ([\w]+) <?{ $0.Str !(elem) <am day jul jun june mar may mon sat sun> and is-fuzzy-match($0.Str, 'jan', 1) }> }

  proto token january-time-spec-word {*}
  token january-time-spec-word:sym<English> { :i 'january' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'january', 2) }> }

  proto token jul-time-spec-word {*}
  token jul-time-spec-word:sym<English> { :i 'jul' | ([\w]+) <?{ $0.Str !(elem) <aug jan july jun june just sun tue> and is-fuzzy-match($0.Str, 'jul', 1) }> }

  proto token july-time-spec-word {*}
  token july-time-spec-word:sym<English> { :i 'july' | ([\w]+) <?{ $0.Str !(elem) <jul jun june just> and is-fuzzy-match($0.Str, 'july', 2) }> }

  proto token jun-time-spec-word {*}
  token jun-time-spec-word:sym<English> { :i 'jun' | ([\w]+) <?{ $0.Str !(elem) <aug jan jul july june just mon sun tue> and is-fuzzy-match($0.Str, 'jun', 1) }> }

  proto token june-time-spec-word {*}
  token june-time-spec-word:sym<English> { :i 'june' | ([\w]+) <?{ $0.Str !(elem) <jan jul july jun just one sun tue> and is-fuzzy-match($0.Str, 'june', 2) }> }

  proto token just-time-spec-word {*}
  token just-time-spec-word:sym<English> { :i 'just' | ([\w]+) <?{ $0.Str !(elem) <jul july jun june last past> and is-fuzzy-match($0.Str, 'just', 2) }> }

  proto token last-time-spec-word {*}
  token last-time-spec-word:sym<English> { :i 'last' | ([\w]+) <?{ $0.Str !(elem) <just past sat> and is-fuzzy-match($0.Str, 'last', 2) }> }

  proto token lifetime-time-spec-word {*}
  token lifetime-time-spec-word:sym<English> { :i 'lifetime' | ([\w]+) <?{ $0.Str ne 'lifetimes' and is-fuzzy-match($0.Str, 'lifetime', 2) }> }

  proto token lifetimes-time-spec-word {*}
  token lifetimes-time-spec-word:sym<English> { :i 'lifetimes' | ([\w]+) <?{ $0.Str ne 'lifetime' and is-fuzzy-match($0.Str, 'lifetimes', 2) }> }

  proto token lincoln-time-spec-word {*}
  token lincoln-time-spec-word:sym<English> { :i 'lincoln' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'lincoln', 2) }> }

  proto token mar-time-spec-word {*}
  token mar-time-spec-word:sym<English> { :i 'mar' | ([\w]+) <?{ $0.Str !(elem) <am apr day jan march may mon sat year> and is-fuzzy-match($0.Str, 'mar', 1) }> }

  proto token march-time-spec-word {*}
  token march-time-spec-word:sym<English> { :i 'march' | ([\w]+) <?{ $0.Str ne 'mar' and is-fuzzy-match($0.Str, 'march', 2) }> }

  proto token may-time-spec-word {*}
  token may-time-spec-word:sym<English> { :i 'may' | ([\w]+) <?{ $0.Str !(elem) <am day days jan mar mon sat> and is-fuzzy-match($0.Str, 'may', 1) }> }

  proto token memorial-time-spec-word {*}
  token memorial-time-spec-word:sym<English> { :i 'memorial' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'memorial', 2) }> }

  proto token mon-time-spec-word {*}
  token mon-time-spec-word:sym<English> { :i 'mon' | ([\w]+) <?{ $0.Str !(elem) <jan jun mar may month nov now of one sun> and is-fuzzy-match($0.Str, 'mon', 1) }> }

  proto token monday-time-spec-word {*}
  token monday-time-spec-word:sym<English> { :i 'monday' | ([\w]+) <?{ $0.Str !(elem) <mondays sunday today> and is-fuzzy-match($0.Str, 'monday', 2) }> }

  proto token mondays-time-spec-word {*}
  token mondays-time-spec-word:sym<English> { :i 'mondays' | ([\w]+) <?{ $0.Str !(elem) <monday sundays> and is-fuzzy-match($0.Str, 'mondays', 2) }> }

  proto token month-time-spec-word {*}
  token month-time-spec-word:sym<English> { :i 'month' | ([\w]+) <?{ $0.Str !(elem) <mon months> and is-fuzzy-match($0.Str, 'month', 2) }> }

  proto token months-time-spec-word {*}
  token months-time-spec-word:sym<English> { :i 'months' | ([\w]+) <?{ $0.Str ne 'month' and is-fuzzy-match($0.Str, 'months', 2) }> }

  proto token mother-time-spec-word {*}
  token mother-time-spec-word:sym<English> { :i 'mother' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'mother', 2) }> }

  proto token new-time-spec-word {*}
  token new-time-spec-word:sym<English> { :i 'new' | ([\w]+) <?{ $0.Str !(elem) <dec feb few next nov now one sep wed> and is-fuzzy-match($0.Str, 'new', 1) }> }

  proto token next-time-spec-word {*}
  token next-time-spec-word:sym<English> { :i 'next' | ([\w]+) <?{ $0.Str ne 'new' and is-fuzzy-match($0.Str, 'next', 2) }> }

  proto token nov-time-spec-word {*}
  token nov-time-spec-word:sym<English> { :i 'nov' | ([\w]+) <?{ $0.Str !(elem) <mon new now of one> and is-fuzzy-match($0.Str, 'nov', 1) }> }

  proto token november-time-spec-word {*}
  token november-time-spec-word:sym<English> { :i 'november' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'november', 2) }> }

  proto token now-time-spec-word {*}
  token now-time-spec-word:sym<English> { :i 'now' | ([\w]+) <?{ $0.Str !(elem) <few mon new nov of one> and is-fuzzy-match($0.Str, 'now', 1) }> }

  proto token oct-time-spec-word {*}
  token oct-time-spec-word:sym<English> { :i 'oct' | ([\w]+) <?{ $0.Str !(elem) <of one sat> and is-fuzzy-match($0.Str, 'oct', 1) }> }

  proto token october-time-spec-word {*}
  token october-time-spec-word:sym<English> { :i 'october' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'october', 2) }> }

  proto token of-time-spec-word {*}
  token of-time-spec-word:sym<English> { :i 'of' }

  proto token one-time-spec-word {*}
  token one-time-spec-word:sym<English> { :i 'one' | ([\w]+) <?{ $0.Str !(elem) <june mon new nov now oct of tue> and is-fuzzy-match($0.Str, 'one', 1) }> }

  proto token past-time-spec-word {*}
  token past-time-spec-word:sym<English> { :i 'past' | ([\w]+) <?{ $0.Str !(elem) <just last sat> and is-fuzzy-match($0.Str, 'past', 2) }> }

  proto token pm-time-spec-word {*}
  token pm-time-spec-word:sym<English> { :i 'pm' }

  proto token ramadan-time-spec-word {*}
  token ramadan-time-spec-word:sym<English> { :i 'ramadan' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'ramadan', 2) }> }

  proto token right-time-spec-word {*}
  token right-time-spec-word:sym<English> { :i 'right' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'right', 2) }> }

  proto token sat-time-spec-word {*}
  token sat-time-spec-word:sym<English> { :i 'sat' | ([\w]+) <?{ $0.Str !(elem) <am day jan last mar may oct past sep sun> and is-fuzzy-match($0.Str, 'sat', 1) }> }

  proto token saturday-time-spec-word {*}
  token saturday-time-spec-word:sym<English> { :i 'saturday' | ([\w]+) <?{ $0.Str ne 'saturdays' and is-fuzzy-match($0.Str, 'saturday', 2) }> }

  proto token saturdays-time-spec-word {*}
  token saturdays-time-spec-word:sym<English> { :i 'saturdays' | ([\w]+) <?{ $0.Str ne 'saturday' and is-fuzzy-match($0.Str, 'saturdays', 2) }> }

  proto token sep-time-spec-word {*}
  token sep-time-spec-word:sym<English> { :i 'sep' | ([\w]+) <?{ $0.Str !(elem) <dec feb few new sat sun wed> and is-fuzzy-match($0.Str, 'sep', 1) }> }

  proto token september-time-spec-word {*}
  token september-time-spec-word:sym<English> { :i 'september' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'september', 2) }> }

  proto token sun-time-spec-word {*}
  token sun-time-spec-word:sym<English> { :i 'sun' | ([\w]+) <?{ $0.Str !(elem) <aug jan jul jun june mon sat sep tue> and is-fuzzy-match($0.Str, 'sun', 1) }> }

  proto token sunday-time-spec-word {*}
  token sunday-time-spec-word:sym<English> { :i 'sunday' | ([\w]+) <?{ $0.Str !(elem) <monday sundays> and is-fuzzy-match($0.Str, 'sunday', 2) }> }

  proto token sundays-time-spec-word {*}
  token sundays-time-spec-word:sym<English> { :i 'sundays' | ([\w]+) <?{ $0.Str !(elem) <mondays sunday> and is-fuzzy-match($0.Str, 'sundays', 2) }> }

  proto token thanksgiving-time-spec-word {*}
  token thanksgiving-time-spec-word:sym<English> { :i 'thanksgiving' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'thanksgiving', 2) }> }

  proto token thu-time-spec-word {*}
  token thu-time-spec-word:sym<English> { :i 'thu' | ([\w]+) <?{ $0.Str ne 'tue' and is-fuzzy-match($0.Str, 'thu', 1) }> }

  proto token thursday-time-spec-word {*}
  token thursday-time-spec-word:sym<English> { :i 'thursday' | ([\w]+) <?{ $0.Str !(elem) <thursdays tuesday> and is-fuzzy-match($0.Str, 'thursday', 2) }> }

  proto token thursdays-time-spec-word {*}
  token thursdays-time-spec-word:sym<English> { :i 'thursdays' | ([\w]+) <?{ $0.Str !(elem) <thursday tuesdays> and is-fuzzy-match($0.Str, 'thursdays', 2) }> }

  proto token today-time-spec-word {*}
  token today-time-spec-word:sym<English> { :i 'today' | ([\w]+) <?{ $0.Str !(elem) <day monday> and is-fuzzy-match($0.Str, 'today', 2) }> }

  proto token tomorrow-time-spec-word {*}
  token tomorrow-time-spec-word:sym<English> { :i 'tomorrow' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'tomorrow', 2) }> }

  proto token tue-time-spec-word {*}
  token tue-time-spec-word:sym<English> { :i 'tue' | ([\w]+) <?{ $0.Str !(elem) <aug jul jun june one sun thu> and is-fuzzy-match($0.Str, 'tue', 1) }> }

  proto token tuesday-time-spec-word {*}
  token tuesday-time-spec-word:sym<English> { :i 'tuesday' | ([\w]+) <?{ $0.Str !(elem) <thursday tuesdays> and is-fuzzy-match($0.Str, 'tuesday', 2) }> }

  proto token tuesdays-time-spec-word {*}
  token tuesdays-time-spec-word:sym<English> { :i 'tuesdays' | ([\w]+) <?{ $0.Str !(elem) <thursdays tuesday> and is-fuzzy-match($0.Str, 'tuesdays', 2) }> }

  proto token wed-time-spec-word {*}
  token wed-time-spec-word:sym<English> { :i 'wed' | ([\w]+) <?{ $0.Str !(elem) <dec feb few new sep week> and is-fuzzy-match($0.Str, 'wed', 1) }> }

  proto token wednesday-time-spec-word {*}
  token wednesday-time-spec-word:sym<English> { :i 'wednesday' | ([\w]+) <?{ $0.Str ne 'wednesdays' and is-fuzzy-match($0.Str, 'wednesday', 2) }> }

  proto token wednesdays-time-spec-word {*}
  token wednesdays-time-spec-word:sym<English> { :i 'wednesdays' | ([\w]+) <?{ $0.Str ne 'wednesday' and is-fuzzy-match($0.Str, 'wednesdays', 2) }> }

  proto token week-time-spec-word {*}
  token week-time-spec-word:sym<English> { :i 'week' | ([\w]+) <?{ $0.Str !(elem) <wed weeks> and is-fuzzy-match($0.Str, 'week', 2) }> }

  proto token weekend-time-spec-word {*}
  token weekend-time-spec-word:sym<English> { :i 'weekend' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'weekend', 2) }> }

  proto token weeks-time-spec-word {*}
  token weeks-time-spec-word:sym<English> { :i 'weeks' | ([\w]+) <?{ $0.Str ne 'week' and is-fuzzy-match($0.Str, 'weeks', 2) }> }

  proto token within-time-spec-word {*}
  token within-time-spec-word:sym<English> { :i 'within' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'within', 2) }> }

  proto token year-time-spec-word {*}
  token year-time-spec-word:sym<English> { :i 'year' | ([\w]+) <?{ $0.Str !(elem) <mar years> and is-fuzzy-match($0.Str, 'year', 2) }> }

  proto token years-time-spec-word {*}
  token years-time-spec-word:sym<English> { :i 'years' | ([\w]+) <?{ $0.Str ne 'year' and is-fuzzy-match($0.Str, 'years', 2) }> }

  proto token yesterday-time-spec-word {*}
  token yesterday-time-spec-word:sym<English> { :i 'yesterday' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'yesterday', 2) }> }
}

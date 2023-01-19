# I am not sure should we have these time interval speech parts separated from the CommonSpeechParts.rakumod.
# One advantage of combining the files is that the finding the nearest neighbors is very direct
# and straightforward with the CLI add-token-fuzzy-matching.

use v6.d;
use DSL::Shared::Utilities::DeterminedWordsMatching;

role DSL::Shared::Roles::Bulgarian::TimeIntervalSpeechParts {

  token after-time-spec-word:sym<Bulgarian> { :i 'след' | ([\w]+) <?{ $0.Str !(elem) <сеп среди> and is-bg-fuzzy-match($0.Str, 'след', 2) }> }
  token ago-time-spec-word:sym<Bulgarian> { :i 'преди' | ([\w]+) <?{ $0.Str ne 'среди' and is-bg-fuzzy-match($0.Str, 'преди', 2) }> }
  token am-time-spec-word:sym<Bulgarian> { :i 'am' | 'сутрин' | ([\w]+) <?{ $0.Str ne 'сутринта' and is-bg-fuzzy-match($0.Str, 'сутрин', 2) }> | 'сутринта' | ([\w]+) <?{ $0.Str ne 'сутрин' and is-bg-fuzzy-match($0.Str, 'сутринта', 2) }> }
  token apr-time-spec-word:sym<Bulgarian> { :i 'апр' | ([\w]+) <?{ $0.Str !(elem) <април авг мар> and is-bg-fuzzy-match($0.Str, 'апр', 1) }> }
  token april-time-spec-word:sym<Bulgarian> { :i 'април' | ([\w]+) <?{ $0.Str ne 'апр' and is-bg-fuzzy-match($0.Str, 'април', 2) }> }
  token aug-time-spec-word:sym<Bulgarian> { :i 'авг' | ([\w]+) <?{ $0.Str ne 'апр' and is-bg-fuzzy-match($0.Str, 'авг', 1) }> }
  token august-time-spec-word:sym<Bulgarian> { :i 'август' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'август', 2) }> }
  token before-time-spec-word:sym<Bulgarian> { :i 'преди' | ([\w]+) <?{ $0.Str ne 'среди' and is-bg-fuzzy-match($0.Str, 'преди', 2) }> }
  token between-time-spec-word:sym<Bulgarian> { :i 'между' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'между', 2) }> }
  token christmas-time-spec-word:sym<Bulgarian> { :i 'коледа' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'коледа', 2) }> }
  token day-time-spec-word:sym<Bulgarian> { :i 'ден' | ([\w]+) <?{ $0.Str !(elem) <дни дек фев пон един една едно едни десен десни сеп чет днес> and is-bg-fuzzy-match($0.Str, 'ден', 1) }> }
  token days-time-spec-word:sym<Bulgarian> { :i 'дни' | ([\w]+) <?{ $0.Str !(elem) <ден дек яну ян. юли юни на един една едно едни десни днес> and is-bg-fuzzy-match($0.Str, 'дни', 1) }> }
  token dec-time-spec-word:sym<Bulgarian> { :i 'дек' | ([\w]+) <?{ $0.Str !(elem) <ден дни фев сеп чет днес> and is-bg-fuzzy-match($0.Str, 'дек', 1) }> }
  token december-time-spec-word:sym<Bulgarian> { :i 'декември' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'декември', 2) }> }
  token during-time-spec-word:sym<Bulgarian> { :i  'по' \h+ 'време' \h+ 'на'  }
  token feb-time-spec-word:sym<Bulgarian> { :i 'фев' | ([\w]+) <?{ $0.Str !(elem) <ден дек нов сеп чет> and is-bg-fuzzy-match($0.Str, 'фев', 1) }> }
  token february-time-spec-word:sym<Bulgarian> { :i 'февруари' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'февруари', 2) }> }
  token few-time-spec-word:sym<Bulgarian> { :i 'няколко' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'няколко', 2) }> }
  token fri-time-spec-word:sym<Bulgarian> { :i 'петък' | ([\w]+) <?{ $0.Str ne 'петъци' and is-bg-fuzzy-match($0.Str, 'петък', 2) }> }
  token friday-time-spec-word:sym<Bulgarian> { :i 'петък' | ([\w]+) <?{ $0.Str ne 'петъци' and is-bg-fuzzy-match($0.Str, 'петък', 2) }> }
  token fridays-time-spec-word:sym<Bulgarian> { :i 'петъци' | ([\w]+) <?{ $0.Str ne 'петък' and is-bg-fuzzy-match($0.Str, 'петъци', 2) }> }
  token hour-time-spec-word:sym<Bulgarian> { :i 'час' | ([\w]+) <?{ $0.Str !(elem) <мар май на чет> and is-bg-fuzzy-match($0.Str, 'час', 1) }> }
  token hours-time-spec-word:sym<Bulgarian> { :i 'часове' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'часове', 2) }> }
  token jan-time-spec-word:sym<Bulgarian> { :i 'яну' | ([\w]+) <?{ $0.Str !(elem) <дни ян. юни на> and is-bg-fuzzy-match($0.Str, 'яну', 1) }> | 'ян.' | ([\w]+) <?{ $0.Str !(elem) <дни яну юни на> and is-bg-fuzzy-match($0.Str, 'ян.', 1) }> }
  token january-time-spec-word:sym<Bulgarian> { :i 'януари' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'януари', 2) }> }
  token jul-time-spec-word:sym<Bulgarian> { :i 'юли' | ([\w]+) <?{ $0.Str !(elem) <дни юни> and is-bg-fuzzy-match($0.Str, 'юли', 1) }> }
  token july-time-spec-word:sym<Bulgarian> { :i 'юли' | ([\w]+) <?{ $0.Str !(elem) <дни юни> and is-bg-fuzzy-match($0.Str, 'юли', 1) }> }
  token jun-time-spec-word:sym<Bulgarian> { :i 'юни' | ([\w]+) <?{ $0.Str !(elem) <дни яну ян. юли на едни> and is-bg-fuzzy-match($0.Str, 'юни', 1) }> }
  token june-time-spec-word:sym<Bulgarian> { :i 'юни' | ([\w]+) <?{ $0.Str !(elem) <дни яну ян. юли на едни> and is-bg-fuzzy-match($0.Str, 'юни', 1) }> }
  token just-time-spec-word:sym<Bulgarian> { :i 'само' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'само', 2) }> }
  token last-time-spec-word:sym<Bulgarian> { :i 'последен' | ([\w]+) <?{ $0.Str !(elem) <последна последно последни> and is-bg-fuzzy-match($0.Str, 'последен', 2) }> | 'последна' | ([\w]+) <?{ $0.Str !(elem) <последен последно последни> and is-bg-fuzzy-match($0.Str, 'последна', 2) }> | 'последно' | ([\w]+) <?{ $0.Str !(elem) <последен последна последни> and is-bg-fuzzy-match($0.Str, 'последно', 2) }> | 'последни' | ([\w]+) <?{ $0.Str !(elem) <последен последна последно> and is-bg-fuzzy-match($0.Str, 'последни', 2) }> }
  token lifetime-time-spec-word:sym<Bulgarian> { :i 'живот' | ([\w]+) <?{ $0.Str ne 'животи' and is-bg-fuzzy-match($0.Str, 'живот', 2) }> }
  token lifetimes-time-spec-word:sym<Bulgarian> { :i 'животи' | ([\w]+) <?{ $0.Str ne 'живот' and is-bg-fuzzy-match($0.Str, 'животи', 2) }> }
  token lincoln-time-spec-word:sym<Bulgarian> { :i 'линкълн' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'линкълн', 2) }> }
  token mar-time-spec-word:sym<Bulgarian> { :i 'мар' | ([\w]+) <?{ $0.Str !(elem) <апр час март май на> and is-bg-fuzzy-match($0.Str, 'мар', 1) }> }
  token march-time-spec-word:sym<Bulgarian> { :i 'март' | ([\w]+) <?{ $0.Str !(elem) <мар май> and is-bg-fuzzy-match($0.Str, 'март', 2) }> }
  token may-time-spec-word:sym<Bulgarian> { :i 'май' | ([\w]+) <?{ $0.Str !(elem) <час мар март майка на> and is-bg-fuzzy-match($0.Str, 'май', 1) }> }
  token memorial-time-spec-word:sym<Bulgarian> { :i 'паметник' | ([\w]+) <?{ $0.Str ne 'паметния' and is-bg-fuzzy-match($0.Str, 'паметник', 2) }> | 'паметен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'паметен', 2) }> | 'паметния' | ([\w]+) <?{ $0.Str ne 'паметник' and is-bg-fuzzy-match($0.Str, 'паметния', 2) }> }
  token mon-time-spec-word:sym<Bulgarian> { :i 'пон' | ([\w]+) <?{ $0.Str !(elem) <ден нов ное от> and is-bg-fuzzy-match($0.Str, 'пон', 1) }> }
  token monday-time-spec-word:sym<Bulgarian> { :i 'понеделник' | ([\w]+) <?{ $0.Str ne 'понеделници' and is-bg-fuzzy-match($0.Str, 'понеделник', 2) }> }
  token mondays-time-spec-word:sym<Bulgarian> { :i 'понеделници' | ([\w]+) <?{ $0.Str ne 'понеделник' and is-bg-fuzzy-match($0.Str, 'понеделници', 2) }> }
  token month-time-spec-word:sym<Bulgarian> { :i 'месец' | ([\w]+) <?{ $0.Str !(elem) <месеци месеца десен> and is-bg-fuzzy-match($0.Str, 'месец', 2) }> }
  token months-time-spec-word:sym<Bulgarian> { :i 'месеци' | ([\w]+) <?{ $0.Str !(elem) <месец месеца> and is-bg-fuzzy-match($0.Str, 'месеци', 2) }> | 'месеца' | ([\w]+) <?{ $0.Str !(elem) <месец месеци> and is-bg-fuzzy-match($0.Str, 'месеца', 2) }> }
  token mother-time-spec-word:sym<Bulgarian> { :i 'майка' | ([\w]+) <?{ $0.Str ne 'май' and is-bg-fuzzy-match($0.Str, 'майка', 2) }> | 'майчин' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'майчин', 2) }> }
  token new-time-spec-word:sym<Bulgarian> { :i 'нов' | ([\w]+) <?{ $0.Str !(elem) <фев пон нова ново нови ное на от> and is-bg-fuzzy-match($0.Str, 'нов', 1) }> | 'нова' | ([\w]+) <?{ $0.Str !(elem) <нов ново нови ное на> and is-bg-fuzzy-match($0.Str, 'нова', 2) }> | 'ново' | ([\w]+) <?{ $0.Str !(elem) <нов нова нови ное> and is-bg-fuzzy-match($0.Str, 'ново', 2) }> | 'нови' | ([\w]+) <?{ $0.Str !(elem) <нов нова ново ное> and is-bg-fuzzy-match($0.Str, 'нови', 2) }> }
  token next-time-spec-word:sym<Bulgarian> { :i 'следващ' | ([\w]+) <?{ $0.Str !(elem) <следваща следващо> and is-bg-fuzzy-match($0.Str, 'следващ', 2) }> | 'следваща' | ([\w]+) <?{ $0.Str !(elem) <следващ следващо> and is-bg-fuzzy-match($0.Str, 'следваща', 2) }> | 'следващо' | ([\w]+) <?{ $0.Str !(elem) <следващ следваща> and is-bg-fuzzy-match($0.Str, 'следващо', 2) }> | 'следващите' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'следващите', 2) }> }
  token nov-time-spec-word:sym<Bulgarian> { :i 'ное' | ([\w]+) <?{ $0.Str !(elem) <пон нов нова ново нови на от> and is-bg-fuzzy-match($0.Str, 'ное', 1) }> }
  token november-time-spec-word:sym<Bulgarian> { :i 'ноември' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'ноември', 2) }> }
  token now-time-spec-word:sym<Bulgarian> { :i 'сега' | ([\w]+) <?{ $0.Str ne 'сеп' and is-bg-fuzzy-match($0.Str, 'сега', 2) }> }
  token oct-time-spec-word:sym<Bulgarian> { :i 'окт' | ([\w]+) <?{ $0.Str !(elem) <от чет> and is-bg-fuzzy-match($0.Str, 'окт', 1) }> }
  token october-time-spec-word:sym<Bulgarian> { :i 'октомври' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'октомври', 2) }> }
  token of-time-spec-word:sym<Bulgarian> { :i 'на' | 'от' }
  token one-time-spec-word:sym<Bulgarian> { :i 'един' | ([\w]+) <?{ $0.Str !(elem) <ден дни една едно едни> and is-bg-fuzzy-match($0.Str, 'един', 2) }> | 'една' | ([\w]+) <?{ $0.Str !(elem) <ден дни на един едно едни> and is-bg-fuzzy-match($0.Str, 'една', 2) }> | 'едно' | ([\w]+) <?{ $0.Str !(elem) <ден дни един една едни> and is-bg-fuzzy-match($0.Str, 'едно', 2) }> | 'едни' | ([\w]+) <?{ $0.Str !(elem) <ден дни юни един една едно десни> and is-bg-fuzzy-match($0.Str, 'едни', 2) }> }
  token past-time-spec-word:sym<Bulgarian> { :i  'из'? [ 'миналия' | 'миналата' | 'миналато' | 'миналите' ]  }
  token pm-time-spec-word:sym<Bulgarian> { :i  'pm' | 'следобед' | 'следобяд' | 'след' \h+ 'обяд' }
  token ramadan-time-spec-word:sym<Bulgarian> { :i 'рамадан' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'рамадан', 2) }> }
  token right-time-spec-word:sym<Bulgarian> { :i 'вдясно' | ([\w]+) <?{ $0.Str !(elem) <дясна дясно> and is-bg-fuzzy-match($0.Str, 'вдясно', 2) }> | 'десен' | ([\w]+) <?{ $0.Str !(elem) <ден месец десни> and is-bg-fuzzy-match($0.Str, 'десен', 2) }> | 'дясна' | ([\w]+) <?{ $0.Str !(elem) <вдясно дясно десни> and is-bg-fuzzy-match($0.Str, 'дясна', 2) }> | 'дясно' | ([\w]+) <?{ $0.Str !(elem) <вдясно дясна десни> and is-bg-fuzzy-match($0.Str, 'дясно', 2) }> | 'десни' | ([\w]+) <?{ $0.Str !(elem) <ден дни едни десен дясна дясно> and is-bg-fuzzy-match($0.Str, 'десни', 2) }> }
  token sat-time-spec-word:sym<Bulgarian> { :i 'съб' | ([\w]+) <?{ $0.Str !(elem) <сеп сря> and is-bg-fuzzy-match($0.Str, 'съб', 1) }> }
  token saturday-time-spec-word:sym<Bulgarian> { :i 'събота' | ([\w]+) <?{ $0.Str ne 'съботи' and is-bg-fuzzy-match($0.Str, 'събота', 2) }> }
  token saturdays-time-spec-word:sym<Bulgarian> { :i 'съботи' | ([\w]+) <?{ $0.Str ne 'събота' and is-bg-fuzzy-match($0.Str, 'съботи', 2) }> }
  token sep-time-spec-word:sym<Bulgarian> { :i 'сеп' | ([\w]+) <?{ $0.Str !(elem) <след ден дек фев сега съб чет сря> and is-bg-fuzzy-match($0.Str, 'сеп', 1) }> }
  token september-time-spec-word:sym<Bulgarian> { :i 'септември' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'септември', 2) }> }
  token sun-time-spec-word:sym<Bulgarian> { :i 'слънце' | ([\w]+) <?{ $0.Str ne 'слънчев' and is-bg-fuzzy-match($0.Str, 'слънце', 2) }> | 'слънчев' | ([\w]+) <?{ $0.Str !(elem) <слънце слънчева слънчево слънчеви> and is-bg-fuzzy-match($0.Str, 'слънчев', 2) }> | 'слънчева' | ([\w]+) <?{ $0.Str !(elem) <слънчев слънчево слънчеви> and is-bg-fuzzy-match($0.Str, 'слънчева', 2) }> | 'слънчево' | ([\w]+) <?{ $0.Str !(elem) <слънчев слънчева слънчеви> and is-bg-fuzzy-match($0.Str, 'слънчево', 2) }> | 'слънчеви' | ([\w]+) <?{ $0.Str !(elem) <слънчев слънчева слънчево> and is-bg-fuzzy-match($0.Str, 'слънчеви', 2) }> }
  token sunday-time-spec-word:sym<Bulgarian> { :i 'неделя' | ([\w]+) <?{ $0.Str ne 'недели' and is-bg-fuzzy-match($0.Str, 'неделя', 2) }> }
  token sundays-time-spec-word:sym<Bulgarian> { :i 'недели' | ([\w]+) <?{ $0.Str ne 'неделя' and is-bg-fuzzy-match($0.Str, 'недели', 2) }> }
  token thanksgiving-time-spec-word:sym<Bulgarian> { :i  'ден' \h+ 'на' \h+ 'благодарността'  }
  token thu-time-spec-word:sym<Bulgarian> { :i 'чет' | ([\w]+) <?{ $0.Str !(elem) <ден дек фев час окт от сеп> and is-bg-fuzzy-match($0.Str, 'чет', 1) }> }
  token thursday-time-spec-word:sym<Bulgarian> { :i 'четвъртък' | ([\w]+) <?{ $0.Str ne 'четвъртъци' and is-bg-fuzzy-match($0.Str, 'четвъртък', 2) }> }
  token thursdays-time-spec-word:sym<Bulgarian> { :i 'четвъртъци' | ([\w]+) <?{ $0.Str ne 'четвъртък' and is-bg-fuzzy-match($0.Str, 'четвъртъци', 2) }> }
  token today-time-spec-word:sym<Bulgarian> { :i 'днес' | ([\w]+) <?{ $0.Str !(elem) <ден дни дек> and is-bg-fuzzy-match($0.Str, 'днес', 2) }> }
  token tomorrow-time-spec-word:sym<Bulgarian> { :i 'утре' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'утре', 2) }> }
  token tue-time-spec-word:sym<Bulgarian> { :i 'вто' | ([\w]+) <?{ $0.Str ne 'от' and is-bg-fuzzy-match($0.Str, 'вто', 1) }> }
  token tuesday-time-spec-word:sym<Bulgarian> { :i 'вторник' | ([\w]+) <?{ $0.Str ne 'вторници' and is-bg-fuzzy-match($0.Str, 'вторник', 2) }> }
  token tuesdays-time-spec-word:sym<Bulgarian> { :i 'вторници' | ([\w]+) <?{ $0.Str ne 'вторник' and is-bg-fuzzy-match($0.Str, 'вторници', 2) }> }
  token wed-time-spec-word:sym<Bulgarian> { :i 'сря' | ([\w]+) <?{ $0.Str !(elem) <съб сеп сряда> and is-bg-fuzzy-match($0.Str, 'сря', 1) }> }
  token wednesday-time-spec-word:sym<Bulgarian> { :i 'сряда' | ([\w]+) <?{ $0.Str !(elem) <сря среди> and is-bg-fuzzy-match($0.Str, 'сряда', 2) }> }
  token wednesdays-time-spec-word:sym<Bulgarian> { :i 'среди' | ([\w]+) <?{ $0.Str !(elem) <след преди сряда> and is-bg-fuzzy-match($0.Str, 'среди', 2) }> }
  token week-time-spec-word:sym<Bulgarian> { :i 'седмица' | ([\w]+) <?{ $0.Str ne 'седмици' and is-bg-fuzzy-match($0.Str, 'седмица', 2) }> }
  token weeks-time-spec-word:sym<Bulgarian> { :i 'седмици' | ([\w]+) <?{ $0.Str ne 'седмица' and is-bg-fuzzy-match($0.Str, 'седмици', 2) }> }
  token within-time-spec-word:sym<Bulgarian> { :i  'през' | 'докато' | 'в' \h+ 'рамките' \h+ 'на'  }
  token year-time-spec-word:sym<Bulgarian> { :i 'година' | ([\w]+) <?{ $0.Str ne 'години' and is-bg-fuzzy-match($0.Str, 'година', 2) }> }
  token years-time-spec-word:sym<Bulgarian> { :i 'години' | ([\w]+) <?{ $0.Str ne 'година' and is-bg-fuzzy-match($0.Str, 'години', 2) }> }
  token yesterday-time-spec-word:sym<Bulgarian> { :i 'вчера' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'вчера', 2) }> }
}

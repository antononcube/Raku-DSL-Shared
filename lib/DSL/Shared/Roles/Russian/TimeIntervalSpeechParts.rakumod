# I am not sure should we have these time interval speech parts separated from the CommonSpeechParts.rakumod.
# One advantage of combining the files is that the finding the nearest neighbors is very direct
# and straightforward with the CLI add-token-fuzzy-matching.

use v6.d;
use DSL::Shared::Utilities::DeterminedWordsMatching;

role DSL::Shared::Roles::Russian::TimeIntervalSpeechParts {

  token after-time-spec-word:sym<Russian> { :i 'след' | ([\w]+) <?{ $0.Str !(elem) <сен среда среды> and is-ru-fuzzy-match($0.Str, 'след', 2) }> }
  token ago-time-spec-word:sym<Russian> { :i 'преди' | ([\w]+) <?{ $0.Str !(elem) <прежде среда среды> and is-ru-fuzzy-match($0.Str, 'преди', 2) }> }
  token am-time-spec-word:sym<Russian> { :i 'am' | 'утро' | ([\w]+) <?{ $0.Str !(elem) <утра вто> and is-ru-fuzzy-match($0.Str, 'утро', 2) }> | 'утра' | ([\w]+) <?{ $0.Str ne 'утро' and is-ru-fuzzy-match($0.Str, 'утра', 2) }> }
  token apr-time-spec-word:sym<Russian> { :i 'апр' | ([\w]+) <?{ $0.Str !(elem) <април авг мар> and is-ru-fuzzy-match($0.Str, 'апр', 1) }> }
  token april-time-spec-word:sym<Russian> { :i 'април' | ([\w]+) <?{ $0.Str ne 'апр' and is-ru-fuzzy-match($0.Str, 'април', 2) }> }
  token aug-time-spec-word:sym<Russian> { :i 'авг' | ([\w]+) <?{ $0.Str ne 'апр' and is-ru-fuzzy-match($0.Str, 'авг', 1) }> }
  token august-time-spec-word:sym<Russian> { :i 'август' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'август', 2) }> }
  token before-time-spec-word:sym<Russian> { :i 'прежде' | ([\w]+) <?{ $0.Str ne 'преди' and is-ru-fuzzy-match($0.Str, 'прежде', 2) }> }
  token between-time-spec-word:sym<Russian> { :i 'между' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'между', 2) }> }
  token christmas-time-spec-word:sym<Russian> { :i 'рождество' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'рождество', 2) }> }
  token day-time-spec-word:sym<Russian> { :i 'ден' | ([\w]+) <?{ $0.Str !(elem) <дни дек фев пон один дясен десни сен чет> and is-ru-fuzzy-match($0.Str, 'ден', 1) }> }
  token days-time-spec-word:sym<Russian> { :i 'дни' | ([\w]+) <?{ $0.Str !(elem) <ден дек янв ян. на один одна одно одни десни> and is-ru-fuzzy-match($0.Str, 'дни', 1) }> }
  token dec-time-spec-word:sym<Russian> { :i 'дек' | ([\w]+) <?{ $0.Str !(elem) <ден дни фев сен чет> and is-ru-fuzzy-match($0.Str, 'дек', 1) }> }
  token december-time-spec-word:sym<Russian> { :i 'декември' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'декември', 2) }> }
  token during-time-spec-word:sym<Russian> { :i  'во' \h+ 'время'  }
  token feb-time-spec-word:sym<Russian> { :i 'фев' | ([\w]+) <?{ $0.Str !(elem) <ден дек янв сен чет> and is-ru-fuzzy-match($0.Str, 'фев', 1) }> }
  token february-time-spec-word:sym<Russian> { :i 'февраль' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'февраль', 2) }> }
  token few-time-spec-word:sym<Russian> { :i 'несколько' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'несколько', 2) }> }
  token fri-time-spec-word:sym<Russian> { :i 'пятница' | ([\w]+) <?{ $0.Str ne 'пятниц' and is-ru-fuzzy-match($0.Str, 'пятница', 2) }> }
  token friday-time-spec-word:sym<Russian> { :i 'пятница' | ([\w]+) <?{ $0.Str ne 'пятниц' and is-ru-fuzzy-match($0.Str, 'пятница', 2) }> }
  token fridays-time-spec-word:sym<Russian> { :i 'пятниц' | ([\w]+) <?{ $0.Str ne 'пятница' and is-ru-fuzzy-match($0.Str, 'пятниц', 2) }> }
  token hour-time-spec-word:sym<Russian> { :i 'час' | ([\w]+) <?{ $0.Str !(elem) <часы мар май на чет> and is-ru-fuzzy-match($0.Str, 'час', 1) }> }
  token hours-time-spec-word:sym<Russian> { :i 'часы' | ([\w]+) <?{ $0.Str ne 'час' and is-ru-fuzzy-match($0.Str, 'часы', 2) }> }
  token jan-time-spec-word:sym<Russian> { :i 'янв' | ([\w]+) <?{ $0.Str !(elem) <дни фев ян. на> and is-ru-fuzzy-match($0.Str, 'янв', 1) }> | 'ян.' | ([\w]+) <?{ $0.Str !(elem) <дни янв на> and is-ru-fuzzy-match($0.Str, 'ян.', 1) }> }
  token january-time-spec-word:sym<Russian> { :i 'январь' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'январь', 2) }> }
  token jul-time-spec-word:sym<Russian> { :i 'июль' | ([\w]+) <?{ $0.Str ne 'июнь' and is-ru-fuzzy-match($0.Str, 'июль', 2) }> }
  token july-time-spec-word:sym<Russian> { :i 'июль' | ([\w]+) <?{ $0.Str ne 'июнь' and is-ru-fuzzy-match($0.Str, 'июль', 2) }> }
  token jun-time-spec-word:sym<Russian> { :i 'июнь' | ([\w]+) <?{ $0.Str !(elem) <июль жизнь> and is-ru-fuzzy-match($0.Str, 'июнь', 2) }> }
  token june-time-spec-word:sym<Russian> { :i 'июнь' | ([\w]+) <?{ $0.Str !(elem) <июль жизнь> and is-ru-fuzzy-match($0.Str, 'июнь', 2) }> }
  token just-time-spec-word:sym<Russian> { :i 'только' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'только', 2) }> }
  token last-time-spec-word:sym<Russian> { :i 'последний' | ([\w]+) <?{ $0.Str !(elem) <последная последное последние> and is-ru-fuzzy-match($0.Str, 'последний', 2) }> | 'последная' | ([\w]+) <?{ $0.Str !(elem) <последний последное последние> and is-ru-fuzzy-match($0.Str, 'последная', 2) }> | 'последное' | ([\w]+) <?{ $0.Str !(elem) <последний последная последние> and is-ru-fuzzy-match($0.Str, 'последное', 2) }> | 'последние' | ([\w]+) <?{ $0.Str !(elem) <последний последная последное> and is-ru-fuzzy-match($0.Str, 'последние', 2) }> }
  token lifetime-time-spec-word:sym<Russian> { :i 'жизнь' | ([\w]+) <?{ $0.Str !(elem) <июнь жизни> and is-ru-fuzzy-match($0.Str, 'жизнь', 2) }> }
  token lifetimes-time-spec-word:sym<Russian> { :i 'жизни' | ([\w]+) <?{ $0.Str ne 'жизнь' and is-ru-fuzzy-match($0.Str, 'жизни', 2) }> }
  token lincoln-time-spec-word:sym<Russian> { :i 'линколн' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'линколн', 2) }> }
  token mar-time-spec-word:sym<Russian> { :i 'мар' | ([\w]+) <?{ $0.Str !(elem) <апр час март май мать на> and is-ru-fuzzy-match($0.Str, 'мар', 1) }> }
  token march-time-spec-word:sym<Russian> { :i 'март' | ([\w]+) <?{ $0.Str !(elem) <мар май мать> and is-ru-fuzzy-match($0.Str, 'март', 2) }> }
  token may-time-spec-word:sym<Russian> { :i 'май' | ([\w]+) <?{ $0.Str !(elem) <час мар март мать на> and is-ru-fuzzy-match($0.Str, 'май', 1) }> }
  token memorial-time-spec-word:sym<Russian> { :i 'памятный' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'памятный', 2) }> }
  token mon-time-spec-word:sym<Russian> { :i 'пон' | ([\w]+) <?{ $0.Str !(elem) <ден ноя от сен год> and is-ru-fuzzy-match($0.Str, 'пон', 1) }> }
  token monday-time-spec-word:sym<Russian> { :i 'понедельник' | ([\w]+) <?{ $0.Str ne 'понедельники' and is-ru-fuzzy-match($0.Str, 'понедельник', 2) }> }
  token mondays-time-spec-word:sym<Russian> { :i 'понедельники' | ([\w]+) <?{ $0.Str ne 'понедельник' and is-ru-fuzzy-match($0.Str, 'понедельники', 2) }> }
  token month-time-spec-word:sym<Russian> { :i 'месяц' | ([\w]+) <?{ $0.Str ne 'месяцы' and is-ru-fuzzy-match($0.Str, 'месяц', 2) }> }
  token months-time-spec-word:sym<Russian> { :i 'месяцы' | ([\w]+) <?{ $0.Str ne 'месяц' and is-ru-fuzzy-match($0.Str, 'месяцы', 2) }> | 'месяц' | ([\w]+) <?{ $0.Str ne 'месяцы' and is-ru-fuzzy-match($0.Str, 'месяц', 2) }> }
  token mother-time-spec-word:sym<Russian> { :i 'мать' | ([\w]+) <?{ $0.Str !(elem) <мар март май> and is-ru-fuzzy-match($0.Str, 'мать', 2) }> | 'материнский' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'материнский', 2) }> }
  token new-time-spec-word:sym<Russian> { :i 'новый' | ([\w]+) <?{ $0.Str !(elem) <новая новое новые> and is-ru-fuzzy-match($0.Str, 'новый', 2) }> | 'новая' | ([\w]+) <?{ $0.Str !(elem) <новый новое новые ноя> and is-ru-fuzzy-match($0.Str, 'новая', 2) }> | 'новое' | ([\w]+) <?{ $0.Str !(elem) <новый новая новые> and is-ru-fuzzy-match($0.Str, 'новое', 2) }> | 'новые' | ([\w]+) <?{ $0.Str !(elem) <новый новая новое> and is-ru-fuzzy-match($0.Str, 'новые', 2) }> }
  token next-time-spec-word:sym<Russian> { :i 'следующий' | ([\w]+) <?{ $0.Str !(elem) <следующая следующое следующие> and is-ru-fuzzy-match($0.Str, 'следующий', 2) }> | 'следующая' | ([\w]+) <?{ $0.Str !(elem) <следующий следующое следующие> and is-ru-fuzzy-match($0.Str, 'следующая', 2) }> | 'следующое' | ([\w]+) <?{ $0.Str !(elem) <следующий следующая следующие> and is-ru-fuzzy-match($0.Str, 'следующое', 2) }> | 'следующие' | ([\w]+) <?{ $0.Str !(elem) <следующий следующая следующое> and is-ru-fuzzy-match($0.Str, 'следующие', 2) }> }
  token nov-time-spec-word:sym<Russian> { :i 'ноя' | ([\w]+) <?{ $0.Str !(elem) <пон новая на от сря год> and is-ru-fuzzy-match($0.Str, 'ноя', 1) }> }
  token november-time-spec-word:sym<Russian> { :i 'ноябрь' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'ноябрь', 2) }> }
  token now-time-spec-word:sym<Russian> { :i 'сейчас' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'сейчас', 2) }> }
  token oct-time-spec-word:sym<Russian> { :i 'окт' | ([\w]+) <?{ $0.Str !(elem) <от чет> and is-ru-fuzzy-match($0.Str, 'окт', 1) }> }
  token october-time-spec-word:sym<Russian> { :i 'октябрь' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'октябрь', 2) }> }
  token of-time-spec-word:sym<Russian> { :i 'на' | 'от' }
  token one-time-spec-word:sym<Russian> { :i 'один' | ([\w]+) <?{ $0.Str !(elem) <ден дни одна одно одни> and is-ru-fuzzy-match($0.Str, 'один', 2) }> | 'одна' | ([\w]+) <?{ $0.Str !(elem) <дни на один одно одни> and is-ru-fuzzy-match($0.Str, 'одна', 2) }> | 'одно' | ([\w]+) <?{ $0.Str !(elem) <дни один одна одни> and is-ru-fuzzy-match($0.Str, 'одно', 2) }> | 'одни' | ([\w]+) <?{ $0.Str !(elem) <дни один одна одно> and is-ru-fuzzy-match($0.Str, 'одни', 2) }> }
  token past-time-spec-word:sym<Russian> { :i 'последний' | ([\w]+) <?{ $0.Str !(elem) <последная последное последние> and is-ru-fuzzy-match($0.Str, 'последний', 2) }> | 'прошлый' | ([\w]+) <?{ $0.Str ne 'прошлая' and is-ru-fuzzy-match($0.Str, 'прошлый', 2) }> | 'прошлая' | ([\w]+) <?{ $0.Str ne 'прошлый' and is-ru-fuzzy-match($0.Str, 'прошлая', 2) }> | 'прошедшее' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'прошедшее', 2) }> | 'миналите' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'миналите', 2) }> }
  token pm-time-spec-word:sym<Russian> { :i  'pm' | 'полдень' | 'после' \h+ 'полудня'  }
  token ramadan-time-spec-word:sym<Russian> { :i 'рамадан' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'рамадан', 2) }> }
  token right-time-spec-word:sym<Russian> { :i 'вдясно' | ([\w]+) <?{ $0.Str !(elem) <дясна дясно> and is-ru-fuzzy-match($0.Str, 'вдясно', 2) }> | 'дясен' | ([\w]+) <?{ $0.Str !(elem) <ден дясна дясно сен> and is-ru-fuzzy-match($0.Str, 'дясен', 2) }> | 'дясна' | ([\w]+) <?{ $0.Str !(elem) <вдясно дясен дясно десни> and is-ru-fuzzy-match($0.Str, 'дясна', 2) }> | 'дясно' | ([\w]+) <?{ $0.Str !(elem) <вдясно дясен дясна десни> and is-ru-fuzzy-match($0.Str, 'дясно', 2) }> | 'десни' | ([\w]+) <?{ $0.Str !(elem) <ден дни дясна дясно> and is-ru-fuzzy-match($0.Str, 'десни', 2) }> }
  token sat-time-spec-word:sym<Russian> { :i 'суб' | ([\w]+) <?{ $0.Str !(elem) <сен сря> and is-ru-fuzzy-match($0.Str, 'суб', 1) }> }
  token saturday-time-spec-word:sym<Russian> { :i 'суббота' | ([\w]+) <?{ $0.Str ne 'субботы' and is-ru-fuzzy-match($0.Str, 'суббота', 2) }> }
  token saturdays-time-spec-word:sym<Russian> { :i 'субботы' | ([\w]+) <?{ $0.Str ne 'суббота' and is-ru-fuzzy-match($0.Str, 'субботы', 2) }> }
  token sep-time-spec-word:sym<Russian> { :i 'сен' | ([\w]+) <?{ $0.Str !(elem) <след ден дек фев пон дясен суб чет сря> and is-ru-fuzzy-match($0.Str, 'сен', 1) }> }
  token september-time-spec-word:sym<Russian> { :i 'сентябрь' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'сентябрь', 2) }> }
  token sun-time-spec-word:sym<Russian> { :i 'солнце' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'солнце', 2) }> | 'солнечный' | ([\w]+) <?{ $0.Str !(elem) <солнечная солнечное солнечные> and is-ru-fuzzy-match($0.Str, 'солнечный', 2) }> | 'солнечная' | ([\w]+) <?{ $0.Str !(elem) <солнечный солнечное солнечные> and is-ru-fuzzy-match($0.Str, 'солнечная', 2) }> | 'солнечное' | ([\w]+) <?{ $0.Str !(elem) <солнечный солнечная солнечные> and is-ru-fuzzy-match($0.Str, 'солнечное', 2) }> | 'солнечные' | ([\w]+) <?{ $0.Str !(elem) <солнечный солнечная солнечное> and is-ru-fuzzy-match($0.Str, 'солнечные', 2) }> }
  token sunday-time-spec-word:sym<Russian> { :i 'воскресенье' | ([\w]+) <?{ $0.Str ne 'воскресенья' and is-ru-fuzzy-match($0.Str, 'воскресенье', 2) }> }
  token sundays-time-spec-word:sym<Russian> { :i 'воскресенья' | ([\w]+) <?{ $0.Str ne 'воскресенье' and is-ru-fuzzy-match($0.Str, 'воскресенья', 2) }> }
  token thanksgiving-time-spec-word:sym<Russian> { :i  'день' \h+ 'благодарения'  }
  token thu-time-spec-word:sym<Russian> { :i 'чет' | ([\w]+) <?{ $0.Str !(elem) <ден дек фев час окт от сен> and is-ru-fuzzy-match($0.Str, 'чет', 1) }> }
  token thursday-time-spec-word:sym<Russian> { :i 'четверг' | ([\w]+) <?{ $0.Str ne 'четверги' and is-ru-fuzzy-match($0.Str, 'четверг', 2) }> }
  token thursdays-time-spec-word:sym<Russian> { :i 'четверги' | ([\w]+) <?{ $0.Str ne 'четверг' and is-ru-fuzzy-match($0.Str, 'четверги', 2) }> }
  token today-time-spec-word:sym<Russian> { :i 'сегодня' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'сегодня', 2) }> }
  token tomorrow-time-spec-word:sym<Russian> { :i 'завтра' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'завтра', 2) }> }
  token tue-time-spec-word:sym<Russian> { :i 'вто' | ([\w]+) <?{ $0.Str !(elem) <утро от> and is-ru-fuzzy-match($0.Str, 'вто', 1) }> }
  token tuesday-time-spec-word:sym<Russian> { :i 'вторник' | ([\w]+) <?{ $0.Str ne 'вторники' and is-ru-fuzzy-match($0.Str, 'вторник', 2) }> }
  token tuesdays-time-spec-word:sym<Russian> { :i 'вторники' | ([\w]+) <?{ $0.Str ne 'вторник' and is-ru-fuzzy-match($0.Str, 'вторники', 2) }> }
  token wed-time-spec-word:sym<Russian> { :i 'сря' | ([\w]+) <?{ $0.Str !(elem) <ноя суб сен> and is-ru-fuzzy-match($0.Str, 'сря', 1) }> }
  token wednesday-time-spec-word:sym<Russian> { :i 'среда' | ([\w]+) <?{ $0.Str !(elem) <след преди среды> and is-ru-fuzzy-match($0.Str, 'среда', 2) }> }
  token wednesdays-time-spec-word:sym<Russian> { :i 'среды' | ([\w]+) <?{ $0.Str !(elem) <след преди среда> and is-ru-fuzzy-match($0.Str, 'среды', 2) }> }
  token week-time-spec-word:sym<Russian> { :i 'неделя' | ([\w]+) <?{ $0.Str ne 'недел' and is-ru-fuzzy-match($0.Str, 'неделя', 2) }> }
  token weekend-time-spec-word:sym<Russian> { :i  'конец' \h+ 'недели' | 'уик-енд' | 'уикенд' | 'суббоота' \h+ 'и' \h+ 'воскресееньея'  }
  token weeks-time-spec-word:sym<Russian> { :i 'недел' | ([\w]+) <?{ $0.Str ne 'неделя' and is-ru-fuzzy-match($0.Str, 'недел', 2) }> }
  token within-time-spec-word:sym<Russian> { :i  'в' | 'докато' | 'в' \h+ 'то' \h+ 'время' \h+ 'как'  }
  token year-time-spec-word:sym<Russian> { :i 'год' | ([\w]+) <?{ $0.Str !(elem) <пон ноя от годы> and is-ru-fuzzy-match($0.Str, 'год', 1) }> }
  token years-time-spec-word:sym<Russian> { :i 'годы' | ([\w]+) <?{ $0.Str ne 'год' and is-ru-fuzzy-match($0.Str, 'годы', 2) }> }
  token yesterday-time-spec-word:sym<Russian> { :i 'вчера' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'вчера', 2) }> }
}

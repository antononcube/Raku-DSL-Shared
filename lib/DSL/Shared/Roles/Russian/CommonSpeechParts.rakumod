# ============================================================
# This role class is generated from the file
#   DSL::Shared::Roles::Russian::CommonSpeechParts-template
# using the function AddFuzzyMatch CLI from
#   Grammar::TokenProcessing
# ============================================================

use v6.d;

use DSL::Shared::Utilities::DeterminedWordsMatching;

role DSL::Shared::Roles::Russian::CommonSpeechParts {
    # Single words
    token ID-noun:sym<Russian> { :i  'ID' | 'id' }
    token IDENTIFIER-adjective:sym<Russian> { :i  'IDENTIFIER' | 'id' | 'id' | 'id'  }
    token IDENTIFIER-noun:sym<Russian> { :i  'IDENTIFIER' | 'идентификер'  }
    token MODULE-noun:sym<Russian> { :i  'MODULE' | 'модуль'  }
    token TARGET-noun:sym<Russian> { :i  'TARGET' | 'цель'  }
    token USER-noun:sym<Russian> { :i  'USER' | 'пользователь'  }
    token a-determiner:sym<Russian> { :i '' }
    token add-verb:sym<Russian> { :i  'собрать' | 'добавить'  }
    token adhere-verb:sym<Russian> { :i  'держит' | 'согласно'  }
    token adjacency-noun:sym<Russian> { :i 'адъютантский' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'адъютантский', 2) }> }
    token adjacent-adjective:sym<Russian> { :i  'адъютантский' | 'адъютантский'  }
    token algorithm-noun:sym<Russian> { :i 'алгоритм' | ([\w]+) <?{ $0.Str ne 'алгоритмы' and is-ru-fuzzy-match($0.Str, 'алгоритм', 2) }> }
    token algorithms-noun:sym<Russian> { :i 'алгоритмы' | ([\w]+) <?{ $0.Str ne 'алгоритм' and is-ru-fuzzy-match($0.Str, 'алгоритмы', 2) }> }
    token all-determiner:sym<Russian> { :i  'каждый' | 'все'  }
    token and-conjunction:sym<Russian> { :i 'и' }
    token annex-verb:sym<Russian> { :i 'соединить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'соединить', 2) }> }
    token append-verb:sym<Russian> { :i 'добавить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'добавить', 2) }> }
    token apply-verb:sym<Russian> { :i 'прикрепить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'прикрепить', 2) }> }
    token are-verb:sym<Russian> { :i 'есть' | ([\w]+) <?{ $0.Str !(elem) <ось часть> and is-ru-fuzzy-match($0.Str, 'есть', 2) }> }
    token array-noun:sym<Russian> { :i 'массив' | ([\w]+) <?{ $0.Str ne 'массивы' and is-ru-fuzzy-match($0.Str, 'массив', 2) }> }
    token arrays-noun:sym<Russian> { :i 'массивы' | ([\w]+) <?{ $0.Str ne 'массив' and is-ru-fuzzy-match($0.Str, 'массивы', 2) }> }
    token as-preposition:sym<Russian> { :i 'как' | ([\w]+) <?{ $0.Str !(elem) <код наш раз> and is-ru-fuzzy-match($0.Str, 'как', 1) }> }
    token assign-verb:sym<Russian> { :i 'назначить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'назначить', 2) }> }
    token at-preposition:sym<Russian> { :i 'затем' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'затем', 2) }> }
    token automatic:sym<Russian> { :i  'автоматический' | 'автоматическая' | 'автоматически' | 'автоматические'   }
    token away-adverb:sym<Russian> { :i 'away' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'away', 2) }> }
    token axes-noun:sym<Russian> { :i 'оси' | ([\w]+) <?{ $0.Str !(elem) <и ось или> and is-ru-fuzzy-match($0.Str, 'оси', 1) }> }
    token axis-noun:sym<Russian> { :i 'ось' | ([\w]+) <?{ $0.Str !(elem) <есть оси> and is-ru-fuzzy-match($0.Str, 'ось', 1) }> }
    token be-verb:sym<Russian> { :i 'be' }
    token both-determiner:sym<Russian> { :i  'оба' | 'одновременно' | 'вместе'  }
    token bottom-noun:sym<Russian> { :i  'дно' | 'най-ниско'  }
    token broaden-verb:sym<Russian> { :i 'расширить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'расширить', 2) }> }
    token by-preposition:sym<Russian> { :i  'от' | 'с' | 'через'  }
    token calculation:sym<Russian> { :i 'расчет' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'расчет', 2) }> }
    token case-noun:sym<Russian> { :i 'случай' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'случай', 2) }> }
    token cases-noun:sym<Russian> { :i 'дела' | ([\w]+) <?{ $0.Str !(elem) <дата делай для цель веса> and is-ru-fuzzy-match($0.Str, 'дела', 2) }> }
    token channel-adjective:sym<Russian> { :i  'каналный' | 'каналная' | 'каналные' | 'каналное'  }
    token channel-noun:sym<Russian> { :i 'канал' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'канал', 2) }> }
    token chart-noun:sym<Russian> { :i  'чертеж' | 'график' | 'карта'  }
    token chart-verb:sym<Russian> { :i  'нарисовать' | 'нарисовать'  }
    token classify-verb:sym<Russian> { :i 'классифицировать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'классифицировать', 2) }> }
    token clear-verb:sym<Russian> { :i  'чистый' | 'очистить'  }
    token cluster:sym<Russian> { :i <cluster-noun> }
    token cluster-noun:sym<Russian> { :i  'кластер' | 'группа'  }
    token clusters-noun:sym<Russian> { :i  'кластеры' | 'группы'  }
    token code-noun:sym<Russian> { :i 'код' | ([\w]+) <?{ $0.Str !(elem) <как коды топ когда> and is-ru-fuzzy-match($0.Str, 'код', 1) }> }
    token codes-noun:sym<Russian> { :i 'коды' | ([\w]+) <?{ $0.Str !(elem) <код когда> and is-ru-fuzzy-match($0.Str, 'коды', 2) }> }
    token column-noun:sym<Russian> { :i 'колонка' | ([\w]+) <?{ $0.Str ne 'колонки' and is-ru-fuzzy-match($0.Str, 'колонка', 2) }> }
    token columns:sym<Russian> { :i <columns-noun> }
    token columns-noun:sym<Russian> { :i 'колонки' | ([\w]+) <?{ $0.Str ne 'колонка' and is-ru-fuzzy-match($0.Str, 'колонки', 2) }> }
    token complete-adjective:sym<Russian> { :i  'полное' | 'полные'  }
    token compute-directive:sym<Russian> { :i  'рассчитать' | 'найти' | 'рассчитать' | 'рассчитать'  }
    token config-noun:sym<Russian> { :i 'настроить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'настроить', 2) }> }
    token configuration-adjective:sym<Russian> { :i  'настройка' | 'настройка' | 'настройка' | 'настройка'  }
    token configuration-noun:sym<Russian> { :i 'конфигурация' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'конфигурация', 2) }> }
    token connect-verb:sym<Russian> { :i  'связать' | 'связать'  }
    token consider-verb:sym<Russian> { :i 'проверять' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'проверять', 2) }> }
    token context-noun:sym<Russian> { :i 'справочная информация' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'справочная информация', 2) }> }
    token contingency-noun:sym<Russian> { :i  'условный' | 'перекрестные' \h+ 'ссылки' \h+ 'табуляция'  }
    token convert-verb:sym<Russian> { :i 'конвертировать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'конвертировать', 2) }> }
    token conveyor-adjective:sym<Russian> { :i  'конвейер' | 'конвейер' | 'конвейер' | 'конвейер'  }
    token conveyor-noun:sym<Russian> { :i 'конвейер' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'конвейер', 2) }> }
    token count-verb:sym<Russian> { :i  'граф' | 'число' | 'штука' | 'размер'  }
    token counts-noun:sym<Russian> { :i  'количество' | 'числа' | 'штуки' | 'размеры'  }
    token create:sym<Russian> { :i  'создать' | 'сделать'  }
    token create-directive:sym<Russian> { :i  <create-verb> | 'сделать'  }
    token create-verb:sym<Russian> { :i 'создать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'создать', 2) }> }
    token creation-noun:sym<Russian> { :i  'существо' | 'дело'  }
    token current-adjective:sym<Russian> { :i  'текущий' | 'текущий' | 'текущий'  }
    token data-adjective:sym<Russian> { :i  'данные' | 'данновые' | 'данново' | 'данные'  }
    token data-noun:sym<Russian> { :i  'данные' | 'данные' | 'данновые'  }
    token dataset:sym<Russian> { :i <dataset-noun> }
    token dataset-noun:sym<Russian> { :i  'набор' \h+ 'данных' | <array-noun> \h+ 'от' \h+ <data-noun> | <data-adjective> \h+ <array-noun> }
    token datasets-noun:sym<Russian> { :i  'набор' \h+ 'данных' | <arrays-noun> \h+ 'от' \h+ <data-noun> | <data-adjective> \h+ <arrays-noun>  }
    token date-adjective:sym<Russian> { :i  'даты' | 'дата' | 'дата' | 'дата'  }
    token date-noun:sym<Russian> { :i 'дата' | ([\w]+) <?{ $0.Str !(elem) <дела даты рама> and is-ru-fuzzy-match($0.Str, 'дата', 2) }> }
    token dates-noun:sym<Russian> { :i 'даты' | ([\w]+) <?{ $0.Str !(elem) <дата рамы> and is-ru-fuzzy-match($0.Str, 'даты', 2) }> }
    token datum-noun:sym<Russian> { :i 'данные' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'данные', 2) }> }
    token default:sym<Russian> { :i <default-noun> }
    token default-noun:sym<Russian> { :i  'по' \h+ 'умолчанию' | 'умолчаный' | 'умолчаная' | 'умолчаные' | 'умолчаное'  }
    token delete-directive:sym<Russian> { :i  'удалить' | 'выбросить' | 'удалить'  }
    token detect-verb:sym<Russian> { :i  'создать' | 'найти' | 'обнаружить'  }
    token diagram:sym<Russian> { :i <diagram-synonyms> }
    token diagram-noun:sym<Russian> { :i 'график' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'график', 2) }> }
    token diagram-synonyms:sym<Russian> { :i  <diagram-noun> | <plot-noun> | <plots-noun> | <graph-noun> | <chart-noun>  }
    token dictionary-noun:sym<Russian> { :i 'словарь' | ([\w]+) <?{ $0.Str ne 'слова' and is-ru-fuzzy-match($0.Str, 'словарь', 2) }> }
    token difference:sym<Russian> { :i 'разница' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'разница', 2) }> }
    token dimension-noun:sym<Russian> { :i 'размерность' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'размерность', 2) }> }
    token dimensions-noun:sym<Russian> { :i 'размеры' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'размеры', 2) }> }
    token directly-adverb:sym<Russian> { :i 'непосредственно' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'непосредственно', 2) }> }
    token display-directive:sym<Russian> { :i  <display-verb> | 'показать' | 'echo'  }
    token display-verb:sym<Russian> { :i 'показать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'показать', 2) }> }
    token distance-noun:sym<Russian> { :i 'расстояние' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'расстояние', 2) }> }
    token do-verb:sym<Russian> { :i 'делай' | ([\w]+) <?{ $0.Str ne 'дела' and is-ru-fuzzy-match($0.Str, 'делай', 2) }> }
    token document-noun:sym<Russian> { :i 'документ' | ([\w]+) <?{ $0.Str ne 'документы' and is-ru-fuzzy-match($0.Str, 'документ', 2) }> }
    token documents-noun:sym<Russian> { :i 'документы' | ([\w]+) <?{ $0.Str ne 'документ' and is-ru-fuzzy-match($0.Str, 'документы', 2) }> }
    token domain-noun:sym<Russian> { :i  'домен' | 'область'  }
    token drop-verb:sym<Russian> { :i  'выбросить' | 'забудьте' | 'выбросить'  }
    token during-preposition:sym<Russian> { :i  'в' \h+ 'то' \h+ 'время' | 'во' \h+ 'время' | 'через'  }
    token each-determiner:sym<Russian> { :i  'каждый' | 'каждый' | 'каждый'  }
    token echo-verb:sym<Russian> { :i 'echo' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'echo', 2) }> }
    token element:sym<Russian> { :i <element-noun> }
    token element-noun:sym<Russian> { :i 'элемент' | ([\w]+) <?{ $0.Str ne 'элементы' and is-ru-fuzzy-match($0.Str, 'элемент', 2) }> }
    token elements:sym<Russian> { :i <elements-noun> }
    token elements-noun:sym<Russian> { :i 'элементы' | ([\w]+) <?{ $0.Str ne 'элемент' and is-ru-fuzzy-match($0.Str, 'элементы', 2) }> }
    token empty-noun:sym<Russian> { :i  'пустое' | 'пустота'  }
    token empty-verb:sym<Russian> { :i  'пустые' | <empty-noun>  }
    token every-determiner:sym<Russian> { :i  'каждый' | 'каждая' | 'каждые' | 'каждое'  }
    token extend-verb:sym<Russian> { :i 'расширить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'расширить', 2) }> }
    token extract-directive:sym<Russian> { :i 'извлеч' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'извлеч', 2) }> }
    token filter:sym<Russian> { :i <filter-verb> }
    token filter-noun:sym<Russian> { :i <filter-verb> }
    token filter-verb:sym<Russian> { :i  'фильтр' | 'фильтровать'  }
    token find-verb:sym<Russian> { :i  'поиск' | 'найти'  }
    token first-adjective:sym<Russian> { :i  'первый' | 'первые' | 'первая' | 'первое'  }
    token for-preposition:sym<Russian> { :i  'для' | 'с' | 'на'  }
    token frame-noun:sym<Russian> { :i 'рама' | ([\w]+) <?{ $0.Str !(elem) <дата рамы раз> and is-ru-fuzzy-match($0.Str, 'рама', 2) }> }
    token frames-noun:sym<Russian> { :i 'рамы' | ([\w]+) <?{ $0.Str !(elem) <даты рама раз> and is-ru-fuzzy-match($0.Str, 'рамы', 2) }> }
    token from-preposition:sym<Russian> { :i  'от' | 'с'  }
    token function:sym<Russian> { :i <function-noun> }
    token function-noun:sym<Russian> { :i 'функцию' | ([\w]+) <?{ $0.Str ne 'функции' and is-ru-fuzzy-match($0.Str, 'функцию', 2) }> }
    token functions:sym<Russian> { :i <functions-noun> }
    token functions-noun:sym<Russian> { :i 'функции' | ([\w]+) <?{ $0.Str ne 'функцию' and is-ru-fuzzy-match($0.Str, 'функции', 2) }> }
    token generate-directive:sym<Russian> { :i  <generate-verb> | <create-verb> | 'сделать'  }
    token generate-verb:sym<Russian> { :i 'generai' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'generai', 2) }> }
    token get-verb:sym<Russian> { :i 'получить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'получить', 2) }> }
    token graph-noun:sym<Russian> { :i 'считать' | ([\w]+) <?{ $0.Str ne 'читать' and is-ru-fuzzy-match($0.Str, 'считать', 2) }> }
    token head-adjective:sym<Russian> { :i <head-noun> }
    token head-noun:sym<Russian> { :i  'лоб' | 'направляется'  }
    token high-adjective:sym<Russian> { :i 'высокий' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'высокий', 2) }> }
    token higher-adjective:sym<Russian> { :i 'по-висок' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'по-висок', 2) }> }
    token histogram:sym<Russian> { :i 'гистограмма' | ([\w]+) <?{ $0.Str ne 'гистограммы' and is-ru-fuzzy-match($0.Str, 'гистограмма', 2) }> }
    token histograms:sym<Russian> { :i 'гистограммы' | ([\w]+) <?{ $0.Str ne 'гистограмма' and is-ru-fuzzy-match($0.Str, 'гистограммы', 2) }> }
    token how-adverb:sym<Russian> { :i 'в качестве' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'в качестве', 2) }> }
    token id-noun:sym<Russian> { :i 'заходите' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'заходите', 2) }> }
    token identifier-adjective:sym<Russian> { :i <IDENTIFIER-adjective> }
    token identifier-noun:sym<Russian> { :i <IDENTIFIER-noun> }
    token in-preposition:sym<Russian> { :i  'в' | 'на сайте'  }
    token include-verb:sym<Russian> { :i  'включить' | 'включить'  }
    token ingest-verb:sym<Russian> { :i 'читать' | ([\w]+) <?{ $0.Str ne 'считать' and is-ru-fuzzy-match($0.Str, 'читать', 2) }> }
    token interpreter-noun:sym<Russian> { :i  'переводчик' | 'тезаурус'  }
    token interpreting-adjective:sym<Russian> { :i  'тезаурус' | 'перевод'  }
    token into-preposition:sym<Russian> { :i  'в' | 'на сайте'  }
    token is-verb:sym<Russian> { :i 'е' }
    token it-pronoun:sym<Russian> { :i  'это' | 'какой'  }
    token iterations:sym<Russian> { :i 'итераций' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'итераций', 2) }> }
    token join-verb:sym<Russian> { :i 'соединить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'соединить', 2) }> }
    token join-noun:sym<Russian> { :i  'ссылка' | 'соединение'  }
    token language-noun:sym<Russian> { :i 'язык' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'язык', 2) }> }
    token largest-adjective:sym<Russian> { :i 'най-голям' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'най-голям', 2) }> }
    token last-adjective:sym<Russian> { :i  'последний' | 'последние'  }
    token left-adjective:sym<Russian> { :i  'слева' | 'слева'  | 'слева' | 'слева'  }
    token left-noun:sym<Russian> { :i 'слева' | ([\w]+) <?{ $0.Str !(elem) <слово слова> and is-ru-fuzzy-match($0.Str, 'слева', 2) }> }
    token link-noun:sym<Russian> { :i 'ссылка' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'ссылка', 2) }> }
    token list-noun:sym<Russian> { :i 'список' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'список', 2) }> }
    token load-verb:sym<Russian> { :i 'загрузить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'загрузить', 2) }> }
    token locate-verb:sym<Russian> { :i  'найти' | 'локализовать'  }
    token low-adjective:sym<Russian> { :i  'ниже' | 'низкий'  }
    token lower-adjective:sym<Russian> { :i  'по-долен' | 'ниже'  }
    token make-noun:sym<Russian> { :i 'сделать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'сделать', 2) }> }
    token making-noun:sym<Russian> { :i 'создание' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'создание', 2) }> }
    token manner:sym<Russian> { :i  'способ' | 'способ'  }
    token many-determiner:sym<Russian> { :i 'много' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'много', 2) }> }
    token matrices-noun:sym<Russian> { :i 'матрицы' | ([\w]+) <?{ $0.Str ne 'матрица' and is-ru-fuzzy-match($0.Str, 'матрицы', 2) }> }
    token matrix-noun:sym<Russian> { :i 'матрица' | ([\w]+) <?{ $0.Str ne 'матрицы' and is-ru-fuzzy-match($0.Str, 'матрица', 2) }> }
    token matrixes-noun:sym<Russian> { :i 'матрицы' | ([\w]+) <?{ $0.Str ne 'матрица' and is-ru-fuzzy-match($0.Str, 'матрицы', 2) }> }
    token maximum:sym<Russian> { :i  'макс' | 'максимальный' | 'максимальный'  }
    token message-noun:sym<Russian> { :i 'сообщение' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'сообщение', 2) }> }
    token method-adjective:sym<Russian> { :i  'методный' | 'методная' | 'методное' | 'методные'  }
    token method-noun:sym<Russian> { :i 'метод' | ([\w]+) <?{ $0.Str ne 'методы' and is-ru-fuzzy-match($0.Str, 'метод', 2) }> }
    token methods-noun:sym<Russian> { :i 'методы' | ([\w]+) <?{ $0.Str ne 'метод' and is-ru-fuzzy-match($0.Str, 'методы', 2) }> }
    token minimum:sym<Russian> { :i  'мин' | 'минимум' | 'минимальный'  }
    token missing-adjective:sym<Russian> { :i 'отсутствующие' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'отсутствующие', 2) }> }
    token model-noun:sym<Russian> { :i 'модель' | ([\w]+) <?{ $0.Str ne 'модуль' and is-ru-fuzzy-match($0.Str, 'модель', 2) }> }
    token module-noun:sym<Russian> { :i 'модуль' | ([\w]+) <?{ $0.Str ne 'модель' and is-ru-fuzzy-match($0.Str, 'модуль', 2) }> }
    token my-determiner:sym<Russian> { :i  'мой' | 'моя' | 'мой'  }
    token name-noun:sym<Russian> { :i 'имя' | ([\w]+) <?{ $0.Str !(elem) <и или для им> and is-ru-fuzzy-match($0.Str, 'имя', 1) }> }
    token names-noun:sym<Russian> { :i 'имена' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'имена', 2) }> }
    token nearest-adjective:sym<Russian> { :i  'ближайшие' | 'ближайших'  }
    token neighbors-noun:sym<Russian> { :i 'соседи' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'соседи', 2) }> }
    token no-determiner:sym<Russian> { :i 'без' | ([\w]+) <?{ $0.Str !(elem) <е нет раз вес> and is-ru-fuzzy-match($0.Str, 'без', 1) }> }
    token non-prefix:sym<Russian> { :i 'нет' | ([\w]+) <?{ $0.Str !(elem) <е без наш вес> and is-ru-fuzzy-match($0.Str, 'нет', 1) }> }
    token number-noun:sym<Russian> { :i 'число' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'число', 2) }> }
    token object-noun:sym<Russian> { :i 'объект' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'объект', 2) }> }
    token obtain-verb:sym<Russian> { :i 'извлеч' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'извлеч', 2) }> }
    token of-preposition:sym<Russian> { :i  'для' | 'на'  }
    token off-adverb:sym<Russian> { :i 'без' | ([\w]+) <?{ $0.Str !(elem) <е нет раз вес> and is-ru-fuzzy-match($0.Str, 'без', 1) }> }
    token on-preposition:sym<Russian> { :i  'на' | 'по'  }
    token one-pronoun:sym<Russian> { :i  'один' | 'первое' | 'вещь'  }
    token ones-pronoun:sym<Russian> { :i  'единицы' | 'единиц' | 'вещи'  }
    token or-conjunction:sym<Russian> { :i 'или' | ([\w]+) <?{ $0.Str !(elem) <и оси имя для им> and is-ru-fuzzy-match($0.Str, 'или', 1) }> }
    token our-determiner:sym<Russian> { :i 'наш' | ([\w]+) <?{ $0.Str !(elem) <как нет раз> and is-ru-fuzzy-match($0.Str, 'наш', 1) }> }
    token out-adverb:sym<Russian> { :i  'снаружи' | 'снаружи'   }
    token outlier-adjective:sym<Russian> { :i  'экстраординарный' | 'экстраординарная' | 'экстраординарные' | 'экстраординарное'  }
    token outlier-noun:sym<Russian> { :i  'чрезвычайная' \h+ 'величина' | 'экстраординарный' 'значение'  }
    token outliers-noun:sym<Russian> { :i  'необычный' | 'экстраординарный' 'значения'  }
    token over-preposition:sym<Russian> { :i  'через' | 'через' | 'по'  }
    token parameter-noun:sym<Russian> { :i 'параметр' | ([\w]+) <?{ $0.Str ne 'параметры' and is-ru-fuzzy-match($0.Str, 'параметр', 2) }> }
    token parameters-noun:sym<Russian> { :i 'параметры' | ([\w]+) <?{ $0.Str ne 'параметр' and is-ru-fuzzy-match($0.Str, 'параметры', 2) }> }
    token part-noun:sym<Russian> { :i 'часть' | ([\w]+) <?{ $0.Str ne 'есть' and is-ru-fuzzy-match($0.Str, 'часть', 2) }> }
    token pattern-noun:sym<Russian> { :i 'шаблон' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'шаблон', 2) }> }
    token per-preposition:sym<Russian> { :i 'для' | ([\w]+) <?{ $0.Str !(elem) <дела имя или> and is-ru-fuzzy-match($0.Str, 'для', 1) }> }
    token pipeline-adjective:sym<Russian> { :i  <tape-adjective> | <conveyor-adjective> | <channel-adjective>  }
    token pipeline-noun:sym<Russian> { :i  <tape-noun> | <conveyor-noun> | <channel-noun> | 'потоковая' \h+ 'строка'  }
    token plot-noun:sym<Russian> { :i  'чертеж' | 'графика'  }
    token plots-noun:sym<Russian> { :i  'чертежи' | 'графики'  }
    token position-noun:sym<Russian> { :i 'позиция' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'позиция', 2) }> }
    token pull-noun:sym<Russian> { :i  'извлечено из' | 'потяните'  }
    token pull-verb:sym<Russian> { :i  'извлечено из' | 'подтягивание'  }
    token random-adjective:sym<Russian> { :i 'случайный' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'случайный', 2) }> }
    token records:sym<Russian> { :i 'записи' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'записи', 2) }> }
    token reduce-verb:sym<Russian> { :i 'сократить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'сократить', 2) }> }
    token remove-verb:sym<Russian> { :i 'удалить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'удалить', 2) }> }
    token replace-verb:sym<Russian> { :i  'заменить' | 'заменить'  }
    token represent-directive:sym<Russian> { :i  <represent-verb> | 'нарисовать' | 'отражение'  }
    token represent-verb:sym<Russian> { :i 'представлено' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'представлено', 2) }> }
    token rest-noun:sym<Russian> { :i 'oстаток' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'oстаток', 2) }> }
    token result-noun:sym<Russian> { :i 'результат' | ([\w]+) <?{ $0.Str ne 'результаты' and is-ru-fuzzy-match($0.Str, 'результат', 2) }> }
    token results:sym<Russian> { :i <results-noun> }
    token results-noun:sym<Russian> { :i 'результаты' | ([\w]+) <?{ $0.Str ne 'результат' and is-ru-fuzzy-match($0.Str, 'результаты', 2) }> }
    token reverse-adjective:sym<Russian> { :i  'обратный' | 'повернуть'  }
    token right-adjective:sym<Russian> { :i  'правильно' | 'справа'  }
    token right-noun:sym<Russian> { :i 'правильно' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'правильно', 2) }> }
    token row-noun:sym<Russian> { :i 'строка' | ([\w]+) <?{ $0.Str ne 'строки' and is-ru-fuzzy-match($0.Str, 'строка', 2) }> }
    token rows:sym<Russian> { :i <rows-noun> }
    token rows-noun:sym<Russian> { :i 'строки' | ([\w]+) <?{ $0.Str ne 'строка' and is-ru-fuzzy-match($0.Str, 'строки', 2) }> }
    token run-verb:sym<Russian> { :i  'run' | 'runs'  }
    token running-verb:sym<Russian> { :i 'running' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'running', 2) }> }
    token separate-verb:sym<Russian> { :i 'разделить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'разделить', 2) }> }
    token series-noun:sym<Russian> { :i  'серия' | 'строка' | 'ряд'  }
    token set-directive:sym<Russian> { :i 'назначить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'назначить', 2) }> }
    token set-noun:sym<Russian> { :i 'множество' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'множество', 2) }> }
    token setup-adjective:sym<Russian> { :i  'настроиться' | 'тюнинг' | 'настроиться' | 'тюнинг' | 'инициализация'  }
    token setup-noun:sym<Russian> { :i  'отношение' | 'настроиться' | 'инициализация' | 'подготовка'  }
    token shape-noun:sym<Russian> { :i 'форма' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'форма', 2) }> }
    token show-verb:sym<Russian> { :i  'показать' | 'показать'  }
    token simple:sym<Russian> { :i  'простой' | 'прямой'  }
    token simply-adverb:sym<Russian> { :i 'просто' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'просто', 2) }> }
    token simulate:sym<Russian> { :i 'симулировать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'симулировать', 2) }> }
    token simulate-directive:sym<Russian> { :i <simulate> }
    token simulation:sym<Russian> { :i 'симуляция' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'симуляция', 2) }> }
    token single-adjective:sym<Russian> { :i  'одиночка' | 'один'  }
    token site-noun:sym<Russian> { :i  'место' | 'позиция'  }
    token smallest:sym<Russian> { :i  'най-малък' | 'най-малки'  }
    token smallest-adjective:sym<Russian> { :i  'най-малък' | 'най-малки'   }
    token some-determiner:sym<Russian> { :i  'кто-то' | 'некоторые'  }
    token sparse-adjective:sym<Russian> { :i 'разводненный' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'разводненный', 2) }> }
    token specific-adjective:sym<Russian> { :i 'специфический' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'специфический', 2) }> }
    token split-verb:sym<Russian> { :i 'разделить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'разделить', 2) }> }
    token spot-verb:sym<Russian> { :i 'найти' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'найти', 2) }> }
    token spread-verb:sym<Russian> { :i 'расстелить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'расстелить', 2) }> }
    token statistical:sym<Russian> { :i <statistical-adjective> }
    token statistical-adjective:sym<Russian> { :i 'статистически' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'статистически', 2) }> }
    token statistics-noun:sym<Russian> { :i 'статистика' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'статистика', 2) }> }
    token stats-noun:sym<Russian> { :i 'статс' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'статс', 2) }> }
    token step-noun:sym<Russian> { :i  'шаг' | 'шагом'  }
    token steps-noun:sym<Russian> { :i 'шаги' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'шаги', 2) }> }
    token string-noun:sym<Russian> { :i 'строка' | ([\w]+) <?{ $0.Str ne 'строки' and is-ru-fuzzy-match($0.Str, 'строка', 2) }> }
    token sub-prefix:sym<Russian> { :i  'съб' | 'под'  }
    token summaries:sym<Russian> { :i <summaries-noun> }
    token summaries-noun:sym<Russian> { :i  'рекапс' | 'резюме'  }
    token summarize-directive:sym<Russian> { :i  'итог' | 'обобщить'  }
    token summary:sym<Russian> { :i <summary-noun> }
    token summary-noun:sym<Russian> { :i  'итог' | 'резюме'  }
    token system-noun:sym<Russian> { :i 'система' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'система', 2) }> }
    token table-noun:sym<Russian> { :i 'таблица' | ([\w]+) <?{ $0.Str ne 'таблицы' and is-ru-fuzzy-match($0.Str, 'таблица', 2) }> }
    token tables-noun:sym<Russian> { :i 'таблицы' | ([\w]+) <?{ $0.Str ne 'таблица' and is-ru-fuzzy-match($0.Str, 'таблицы', 2) }> }
    token tabular-adjective:sym<Russian> { :i 'табличный' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'табличный', 2) }> }
    token take-verb:sym<Russian> { :i  'бери' | 'забери' | 'забрать' | 'получить'  }
    token tape-adjective:sym<Russian> { :i  'лентовый' | 'лентовая' | 'лентовое' | 'лентовые'   }
    token tape-noun:sym<Russian> { :i 'лента' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'лента', 2) }> }
    token target-noun:sym<Russian> { :i 'цель' | ([\w]+) <?{ $0.Str ne 'дела' and is-ru-fuzzy-match($0.Str, 'цель', 2) }> }
    token text-adjective:sym<Russian> { :i  <text-noun> | <textual-adjective>  }
    token text-noun:sym<Russian> { :i 'текст' | ([\w]+) <?{ $0.Str ne 'тексты' and is-ru-fuzzy-match($0.Str, 'текст', 2) }> }
    token texts-noun:sym<Russian> { :i 'тексты' | ([\w]+) <?{ $0.Str ne 'текст' and is-ru-fuzzy-match($0.Str, 'тексты', 2) }> }
    token textual-adjective:sym<Russian> { :i  'текстовой' | 'текстовая' | 'текстовое' | 'текстовые'  }
    token that-pronoun:sym<Russian> { :i  'эти' | 'что'  }
    token the-determiner:sym<Russian> { :i '' }
    token them-pronoun:sym<Russian> { :i 'им' }
    token this-pronoun:sym<Russian> { :i  'это' | 'это'  }
    token threshold-adjective:sym<Russian> { :i  'пороговый' | 'пороговая' | 'пороговое' | 'пороговые'  }
    token threshold-noun:sym<Russian> { :i 'порог' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'порог', 2) }> }
    token time-adjective:sym<Russian> { :i  'время' | 'время'  }
    token time-noun:sym<Russian> { :i 'время' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'время', 2) }> }
    token timeline-noun:sym<Russian> { :i  <time-adjective> 'строка'  }
    token times-noun:sym<Russian> { :i 'раз' | ([\w]+) <?{ $0.Str !(elem) <как рама рамы без наш> and is-ru-fuzzy-match($0.Str, 'раз', 1) }> }
    token to-preposition:sym<Russian> { :i  'на' | 'до'   }
    token top-adjective:sym<Russian> { :i  'най-горен' | 'най-горна' | 'най-горно' | 'най-горни' | 'топ' | 'топ' | 'топ' | 'топ'  }
    token top-noun:sym<Russian> { :i 'топ' | ([\w]+) <?{ $0.Str !(elem) <код тип типы> and is-ru-fuzzy-match($0.Str, 'топ', 1) }> }
    token transform-verb:sym<Russian> { :i 'преобразование' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'преобразование', 2) }> }
    token translation-noun:sym<Russian> { :i 'перевод' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'перевод', 2) }> }
    token type-noun:sym<Russian> { :i 'тип' | ([\w]+) <?{ $0.Str !(elem) <и им топ типы> and is-ru-fuzzy-match($0.Str, 'тип', 1) }> }
    token types-noun:sym<Russian> { :i 'типы' | ([\w]+) <?{ $0.Str !(elem) <топ тип> and is-ru-fuzzy-match($0.Str, 'типы', 2) }> }
    token up-adverb:sym<Russian> { :i  'выше' | 'наверх'  }
    token use-verb:sym<Russian> { :i  'использовать' | 'используйте'  }
    token used-verb:sym<Russian> { :i  'использованый' | 'используется'  }
    token using-preposition:sym<Russian> { :i  'через' | 'с' | 'с'  }
    token value-noun:sym<Russian> { :i 'значение' | ([\w]+) <?{ $0.Str ne 'значения' and is-ru-fuzzy-match($0.Str, 'значение', 2) }> }
    token values-noun:sym<Russian> { :i 'значения' | ([\w]+) <?{ $0.Str ne 'значение' and is-ru-fuzzy-match($0.Str, 'значения', 2) }> }
    token variable-noun:sym<Russian> { :i 'pеременная' | ([\w]+) <?{ $0.Str ne 'pеременные' and is-ru-fuzzy-match($0.Str, 'pеременная', 2) }> }
    token variables-noun:sym<Russian> { :i 'pеременные' | ([\w]+) <?{ $0.Str ne 'pеременная' and is-ru-fuzzy-match($0.Str, 'pеременные', 2) }> }
    token versus-preposition:sym<Russian> { :i  'против' | 'ср.' | 'против'  }
    token way-noun:sym<Russian> { :i  'раз' | 'способ'  }
    token weight:sym<Russian> { :i <weight-noun> }
    token weight-noun:sym<Russian> { :i 'вес' | ([\w]+) <?{ $0.Str !(elem) <е без нет веса> and is-ru-fuzzy-match($0.Str, 'вес', 1) }> }
    token weights:sym<Russian> { :i <weights-noun> }
    token weights-noun:sym<Russian> { :i 'веса' | ([\w]+) <?{ $0.Str !(elem) <дела вес> and is-ru-fuzzy-match($0.Str, 'веса', 2) }> }
    token what-pronoun:sym<Russian> { :i  'что' | 'который'  }
    token when-pronoun:sym<Russian> { :i 'когда' | ([\w]+) <?{ $0.Str !(elem) <код коды> and is-ru-fuzzy-match($0.Str, 'когда', 2) }> }
    token which-determiner:sym<Russian> { :i  'кто' | 'какой'  }
    token with-preposition:sym<Russian> { :i  'через' | 'с' | 'с'  }
    token without-preposition:sym<Russian> { :i 'без' | ([\w]+) <?{ $0.Str !(elem) <е нет раз вес> and is-ru-fuzzy-match($0.Str, 'без', 1) }> }
    token word-noun:sym<Russian> { :i 'слово' | ([\w]+) <?{ $0.Str !(elem) <слева слова> and is-ru-fuzzy-match($0.Str, 'слово', 2) }> }
    token words-noun:sym<Russian> { :i 'слова' | ([\w]+) <?{ $0.Str !(elem) <словарь слева слово> and is-ru-fuzzy-match($0.Str, 'слова', 2) }> }

    # Directives and phrases
    rule data-frame:sym<Russian> {  <data-noun>? <table-noun>  }
    rule data-frames:sym<Russian> {  <data-noun>? <tables-noun>  }
    rule time-series-data:sym<Russian> {  <time-adjective> <series-noun> <data-noun>?  }
    rule number-of:sym<Russian> {  [ <number-noun> | <count-verb> | <counts-noun> ] <of-preposition>?  }

}

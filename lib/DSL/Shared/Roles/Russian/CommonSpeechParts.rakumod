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
    token ID-noun:sym<Russian> { :i 'ID' | 'id' }
    token IDENTIFIER-adjective:sym<Russian> { :i 'IDENTIFIER' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'IDENTIFIER', 2) }> | 'id' | 'id' | 'id' }
    token IDENTIFIER-noun:sym<Russian> { :i 'IDENTIFIER' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'IDENTIFIER', 2) }> | 'идентификер' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'идентификер', 2) }> }
    token MODULE-noun:sym<Russian> { :i 'MODULE' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'MODULE', 2) }> | 'модуль' | ([\w]+) <?{ $0.Str ne 'модель' and is-ru-fuzzy-match($0.Str, 'модуль', 2) }> }
    token TARGET-noun:sym<Russian> { :i 'TARGET' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'TARGET', 2) }> | 'цель' | ([\w]+) <?{ $0.Str !(elem) <дела дело вещь> and is-ru-fuzzy-match($0.Str, 'цель', 2) }> }
    token USER-noun:sym<Russian> { :i 'USER' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'USER', 2) }> | 'пользователь' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'пользователь', 2) }> }
    token a-determiner:sym<Russian> { :i '' }
    token add-verb:sym<Russian> { :i 'собрать' | ([\w]+) <?{ $0.Str !(elem) <создать забрать> and is-ru-fuzzy-match($0.Str, 'собрать', 2) }> | 'добавить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'добавить', 2) }> }
    token adhere-verb:sym<Russian> { :i 'держит' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'держит', 2) }> | 'согласно' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'согласно', 2) }> }
    token adjacency-noun:sym<Russian> { :i 'адъютантский' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'адъютантский', 2) }> }
    token adjacent-adjective:sym<Russian> { :i 'адъютантский' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'адъютантский', 2) }> | 'адъютантский' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'адъютантский', 2) }> }
    token algorithm-noun:sym<Russian> { :i 'алгоритм' | ([\w]+) <?{ $0.Str ne 'алгоритмы' and is-ru-fuzzy-match($0.Str, 'алгоритм', 2) }> }
    token algorithms-noun:sym<Russian> { :i 'алгоритмы' | ([\w]+) <?{ $0.Str ne 'алгоритм' and is-ru-fuzzy-match($0.Str, 'алгоритмы', 2) }> }
    token all-determiner:sym<Russian> { :i 'каждый' | ([\w]+) <?{ $0.Str !(elem) <каждая каждые каждое> and is-ru-fuzzy-match($0.Str, 'каждый', 2) }> | 'все' | ([\w]+) <?{ $0.Str !(elem) <оси ось с выше в во е вес веса вo> and is-ru-fuzzy-match($0.Str, 'все', 1) }> }
    token and-conjunction:sym<Russian> { :i 'и' }
    token annex-verb:sym<Russian> { :i 'соединить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'соединить', 2) }> }
    token append-verb:sym<Russian> { :i 'добавить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'добавить', 2) }> }
    token apply-verb:sym<Russian> { :i 'применить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'применить', 2) }> }
    token are-verb:sym<Russian> { :i 'есть' | ([\w]+) <?{ $0.Str !(elem) <ось часть место> and is-ru-fuzzy-match($0.Str, 'есть', 2) }> }
    token array-noun:sym<Russian> { :i 'массив' | ([\w]+) <?{ $0.Str ne 'массивы' and is-ru-fuzzy-match($0.Str, 'массив', 2) }> }
    token arrays-noun:sym<Russian> { :i 'массивы' | ([\w]+) <?{ $0.Str ne 'массив' and is-ru-fuzzy-match($0.Str, 'массивы', 2) }> }
    token as-preposition:sym<Russian> { :i 'как' | ([\w]+) <?{ $0.Str !(elem) <код на какой макс наш шаг раз кто> and is-ru-fuzzy-match($0.Str, 'как', 1) }> }
    token assign-verb:sym<Russian> { :i 'назначить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'назначить', 2) }> }
    token at-preposition:sym<Russian> { :i 'затем' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'затем', 2) }> }
    token automatic:sym<Russian> { :i 'автоматический' | ([\w]+) <?{ $0.Str !(elem) <автоматическая автоматически автоматические> and is-ru-fuzzy-match($0.Str, 'автоматический', 2) }> | 'автоматическая' | ([\w]+) <?{ $0.Str !(elem) <автоматический автоматически автоматические> and is-ru-fuzzy-match($0.Str, 'автоматическая', 2) }> | 'автоматически' | ([\w]+) <?{ $0.Str !(elem) <автоматический автоматическая автоматические> and is-ru-fuzzy-match($0.Str, 'автоматически', 2) }> | 'автоматические' | ([\w]+) <?{ $0.Str !(elem) <автоматический автоматическая автоматически> and is-ru-fuzzy-match($0.Str, 'автоматические', 2) }> }
    token away-adverb:sym<Russian> { :i 'away' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'away', 2) }> }
    token axes-noun:sym<Russian> { :i 'оси' | ([\w]+) <?{ $0.Str !(elem) <все и ось оба от с один или эти> and is-ru-fuzzy-match($0.Str, 'оси', 1) }> }
    token axis-noun:sym<Russian> { :i 'ось' | ([\w]+) <?{ $0.Str !(elem) <все есть оси оба от с> and is-ru-fuzzy-match($0.Str, 'ось', 1) }> }
    token be-verb:sym<Russian> { :i 'be' }
    token both-determiner:sym<Russian> { :i 'оба' | ([\w]+) <?{ $0.Str !(elem) <оси ось от на лоб пока> and is-ru-fuzzy-match($0.Str, 'оба', 1) }> | 'одновременно' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'одновременно', 2) }> | 'вместе' | ([\w]+) <?{ $0.Str ne 'место' and is-ru-fuzzy-match($0.Str, 'вместе', 2) }> }
    token bottom-noun:sym<Russian> { :i 'дно' | ([\w]+) <?{ $0.Str !(elem) <по дело для на во это что до кто> and is-ru-fuzzy-match($0.Str, 'дно', 1) }> | 'най-ниско' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'най-ниско', 2) }> }
    token broaden-verb:sym<Russian> { :i 'расширить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'расширить', 2) }> }
    token by-preposition:sym<Russian> { :i 'по' | 'от' | 'с' | 'через' | ([\w]+) <?{ $0.Str ne 'чертеж' and is-ru-fuzzy-match($0.Str, 'через', 2) }> }
    token calculation:sym<Russian> { :i 'расчет' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'расчет', 2) }> }
    token case-noun:sym<Russian> { :i 'случай' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'случай', 2) }> }
    token cases-noun:sym<Russian> { :i 'дела' | ([\w]+) <?{ $0.Str !(elem) <цель дело дата делай для имела веса> and is-ru-fuzzy-match($0.Str, 'дела', 2) }> }
    token channel-adjective:sym<Russian> { :i 'каналный' | ([\w]+) <?{ $0.Str !(elem) <каналная каналные каналное> and is-ru-fuzzy-match($0.Str, 'каналный', 2) }> | 'каналная' | ([\w]+) <?{ $0.Str !(elem) <каналный каналные каналное> and is-ru-fuzzy-match($0.Str, 'каналная', 2) }> | 'каналные' | ([\w]+) <?{ $0.Str !(elem) <каналный каналная каналное> and is-ru-fuzzy-match($0.Str, 'каналные', 2) }> | 'каналное' | ([\w]+) <?{ $0.Str !(elem) <каналный каналная каналные> and is-ru-fuzzy-match($0.Str, 'каналное', 2) }> }
    token channel-noun:sym<Russian> { :i 'канал' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'канал', 2) }> }
    token chart-noun:sym<Russian> { :i 'чертеж' | ([\w]+) <?{ $0.Str !(elem) <через чертежи> and is-ru-fuzzy-match($0.Str, 'чертеж', 2) }> | 'график' | ([\w]+) <?{ $0.Str !(elem) <граф графика графики> and is-ru-fuzzy-match($0.Str, 'график', 2) }> | 'карта' | ([\w]+) <?{ $0.Str ne 'дата' and is-ru-fuzzy-match($0.Str, 'карта', 2) }> }
    token chart-verb:sym<Russian> { :i 'нарисовать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'нарисовать', 2) }> | 'нарисовать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'нарисовать', 2) }> }
    token classify-verb:sym<Russian> { :i 'классифицировать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'классифицировать', 2) }> }
    token clear-verb:sym<Russian> { :i 'чистый' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'чистый', 2) }> | 'очистить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'очистить', 2) }> }
    token cluster:sym<Russian> { :i <cluster-noun> }
    token cluster-noun:sym<Russian> { :i 'кластер' | ([\w]+) <?{ $0.Str ne 'кластеры' and is-ru-fuzzy-match($0.Str, 'кластер', 2) }> | 'группа' | ([\w]+) <?{ $0.Str ne 'группы' and is-ru-fuzzy-match($0.Str, 'группа', 2) }> }
    token clusters-noun:sym<Russian> { :i 'кластеры' | ([\w]+) <?{ $0.Str ne 'кластер' and is-ru-fuzzy-match($0.Str, 'кластеры', 2) }> | 'группы' | ([\w]+) <?{ $0.Str ne 'группа' and is-ru-fuzzy-match($0.Str, 'группы', 2) }> }
    token code-noun:sym<Russian> { :i 'код' | ([\w]+) <?{ $0.Str !(elem) <как по от коды лоб во мой моя ряд под до топ когда кто> and is-ru-fuzzy-match($0.Str, 'код', 1) }> }
    token codes-noun:sym<Russian> { :i 'коды' | ([\w]+) <?{ $0.Str !(elem) <код под когда> and is-ru-fuzzy-match($0.Str, 'коды', 2) }> }
    token column-noun:sym<Russian> { :i 'колонка' | ([\w]+) <?{ $0.Str !(elem) <колонку колонки> and is-ru-fuzzy-match($0.Str, 'колонка', 2) }> | 'колонку' | ([\w]+) <?{ $0.Str !(elem) <колонка колонки> and is-ru-fuzzy-match($0.Str, 'колонку', 2) }> | 'столбцу' | ([\w]+) <?{ $0.Str !(elem) <столбец столбцa столбцы> and is-ru-fuzzy-match($0.Str, 'столбцу', 2) }> | 'столбец' | ([\w]+) <?{ $0.Str !(elem) <столбцу столбцa столбцы> and is-ru-fuzzy-match($0.Str, 'столбец', 2) }> | 'столбцa' | ([\w]+) <?{ $0.Str !(elem) <столбцу столбец столбцы> and is-ru-fuzzy-match($0.Str, 'столбцa', 2) }> }
    token columns:sym<Russian> { :i <columns-noun> }
    token columns-noun:sym<Russian> { :i 'колонки' | ([\w]+) <?{ $0.Str !(elem) <колонка колонку> and is-ru-fuzzy-match($0.Str, 'колонки', 2) }> | 'столбцы' | ([\w]+) <?{ $0.Str !(elem) <столбцу столбец столбцa> and is-ru-fuzzy-match($0.Str, 'столбцы', 2) }> }
    token complete-adjective:sym<Russian> { :i 'полное' | ([\w]+) <?{ $0.Str ne 'полные' and is-ru-fuzzy-match($0.Str, 'полное', 2) }> | 'полные' | ([\w]+) <?{ $0.Str ne 'полное' and is-ru-fuzzy-match($0.Str, 'полные', 2) }> }
    token compute-directive:sym<Russian> { :i 'рассчитать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'рассчитать', 2) }> | 'найти' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'найти', 2) }> | 'рассчитать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'рассчитать', 2) }> | 'рассчитать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'рассчитать', 2) }> }
    token config-noun:sym<Russian> { :i 'настроить' | ([\w]+) <?{ $0.Str ne 'настроиться' and is-ru-fuzzy-match($0.Str, 'настроить', 2) }> }
    token configuration-adjective:sym<Russian> { :i 'настройка' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'настройка', 2) }> | 'настройка' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'настройка', 2) }> | 'настройка' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'настройка', 2) }> | 'настройка' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'настройка', 2) }> }
    token configuration-noun:sym<Russian> { :i 'конфигурация' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'конфигурация', 2) }> }
    token connect-verb:sym<Russian> { :i 'связать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'связать', 2) }> | 'связать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'связать', 2) }> }
    token consider-verb:sym<Russian> { :i 'проверять' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'проверять', 2) }> }
    token context-noun:sym<Russian> { :i 'контекст' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'контекст', 2) }> }
    token contingency-noun:sym<Russian> { :i  'условный' | 'перекрестные' \h+ 'ссылки' \h+ 'табуляция'  }
    token convert-verb:sym<Russian> { :i 'конвертировать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'конвертировать', 2) }> }
    token conveyor-adjective:sym<Russian> { :i 'конвейер' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'конвейер', 2) }> | 'конвейер' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'конвейер', 2) }> | 'конвейер' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'конвейер', 2) }> | 'конвейер' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'конвейер', 2) }> }
    token conveyor-noun:sym<Russian> { :i 'конвейер' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'конвейер', 2) }> }
    token count-verb:sym<Russian> { :i 'граф' | ([\w]+) <?{ $0.Str !(elem) <график раз> and is-ru-fuzzy-match($0.Str, 'граф', 2) }> | 'число' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'число', 2) }> | 'штука' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'штука', 2) }> | 'размер' | ([\w]+) <?{ $0.Str ne 'размеры' and is-ru-fuzzy-match($0.Str, 'размер', 2) }> | 'подсчет' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'подсчет', 2) }> }
    token counts-noun:sym<Russian> { :i  'количество' | 'числа' | 'число' \h+ 'штук' | 'размеры' | 'подсчеты'  }
    token create:sym<Russian> { :i 'создать' | ([\w]+) <?{ $0.Str ne 'собрать' and is-ru-fuzzy-match($0.Str, 'создать', 2) }> | 'сделать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'сделать', 2) }> | 'составить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'составить', 2) }> }
    token create-directive:sym<Russian> { :i <create-verb> }
    token create-verb:sym<Russian> { :i 'создать' | ([\w]+) <?{ $0.Str ne 'собрать' and is-ru-fuzzy-match($0.Str, 'создать', 2) }> }
    token creation-noun:sym<Russian> { :i 'существо' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'существо', 2) }> | 'дело' | ([\w]+) <?{ $0.Str !(elem) <цель дно дела делай для имело было до> and is-ru-fuzzy-match($0.Str, 'дело', 2) }> }
    token current-adjective:sym<Russian> { :i 'текущий' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'текущий', 2) }> | 'текущий' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'текущий', 2) }> | 'текущий' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'текущий', 2) }> }
    token data-adjective:sym<Russian> { :i 'данные' | ([\w]+) <?{ $0.Str ne 'данновые' and is-ru-fuzzy-match($0.Str, 'данные', 2) }> | 'данновые' | ([\w]+) <?{ $0.Str !(elem) <данные данново> and is-ru-fuzzy-match($0.Str, 'данновые', 2) }> | 'данново' | ([\w]+) <?{ $0.Str ne 'данновые' and is-ru-fuzzy-match($0.Str, 'данново', 2) }> | 'данные' | ([\w]+) <?{ $0.Str ne 'данновые' and is-ru-fuzzy-match($0.Str, 'данные', 2) }> }
    token data-noun:sym<Russian> { :i 'данные' | ([\w]+) <?{ $0.Str ne 'данновые' and is-ru-fuzzy-match($0.Str, 'данные', 2) }> | 'данные' | ([\w]+) <?{ $0.Str ne 'данновые' and is-ru-fuzzy-match($0.Str, 'данные', 2) }> | 'данновые' | ([\w]+) <?{ $0.Str !(elem) <данные данново> and is-ru-fuzzy-match($0.Str, 'данновые', 2) }> }
    token dataset:sym<Russian> { :i <dataset-noun> }
    token dataset-noun:sym<Russian> { :i  'набор' \h+ 'данных' | <array-noun> \h+ 'от' \h+ <data-noun> | <data-adjective> \h+ <array-noun> }
    token datasets-noun:sym<Russian> { :i  'набор' \h+ 'данных' | <arrays-noun> \h+ 'от' \h+ <data-noun> | <data-adjective> \h+ <arrays-noun>  }
    token date-adjective:sym<Russian> { :i 'даты' | ([\w]+) <?{ $0.Str !(elem) <дата рамы> and is-ru-fuzzy-match($0.Str, 'даты', 2) }> | 'дата' | ([\w]+) <?{ $0.Str !(elem) <дела карта даты рама> and is-ru-fuzzy-match($0.Str, 'дата', 2) }> | 'дата' | ([\w]+) <?{ $0.Str !(elem) <дела карта даты рама> and is-ru-fuzzy-match($0.Str, 'дата', 2) }> | 'дата' | ([\w]+) <?{ $0.Str !(elem) <дела карта даты рама> and is-ru-fuzzy-match($0.Str, 'дата', 2) }> }
    token date-noun:sym<Russian> { :i 'дата' | ([\w]+) <?{ $0.Str !(elem) <дела карта даты рама> and is-ru-fuzzy-match($0.Str, 'дата', 2) }> }
    token dates-noun:sym<Russian> { :i 'даты' | ([\w]+) <?{ $0.Str !(elem) <дата рамы> and is-ru-fuzzy-match($0.Str, 'даты', 2) }> }
    token datum-noun:sym<Russian> { :i 'данные' | ([\w]+) <?{ $0.Str ne 'данновые' and is-ru-fuzzy-match($0.Str, 'данные', 2) }> }
    token default:sym<Russian> { :i <default-noun> }
    token default-noun:sym<Russian> { :i  'по' \h+ 'умолчанию' | 'умолчаный' | 'умолчаная' | 'умолчаные' | 'умолчаное'  }
    token delete-directive:sym<Russian> { :i 'удалить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'удалить', 2) }> | 'выбросить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'выбросить', 2) }> | 'удалить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'удалить', 2) }> }
    token detect-verb:sym<Russian> { :i 'создать' | ([\w]+) <?{ $0.Str ne 'собрать' and is-ru-fuzzy-match($0.Str, 'создать', 2) }> | 'найти' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'найти', 2) }> | 'обнаружить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'обнаружить', 2) }> }
    token diagram:sym<Russian> { :i <diagram-synonyms> }
    token diagram-noun:sym<Russian> { :i 'график' | ([\w]+) <?{ $0.Str !(elem) <граф графика графики> and is-ru-fuzzy-match($0.Str, 'график', 2) }> }
    token diagram-synonyms:sym<Russian> { :i 
        <diagram-noun> |
        <plot-noun> |
        <plots-noun> |
        <graph-noun> |
        <chart-noun> }
    token dictionary-noun:sym<Russian> { :i 'словарь' | ([\w]+) <?{ $0.Str ne 'слова' and is-ru-fuzzy-match($0.Str, 'словарь', 2) }> }
    token difference:sym<Russian> { :i 'разница' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'разница', 2) }> }
    token dimension-noun:sym<Russian> { :i 'размерность' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'размерность', 2) }> }
    token dimensions-noun:sym<Russian> { :i 'размеры' | ([\w]+) <?{ $0.Str ne 'размер' and is-ru-fuzzy-match($0.Str, 'размеры', 2) }> }
    token directly-adverb:sym<Russian> { :i 'непосредственно' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'непосредственно', 2) }> }
    token display-directive:sym<Russian> { :i  <display-verb> | 'показать' | 'echo'  }
    token display-verb:sym<Russian> { :i 'показать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'показать', 2) }> }
    token distance-noun:sym<Russian> { :i 'расстояние' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'расстояние', 2) }> }
    token do-verb:sym<Russian> { :i 'делай' | ([\w]+) <?{ $0.Str !(elem) <дела дело> and is-ru-fuzzy-match($0.Str, 'делай', 2) }> }
    token document-noun:sym<Russian> { :i 'документ' | ([\w]+) <?{ $0.Str ne 'документы' and is-ru-fuzzy-match($0.Str, 'документ', 2) }> }
    token documents-noun:sym<Russian> { :i 'документы' | ([\w]+) <?{ $0.Str ne 'документ' and is-ru-fuzzy-match($0.Str, 'документы', 2) }> }
    token domain-noun:sym<Russian> { :i 'домен' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'домен', 2) }> | 'область' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'область', 2) }> }
    token drop-verb:sym<Russian> { :i 'выбросить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'выбросить', 2) }> | 'забудьте' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'забудьте', 2) }> | 'выбросить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'выбросить', 2) }> }
    token during-preposition:sym<Russian> { :i  'в' \h+ 'то' \h+ 'время' | 'во' \h+ 'время' | 'через'  }
    token each-determiner:sym<Russian> { :i 'каждый' | ([\w]+) <?{ $0.Str !(elem) <каждая каждые каждое> and is-ru-fuzzy-match($0.Str, 'каждый', 2) }> | 'каждый' | ([\w]+) <?{ $0.Str !(elem) <каждая каждые каждое> and is-ru-fuzzy-match($0.Str, 'каждый', 2) }> | 'каждый' | ([\w]+) <?{ $0.Str !(elem) <каждая каждые каждое> and is-ru-fuzzy-match($0.Str, 'каждый', 2) }> }
    token echo-verb:sym<Russian> { :i 'echo' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'echo', 2) }> }
    token element:sym<Russian> { :i <element-noun> }
    token element-noun:sym<Russian> { :i 'элемент' | ([\w]+) <?{ $0.Str ne 'элементы' and is-ru-fuzzy-match($0.Str, 'элемент', 2) }> }
    token elements:sym<Russian> { :i <elements-noun> }
    token elements-noun:sym<Russian> { :i 'элементы' | ([\w]+) <?{ $0.Str ne 'элемент' and is-ru-fuzzy-match($0.Str, 'элементы', 2) }> }
    token empty-noun:sym<Russian> { :i 'пустое' | ([\w]+) <?{ $0.Str ne 'пустота' and is-ru-fuzzy-match($0.Str, 'пустое', 2) }> | 'пустота' | ([\w]+) <?{ $0.Str ne 'пустое' and is-ru-fuzzy-match($0.Str, 'пустота', 2) }> }
    token empty-verb:sym<Russian> { :i  'пустые' | <empty-noun>  }
    token every-determiner:sym<Russian> { :i 'каждый' | ([\w]+) <?{ $0.Str !(elem) <каждая каждые каждое> and is-ru-fuzzy-match($0.Str, 'каждый', 2) }> | 'каждая' | ([\w]+) <?{ $0.Str !(elem) <каждый каждые каждое> and is-ru-fuzzy-match($0.Str, 'каждая', 2) }> | 'каждые' | ([\w]+) <?{ $0.Str !(elem) <каждый каждая каждое> and is-ru-fuzzy-match($0.Str, 'каждые', 2) }> | 'каждое' | ([\w]+) <?{ $0.Str !(elem) <каждый каждая каждые> and is-ru-fuzzy-match($0.Str, 'каждое', 2) }> }
    token extend-verb:sym<Russian> { :i 'расширить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'расширить', 2) }> }
    token extract-directive:sym<Russian> { :i 'извлеч' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'извлеч', 2) }> }
    token filter:sym<Russian> { :i <filter-verb> }
    token filter-noun:sym<Russian> { :i <filter-verb> }
    token filter-verb:sym<Russian> { :i 'фильтр' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'фильтр', 2) }> | 'фильтровать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'фильтровать', 2) }> }
    token find-verb:sym<Russian> { :i 'поиск' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'поиск', 2) }> | 'найти' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'найти', 2) }> }
    token first-adjective:sym<Russian> { :i 'первый' | ([\w]+) <?{ $0.Str !(elem) <первые первая первое> and is-ru-fuzzy-match($0.Str, 'первый', 2) }> | 'первые' | ([\w]+) <?{ $0.Str !(elem) <первый первая первое> and is-ru-fuzzy-match($0.Str, 'первые', 2) }> | 'первая' | ([\w]+) <?{ $0.Str !(elem) <первый первые первое> and is-ru-fuzzy-match($0.Str, 'первая', 2) }> | 'первое' | ([\w]+) <?{ $0.Str !(elem) <первый первые первая перевод> and is-ru-fuzzy-match($0.Str, 'первое', 2) }> }
    token for-preposition:sym<Russian> { :i 'для' | ([\w]+) <?{ $0.Str !(elem) <дно дела дело моя имя или до> and is-ru-fuzzy-match($0.Str, 'для', 1) }> | 'с' | 'на' }
    token frame-noun:sym<Russian> { :i 'рама' | ([\w]+) <?{ $0.Str !(elem) <дата рамы раз> and is-ru-fuzzy-match($0.Str, 'рама', 2) }> }
    token frames-noun:sym<Russian> { :i 'рамы' | ([\w]+) <?{ $0.Str !(elem) <даты рама раз> and is-ru-fuzzy-match($0.Str, 'рамы', 2) }> }
    token from-preposition:sym<Russian> { :i 'от' | 'с' | 'из' }
    token function:sym<Russian> { :i <function-noun> }
    token function-noun:sym<Russian> { :i 'функцию' | ([\w]+) <?{ $0.Str ne 'функции' and is-ru-fuzzy-match($0.Str, 'функцию', 2) }> }
    token functions:sym<Russian> { :i <functions-noun> }
    token functions-noun:sym<Russian> { :i 'функции' | ([\w]+) <?{ $0.Str ne 'функцию' and is-ru-fuzzy-match($0.Str, 'функции', 2) }> }
    token generate-directive:sym<Russian> { :i  <generate-verb> | <create-verb> | 'сделать'  }
    token generate-verb:sym<Russian> { :i 'generai' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'generai', 2) }> }
    token get-verb:sym<Russian> { :i 'получить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'получить', 2) }> }
    token graph-noun:sym<Russian> { :i 'считать' | ([\w]+) <?{ $0.Str ne 'читать' and is-ru-fuzzy-match($0.Str, 'считать', 2) }> }
    token had-verb:sym<Russian> { :i 'имел' | ([\w]+) <?{ $0.Str !(elem) <имела имело имели иметь имя имена им> and is-ru-fuzzy-match($0.Str, 'имел', 2) }> | 'имела' | ([\w]+) <?{ $0.Str !(elem) <дела имел имело имели иметь имена> and is-ru-fuzzy-match($0.Str, 'имела', 2) }> | 'имело' | ([\w]+) <?{ $0.Str !(elem) <дело имел имела имели иметь имена> and is-ru-fuzzy-match($0.Str, 'имело', 2) }> | 'имели' | ([\w]+) <?{ $0.Str !(elem) <имел имела имело иметь имена или> and is-ru-fuzzy-match($0.Str, 'имели', 2) }> | 'было' | ([\w]+) <?{ $0.Str ne 'дело' and is-ru-fuzzy-match($0.Str, 'было', 2) }> }
    token have-verb:sym<Russian> { :i 'иметь' | ([\w]+) <?{ $0.Str !(elem) <имел имела имело имели имена> and is-ru-fuzzy-match($0.Str, 'иметь', 2) }> }
    token head-adjective:sym<Russian> { :i <head-noun> }
    token head-noun:sym<Russian> { :i 'лоб' | ([\w]+) <?{ $0.Str !(elem) <оба по от код во мой моя съб под до топ> and is-ru-fuzzy-match($0.Str, 'лоб', 1) }> | 'направляется' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'направляется', 2) }> }
    token high-adjective:sym<Russian> { :i 'высокий' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'высокий', 2) }> }
    token higher-adjective:sym<Russian> { :i 'выше' | ([\w]+) <?{ $0.Str ne 'все' and is-ru-fuzzy-match($0.Str, 'выше', 2) }> }
    token highest-adjective:sym<Russian> { :i  'самый' \h+ 'высокий' | 'самые' \h+ 'высокие'  }
    token histogram:sym<Russian> { :i 'гистограмма' | ([\w]+) <?{ $0.Str ne 'гистограммы' and is-ru-fuzzy-match($0.Str, 'гистограмма', 2) }> }
    token histograms:sym<Russian> { :i 'гистограммы' | ([\w]+) <?{ $0.Str ne 'гистограмма' and is-ru-fuzzy-match($0.Str, 'гистограммы', 2) }> }
    token how-adverb:sym<Russian> { :i 'как' | ([\w]+) <?{ $0.Str !(elem) <код на какой макс наш шаг раз кто> and is-ru-fuzzy-match($0.Str, 'как', 1) }> }
    token id-noun:sym<Russian> { :i 'заходите' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'заходите', 2) }> }
    token identifier-adjective:sym<Russian> { :i <IDENTIFIER-adjective> }
    token identifier-noun:sym<Russian> { :i <IDENTIFIER-noun> }
    token in-preposition:sym<Russian> { :i 'в' | 'во' }
    token include-verb:sym<Russian> { :i 'включить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'включить', 2) }> | 'включить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'включить', 2) }> }
    token ingest-verb:sym<Russian> { :i 'читать' | ([\w]+) <?{ $0.Str ne 'считать' and is-ru-fuzzy-match($0.Str, 'читать', 2) }> }
    token interpreter-noun:sym<Russian> { :i 'переводчик' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'переводчик', 2) }> | 'тезаурус' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'тезаурус', 2) }> }
    token interpreting-adjective:sym<Russian> { :i 'тезаурус' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'тезаурус', 2) }> | 'перевод' | ([\w]+) <?{ $0.Str ne 'первое' and is-ru-fuzzy-match($0.Str, 'перевод', 2) }> }
    token into-preposition:sym<Russian> { :i 'в' | 'во' }
    token is-verb:sym<Russian> { :i 'е' }
    token it-pronoun:sym<Russian> { :i 'это' | ([\w]+) <?{ $0.Str !(elem) <дно по от во итог эти что до топ кто> and is-ru-fuzzy-match($0.Str, 'это', 1) }> | 'какой' | ([\w]+) <?{ $0.Str ne 'как' and is-ru-fuzzy-match($0.Str, 'какой', 2) }> }
    token iterations:sym<Russian> { :i 'итераций' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'итераций', 2) }> }
    token join-verb:sym<Russian> { :i 'соединить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'соединить', 2) }> }
    token join-noun:sym<Russian> { :i 'ссылка' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'ссылка', 2) }> | 'соединение' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'соединение', 2) }> }
    token language-noun:sym<Russian> { :i 'язык' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'язык', 2) }> }
    token largest-adjective:sym<Russian> { :i 'най-голям' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'най-голям', 2) }> }
    token last-adjective:sym<Russian> { :i 'последний' | ([\w]+) <?{ $0.Str ne 'последние' and is-ru-fuzzy-match($0.Str, 'последний', 2) }> | 'последние' | ([\w]+) <?{ $0.Str ne 'последний' and is-ru-fuzzy-match($0.Str, 'последние', 2) }> }
    token left-adjective:sym<Russian> { :i 'слева' | ([\w]+) <?{ $0.Str !(elem) <слово слова> and is-ru-fuzzy-match($0.Str, 'слева', 2) }> | 'слева' | ([\w]+) <?{ $0.Str !(elem) <слово слова> and is-ru-fuzzy-match($0.Str, 'слева', 2) }> | 'слева' | ([\w]+) <?{ $0.Str !(elem) <слово слова> and is-ru-fuzzy-match($0.Str, 'слева', 2) }> | 'слева' | ([\w]+) <?{ $0.Str !(elem) <слово слова> and is-ru-fuzzy-match($0.Str, 'слева', 2) }> }
    token left-noun:sym<Russian> { :i 'слева' | ([\w]+) <?{ $0.Str !(elem) <слово слова> and is-ru-fuzzy-match($0.Str, 'слева', 2) }> }
    token link-noun:sym<Russian> { :i 'ссылка' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'ссылка', 2) }> }
    token list-noun:sym<Russian> { :i 'список' | ([\w]+) <?{ $0.Str ne 'способ' and is-ru-fuzzy-match($0.Str, 'список', 2) }> }
    token load-verb:sym<Russian> { :i 'загрузить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'загрузить', 2) }> }
    token locate-verb:sym<Russian> { :i 'найти' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'найти', 2) }> | 'локализовать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'локализовать', 2) }> }
    token low-adjective:sym<Russian> { :i 'ниже' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'ниже', 2) }> | 'низкий' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'низкий', 2) }> }
    token lower-adjective:sym<Russian> { :i 'по-долен' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'по-долен', 2) }> | 'ниже' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'ниже', 2) }> }
    token lowest-adjective:sym<Russian> { :i  'самый' \h+ 'низкий'| 'самые' \h+ 'низкие' }
    token make-noun:sym<Russian> { :i 'сделать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'сделать', 2) }> | 'составить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'составить', 2) }> }
    token making-noun:sym<Russian> { :i 'создание' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'создание', 2) }> }
    # token manner { <manner-noun> }
    token manner-noun:sym<Russian> { :i 'способ' | ([\w]+) <?{ $0.Str ne 'список' and is-ru-fuzzy-match($0.Str, 'способ', 2) }> | 'способ' | ([\w]+) <?{ $0.Str ne 'список' and is-ru-fuzzy-match($0.Str, 'способ', 2) }> }
    token many-determiner:sym<Russian> { :i 'многие' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'многие', 2) }> }
    token matrices-noun:sym<Russian> { :i 'матрицы' | ([\w]+) <?{ $0.Str ne 'матрица' and is-ru-fuzzy-match($0.Str, 'матрицы', 2) }> }
    token matrix-noun:sym<Russian> { :i 'матрица' | ([\w]+) <?{ $0.Str ne 'матрицы' and is-ru-fuzzy-match($0.Str, 'матрица', 2) }> }
    token matrixes-noun:sym<Russian> { :i 'матрицы' | ([\w]+) <?{ $0.Str ne 'матрица' and is-ru-fuzzy-match($0.Str, 'матрицы', 2) }> }
    token maximum:sym<Russian> { :i 'макс' | ([\w]+) <?{ $0.Str ne 'как' and is-ru-fuzzy-match($0.Str, 'макс', 2) }> | 'максимальный' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'максимальный', 2) }> | 'максимальный' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'максимальный', 2) }> }
    token message-noun:sym<Russian> { :i 'сообщение' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'сообщение', 2) }> }
    token method-adjective:sym<Russian> { :i 'методный' | ([\w]+) <?{ $0.Str !(elem) <методная методное методные методы> and is-ru-fuzzy-match($0.Str, 'методный', 2) }> | 'методная' | ([\w]+) <?{ $0.Str !(elem) <методный методное методные> and is-ru-fuzzy-match($0.Str, 'методная', 2) }> | 'методное' | ([\w]+) <?{ $0.Str !(elem) <методный методная методные> and is-ru-fuzzy-match($0.Str, 'методное', 2) }> | 'методные' | ([\w]+) <?{ $0.Str !(elem) <методный методная методное методы> and is-ru-fuzzy-match($0.Str, 'методные', 2) }> }
    token method-noun:sym<Russian> { :i 'метод' | ([\w]+) <?{ $0.Str !(elem) <методы место> and is-ru-fuzzy-match($0.Str, 'метод', 2) }> }
    token methods-noun:sym<Russian> { :i 'методы' | ([\w]+) <?{ $0.Str !(elem) <методный методные метод> and is-ru-fuzzy-match($0.Str, 'методы', 2) }> }
    token minimum:sym<Russian> { :i 'мин' | ([\w]+) <?{ $0.Str !(elem) <и из мой моя имя один им тип> and is-ru-fuzzy-match($0.Str, 'мин', 1) }> | 'минимум' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'минимум', 2) }> | 'минимальный' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'минимальный', 2) }> }
    token missing-adjective:sym<Russian> { :i 'отсутствующие' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'отсутствующие', 2) }> }
    # token model { <model-noun> }
    token model-noun:sym<Russian> { :i 'модель' | ([\w]+) <?{ $0.Str ne 'модуль' and is-ru-fuzzy-match($0.Str, 'модель', 2) }> }
    token module-noun:sym<Russian> { :i 'модуль' | ([\w]+) <?{ $0.Str ne 'модель' and is-ru-fuzzy-match($0.Str, 'модуль', 2) }> }
    token much-pronoun:sym<Russian> { :i  'большая' \h+ 'часть'  }
    token my-determiner:sym<Russian> { :i 'мой' | ([\w]+) <?{ $0.Str !(elem) <по от код лоб во мин моя под до топ> and is-ru-fuzzy-match($0.Str, 'мой', 1) }> | 'моя' | ([\w]+) <?{ $0.Str !(elem) <по от код для лоб во мин мой имя под до топ> and is-ru-fuzzy-match($0.Str, 'моя', 1) }> | 'мой' | ([\w]+) <?{ $0.Str !(elem) <по от код лоб во мин моя под до топ> and is-ru-fuzzy-match($0.Str, 'мой', 1) }> }
    token name-noun:sym<Russian> { :i 'имя' | ([\w]+) <?{ $0.Str !(elem) <и для из имел мин моя или им> and is-ru-fuzzy-match($0.Str, 'имя', 1) }> }
    token names-noun:sym<Russian> { :i 'имена' | ([\w]+) <?{ $0.Str !(elem) <имел имела имело имели иметь> and is-ru-fuzzy-match($0.Str, 'имена', 2) }> }
    token nearest-adjective:sym<Russian> { :i 'ближайшие' | ([\w]+) <?{ $0.Str ne 'ближайших' and is-ru-fuzzy-match($0.Str, 'ближайшие', 2) }> | 'ближайших' | ([\w]+) <?{ $0.Str ne 'ближайшие' and is-ru-fuzzy-match($0.Str, 'ближайших', 2) }> }
    token neighbors-noun:sym<Russian> { :i 'соседи' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'соседи', 2) }> }
    token no-determiner:sym<Russian> { :i 'без' | ([\w]+) <?{ $0.Str !(elem) <из е нет бери раз вес> and is-ru-fuzzy-match($0.Str, 'без', 1) }> }
    token non-prefix:sym<Russian> { :i 'нет' | ([\w]+) <?{ $0.Str !(elem) <от на е без наш вес> and is-ru-fuzzy-match($0.Str, 'нет', 1) }> }
    token number-noun:sym<Russian> { :i 'число' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'число', 2) }> }
    token object-noun:sym<Russian> { :i 'объект' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'объект', 2) }> }
    token obtain-verb:sym<Russian> { :i 'извлеч' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'извлеч', 2) }> }
    token of-preposition:sym<Russian> { :i 'для' | ([\w]+) <?{ $0.Str !(elem) <дно дела дело моя имя или до> and is-ru-fuzzy-match($0.Str, 'для', 1) }> | 'на' }
    token off-adverb:sym<Russian> { :i 'без' | ([\w]+) <?{ $0.Str !(elem) <из е нет бери раз вес> and is-ru-fuzzy-match($0.Str, 'без', 1) }> }
    token on-preposition:sym<Russian> { :i 'на' | 'по' }
    token one-pronoun:sym<Russian> { :i 'один' | ([\w]+) <?{ $0.Str !(elem) <оси мин> and is-ru-fuzzy-match($0.Str, 'один', 2) }> | 'первое' | ([\w]+) <?{ $0.Str !(elem) <первый первые первая перевод> and is-ru-fuzzy-match($0.Str, 'первое', 2) }> | 'вещь' | ([\w]+) <?{ $0.Str !(elem) <цель вещи вес веса> and is-ru-fuzzy-match($0.Str, 'вещь', 2) }> }
    token ones-pronoun:sym<Russian> { :i 'единицы' | ([\w]+) <?{ $0.Str ne 'единиц' and is-ru-fuzzy-match($0.Str, 'единицы', 2) }> | 'единиц' | ([\w]+) <?{ $0.Str ne 'единицы' and is-ru-fuzzy-match($0.Str, 'единиц', 2) }> | 'вещи' | ([\w]+) <?{ $0.Str !(elem) <вещь бери вес веса> and is-ru-fuzzy-match($0.Str, 'вещи', 2) }> }
    token or-conjunction:sym<Russian> { :i 'или' | ([\w]+) <?{ $0.Str !(elem) <и оси для из имели имя эти им> and is-ru-fuzzy-match($0.Str, 'или', 1) }> }
    token our-determiner:sym<Russian> { :i 'наш' | ([\w]+) <?{ $0.Str !(elem) <как на нет шаг раз> and is-ru-fuzzy-match($0.Str, 'наш', 1) }> }
    token out-adverb:sym<Russian> { :i 'снаружи' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'снаружи', 2) }> | 'снаружи' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'снаружи', 2) }> }
    token outlier-adjective:sym<Russian> { :i 'экстраординарный' | ([\w]+) <?{ $0.Str !(elem) <экстраординарная экстраординарные экстраординарное> and is-ru-fuzzy-match($0.Str, 'экстраординарный', 2) }> | 'экстраординарная' | ([\w]+) <?{ $0.Str !(elem) <экстраординарный экстраординарные экстраординарное> and is-ru-fuzzy-match($0.Str, 'экстраординарная', 2) }> | 'экстраординарные' | ([\w]+) <?{ $0.Str !(elem) <экстраординарный экстраординарная экстраординарное> and is-ru-fuzzy-match($0.Str, 'экстраординарные', 2) }> | 'экстраординарное' | ([\w]+) <?{ $0.Str !(elem) <экстраординарный экстраординарная экстраординарные> and is-ru-fuzzy-match($0.Str, 'экстраординарное', 2) }> }
    token outlier-noun:sym<Russian> { :i  'чрезвычайная' \h+ 'величина' | 'экстраординарный' 'значение'  }
    token outliers-noun:sym<Russian> { :i 'необычный' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'необычный', 2) }> | 'экстраординарный' | ([\w]+) <?{ $0.Str !(elem) <экстраординарная экстраординарные экстраординарное> and is-ru-fuzzy-match($0.Str, 'экстраординарный', 2) }> 'значения' | ([\w]+) <?{ $0.Str ne 'значение' and is-ru-fuzzy-match($0.Str, 'значения', 2) }> }
    token over-preposition:sym<Russian> { :i 'через' | ([\w]+) <?{ $0.Str ne 'чертеж' and is-ru-fuzzy-match($0.Str, 'через', 2) }> | 'через' | ([\w]+) <?{ $0.Str ne 'чертеж' and is-ru-fuzzy-match($0.Str, 'через', 2) }> | 'по' }
    token parameter-noun:sym<Russian> { :i 'параметр' | ([\w]+) <?{ $0.Str ne 'параметры' and is-ru-fuzzy-match($0.Str, 'параметр', 2) }> }
    token parameters-noun:sym<Russian> { :i 'параметры' | ([\w]+) <?{ $0.Str ne 'параметр' and is-ru-fuzzy-match($0.Str, 'параметры', 2) }> }
    token part-noun:sym<Russian> { :i 'часть' | ([\w]+) <?{ $0.Str ne 'есть' and is-ru-fuzzy-match($0.Str, 'часть', 2) }> }
    token pattern-noun:sym<Russian> { :i 'шаблон' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'шаблон', 2) }> }
    token per-preposition:sym<Russian> { :i 'для' | ([\w]+) <?{ $0.Str !(elem) <дно дела дело моя имя или до> and is-ru-fuzzy-match($0.Str, 'для', 1) }> }
    token pipeline-adjective:sym<Russian> { :i <tape-adjective> | <conveyor-adjective> | <channel-adjective> }
    token pipeline-noun:sym<Russian> { :i  <tape-noun> | <conveyor-noun> | <channel-noun> | 'потоковая' \h+ 'строка'  }
    token plot-noun:sym<Russian> { :i 'чертеж' | ([\w]+) <?{ $0.Str !(elem) <через чертежи> and is-ru-fuzzy-match($0.Str, 'чертеж', 2) }> | 'графика' | ([\w]+) <?{ $0.Str !(elem) <график графики> and is-ru-fuzzy-match($0.Str, 'графика', 2) }> }
    token plots-noun:sym<Russian> { :i 'чертежи' | ([\w]+) <?{ $0.Str ne 'чертеж' and is-ru-fuzzy-match($0.Str, 'чертежи', 2) }> | 'графики' | ([\w]+) <?{ $0.Str !(elem) <график графика> and is-ru-fuzzy-match($0.Str, 'графики', 2) }> }
    token position-noun:sym<Russian> { :i 'позиция' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'позиция', 2) }> }
    token pull-noun { 'извлечено из' | 'потяните' }
    token pull-verb { 'извлечено из' | 'подтягивание' }
    token random-adjective:sym<Russian> { :i 'случайный' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'случайный', 2) }> }
    token records:sym<Russian> { :i 'записи' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'записи', 2) }> }
    token reduce-verb:sym<Russian> { :i 'сократить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'сократить', 2) }> }
    token remove-verb:sym<Russian> { :i 'удалить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'удалить', 2) }> }
    token replace-verb:sym<Russian> { :i 'заменить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'заменить', 2) }> | 'заменить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'заменить', 2) }> }
    token represent-directive:sym<Russian> { :i  <represent-verb> | 'нарисовать' | 'отражение'  }
    token represent-verb:sym<Russian> { :i 'представлено' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'представлено', 2) }> }
    token rest-noun:sym<Russian> { :i 'oстаток' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'oстаток', 2) }> }
    token result-noun:sym<Russian> { :i 'результат' | ([\w]+) <?{ $0.Str ne 'результаты' and is-ru-fuzzy-match($0.Str, 'результат', 2) }> }
    token results:sym<Russian> { :i <results-noun> }
    token results-noun:sym<Russian> { :i 'результаты' | ([\w]+) <?{ $0.Str ne 'результат' and is-ru-fuzzy-match($0.Str, 'результаты', 2) }> }
    token reverse-adjective:sym<Russian> { :i 'обратный' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'обратный', 2) }> | 'повернуть' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'повернуть', 2) }> }
    token right-adjective:sym<Russian> { :i 'правильно' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'правильно', 2) }> | 'справа' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'справа', 2) }> }
    token right-noun:sym<Russian> { :i 'правильно' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'правильно', 2) }> }
    token row-noun:sym<Russian> { :i 'строка' | ([\w]+) <?{ $0.Str ne 'строки' and is-ru-fuzzy-match($0.Str, 'строка', 2) }> }
    token rows:sym<Russian> { :i <rows-noun> }
    token rows-noun:sym<Russian> { :i 'строки' | ([\w]+) <?{ $0.Str ne 'строка' and is-ru-fuzzy-match($0.Str, 'строки', 2) }> }
    token run-verb:sym<Russian> { :i 'run' | ([\w]+) <?{ $0.Str ne 'runs' and is-ru-fuzzy-match($0.Str, 'run', 1) }> | 'runs' | ([\w]+) <?{ $0.Str ne 'run' and is-ru-fuzzy-match($0.Str, 'runs', 2) }> }
    token running-verb:sym<Russian> { :i 'running' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'running', 2) }> }
    token separate-verb:sym<Russian> { :i 'разделить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'разделить', 2) }> }
    token series-noun:sym<Russian> { :i 'серия' | ([\w]+) <?{ $0.Str ne 'бери' and is-ru-fuzzy-match($0.Str, 'серия', 2) }> | 'строка' | ([\w]+) <?{ $0.Str ne 'строки' and is-ru-fuzzy-match($0.Str, 'строка', 2) }> | 'ряд' | ([\w]+) <?{ $0.Str !(elem) <код под раз> and is-ru-fuzzy-match($0.Str, 'ряд', 1) }> }
    token set-directive:sym<Russian> { :i 'назначить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'назначить', 2) }> }
    token set-noun:sym<Russian> { :i 'множество' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'множество', 2) }> }
    token setup-adjective:sym<Russian> { :i 'настроиться' | ([\w]+) <?{ $0.Str ne 'настроить' and is-ru-fuzzy-match($0.Str, 'настроиться', 2) }> | 'тюнинг' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'тюнинг', 2) }> | 'настроиться' | ([\w]+) <?{ $0.Str ne 'настроить' and is-ru-fuzzy-match($0.Str, 'настроиться', 2) }> | 'тюнинг' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'тюнинг', 2) }> | 'инициализация' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'инициализация', 2) }> }
    token setup-noun:sym<Russian> { :i 'отношение' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'отношение', 2) }> | 'настроиться' | ([\w]+) <?{ $0.Str ne 'настроить' and is-ru-fuzzy-match($0.Str, 'настроиться', 2) }> | 'инициализация' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'инициализация', 2) }> | 'подготовка' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'подготовка', 2) }> }
    token shape-noun:sym<Russian> { :i 'форма' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'форма', 2) }> }
    token show-verb:sym<Russian> { :i 'показать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'показать', 2) }> | 'показать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'показать', 2) }> }
    token simple:sym<Russian> { :i 'простой' | ([\w]+) <?{ $0.Str ne 'просто' and is-ru-fuzzy-match($0.Str, 'простой', 2) }> | 'прямой' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'прямой', 2) }> }
    token simply-adverb:sym<Russian> { :i 'просто' | ([\w]+) <?{ $0.Str ne 'простой' and is-ru-fuzzy-match($0.Str, 'просто', 2) }> }
    token simulate:sym<Russian> { :i 'симулировать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'симулировать', 2) }> }
    token simulate-directive:sym<Russian> { :i <simulate> }
    token simulation:sym<Russian> { :i 'симуляция' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'симуляция', 2) }> }
    token single-adjective:sym<Russian> { :i 'одиночка' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'одиночка', 2) }> | 'один' | ([\w]+) <?{ $0.Str !(elem) <оси мин> and is-ru-fuzzy-match($0.Str, 'один', 2) }> }
    token site-noun:sym<Russian> { :i 'место' | ([\w]+) <?{ $0.Str !(elem) <есть вместе метод> and is-ru-fuzzy-match($0.Str, 'место', 2) }> | 'позиция' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'позиция', 2) }> }
    token smallest:sym<Russian> { :i 'най-малък' | ([\w]+) <?{ $0.Str ne 'най-малки' and is-ru-fuzzy-match($0.Str, 'най-малък', 2) }> | 'най-малки' | ([\w]+) <?{ $0.Str ne 'най-малък' and is-ru-fuzzy-match($0.Str, 'най-малки', 2) }> }
    token smallest-adjective:sym<Russian> { :i 'най-малък' | ([\w]+) <?{ $0.Str ne 'най-малки' and is-ru-fuzzy-match($0.Str, 'най-малък', 2) }> | 'най-малки' | ([\w]+) <?{ $0.Str ne 'най-малък' and is-ru-fuzzy-match($0.Str, 'най-малки', 2) }> }
    token some-determiner:sym<Russian> { :i 'кто-то' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'кто-то', 2) }> | 'некоторые' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'некоторые', 2) }> }
    token sparse-adjective:sym<Russian> { :i 'разводненный' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'разводненный', 2) }> }
    token specific-adjective:sym<Russian> { :i 'специфический' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'специфический', 2) }> }
    token split-verb:sym<Russian> { :i 'разделить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'разделить', 2) }> }
    token spot-verb:sym<Russian> { :i 'найти' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'найти', 2) }> }
    token spread-verb:sym<Russian> { :i 'расстелить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'расстелить', 2) }> }
    token statistical:sym<Russian> { :i <statistical-adjective> }
    token statistical-adjective:sym<Russian> { :i 'статистически' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'статистически', 2) }> }
    token statistics-noun:sym<Russian> { :i 'статистика' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'статистика', 2) }> }
    token stats-noun:sym<Russian> { :i 'статс' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'статс', 2) }> }
    token step-noun:sym<Russian> { :i 'шаг' | ([\w]+) <?{ $0.Str !(elem) <как на наш шагом шаги раз> and is-ru-fuzzy-match($0.Str, 'шаг', 1) }> | 'шагом' | ([\w]+) <?{ $0.Str !(elem) <шаг шаги> and is-ru-fuzzy-match($0.Str, 'шагом', 2) }> }
    token steps-noun:sym<Russian> { :i 'шаги' | ([\w]+) <?{ $0.Str !(elem) <шаг шагом> and is-ru-fuzzy-match($0.Str, 'шаги', 2) }> }
    token string-noun:sym<Russian> { :i 'строка' | ([\w]+) <?{ $0.Str ne 'строки' and is-ru-fuzzy-match($0.Str, 'строка', 2) }> }
    token sub-prefix:sym<Russian> { :i 'съб' | ([\w]+) <?{ $0.Str !(elem) <с лоб ср.> and is-ru-fuzzy-match($0.Str, 'съб', 1) }> | 'под' | ([\w]+) <?{ $0.Str !(elem) <по от код коды лоб во мой моя ряд до топ пока> and is-ru-fuzzy-match($0.Str, 'под', 1) }> }
    token summaries:sym<Russian> { :i <summaries-noun> }
    token summaries-noun:sym<Russian> { :i 'рекапс' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'рекапс', 2) }> | 'резюме' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'резюме', 2) }> }
    token summarize-directive:sym<Russian> { :i 'итог' | ([\w]+) <?{ $0.Str !(elem) <это что топ кто> and is-ru-fuzzy-match($0.Str, 'итог', 2) }> | 'обобщить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'обобщить', 2) }> }
    token summary:sym<Russian> { :i <summary-noun> }
    token summary-noun:sym<Russian> { :i 'итог' | ([\w]+) <?{ $0.Str !(elem) <это что топ кто> and is-ru-fuzzy-match($0.Str, 'итог', 2) }> | 'резюме' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'резюме', 2) }> }
    token system-noun:sym<Russian> { :i 'система' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'система', 2) }> }
    token table-noun:sym<Russian> { :i 'таблица' | ([\w]+) <?{ $0.Str ne 'таблицы' and is-ru-fuzzy-match($0.Str, 'таблица', 2) }> }
    token tables-noun:sym<Russian> { :i 'таблицы' | ([\w]+) <?{ $0.Str ne 'таблица' and is-ru-fuzzy-match($0.Str, 'таблицы', 2) }> }
    token tabular-adjective:sym<Russian> { :i 'табличный' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'табличный', 2) }> }
    token take-verb:sym<Russian> { :i 'бери' | ([\w]+) <?{ $0.Str !(elem) <без вещи серия забери> and is-ru-fuzzy-match($0.Str, 'бери', 2) }> | 'забери' | ([\w]+) <?{ $0.Str ne 'бери' and is-ru-fuzzy-match($0.Str, 'забери', 2) }> | 'забрать' | ([\w]+) <?{ $0.Str ne 'собрать' and is-ru-fuzzy-match($0.Str, 'забрать', 2) }> | 'получить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'получить', 2) }> | 'возьми' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'возьми', 2) }> }
    token tape-adjective:sym<Russian> { :i 'лентовый' | ([\w]+) <?{ $0.Str !(elem) <лентовая лентовое лентовые> and is-ru-fuzzy-match($0.Str, 'лентовый', 2) }> | 'лентовая' | ([\w]+) <?{ $0.Str !(elem) <лентовый лентовое лентовые> and is-ru-fuzzy-match($0.Str, 'лентовая', 2) }> | 'лентовое' | ([\w]+) <?{ $0.Str !(elem) <лентовый лентовая лентовые> and is-ru-fuzzy-match($0.Str, 'лентовое', 2) }> | 'лентовые' | ([\w]+) <?{ $0.Str !(elem) <лентовый лентовая лентовое> and is-ru-fuzzy-match($0.Str, 'лентовые', 2) }> }
    token tape-noun:sym<Russian> { :i 'лента' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'лента', 2) }> }
    token target-noun:sym<Russian> { :i 'цель' | ([\w]+) <?{ $0.Str !(elem) <дела дело вещь> and is-ru-fuzzy-match($0.Str, 'цель', 2) }> }
    token text-adjective:sym<Russian> { :i <text-noun> | <textual-adjective> }
    token text-noun:sym<Russian> { :i 'текст' | ([\w]+) <?{ $0.Str ne 'тексты' and is-ru-fuzzy-match($0.Str, 'текст', 2) }> }
    token texts-noun:sym<Russian> { :i 'тексты' | ([\w]+) <?{ $0.Str ne 'текст' and is-ru-fuzzy-match($0.Str, 'тексты', 2) }> }
    token textual-adjective:sym<Russian> { :i 'текстовой' | ([\w]+) <?{ $0.Str !(elem) <текстовая текстовое текстовые> and is-ru-fuzzy-match($0.Str, 'текстовой', 2) }> | 'текстовая' | ([\w]+) <?{ $0.Str !(elem) <текстовой текстовое текстовые> and is-ru-fuzzy-match($0.Str, 'текстовая', 2) }> | 'текстовое' | ([\w]+) <?{ $0.Str !(elem) <текстовой текстовая текстовые> and is-ru-fuzzy-match($0.Str, 'текстовое', 2) }> | 'текстовые' | ([\w]+) <?{ $0.Str !(elem) <текстовой текстовая текстовое> and is-ru-fuzzy-match($0.Str, 'текстовые', 2) }> }
    token that-pronoun:sym<Russian> { :i 'эти' | ([\w]+) <?{ $0.Str !(elem) <и оси от это или что тип кто> and is-ru-fuzzy-match($0.Str, 'эти', 1) }> | 'что' | ([\w]+) <?{ $0.Str !(elem) <дно по от во это итог эти до топ кто> and is-ru-fuzzy-match($0.Str, 'что', 1) }> }
    token the-determiner:sym<Russian> { :i '' }
    token them-pronoun:sym<Russian> { :i 'им' }
    token this-pronoun:sym<Russian> { :i 'это' | ([\w]+) <?{ $0.Str !(elem) <дно по от во итог эти что до топ кто> and is-ru-fuzzy-match($0.Str, 'это', 1) }> | 'это' | ([\w]+) <?{ $0.Str !(elem) <дно по от во итог эти что до топ кто> and is-ru-fuzzy-match($0.Str, 'это', 1) }> }
    token threshold-adjective:sym<Russian> { :i 'пороговый' | ([\w]+) <?{ $0.Str !(elem) <пороговая пороговое пороговые> and is-ru-fuzzy-match($0.Str, 'пороговый', 2) }> | 'пороговая' | ([\w]+) <?{ $0.Str !(elem) <пороговый пороговое пороговые> and is-ru-fuzzy-match($0.Str, 'пороговая', 2) }> | 'пороговое' | ([\w]+) <?{ $0.Str !(elem) <пороговый пороговая пороговые> and is-ru-fuzzy-match($0.Str, 'пороговое', 2) }> | 'пороговые' | ([\w]+) <?{ $0.Str !(elem) <пороговый пороговая пороговое> and is-ru-fuzzy-match($0.Str, 'пороговые', 2) }> }
    token threshold-noun:sym<Russian> { :i 'порог' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'порог', 2) }> }
    token time-adjective:sym<Russian> { :i 'время' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'время', 2) }> | 'время' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'время', 2) }> }
    token time-noun:sym<Russian> { :i 'время' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'время', 2) }> }
    token timeline-noun:sym<Russian> { :i  <time-adjective> 'строка'  }
    token times-noun:sym<Russian> { :i 'раз' | ([\w]+) <?{ $0.Str !(elem) <как граф на рама рамы из без наш ряд шаг> and is-ru-fuzzy-match($0.Str, 'раз', 1) }> }
    token to-preposition:sym<Russian> { :i 'на' | 'до' }
    token top-adjective:sym<Russian> { :i 'най-горен' | ([\w]+) <?{ $0.Str !(elem) <най-горна най-горно най-горни> and is-ru-fuzzy-match($0.Str, 'най-горен', 2) }> | 'най-горна' | ([\w]+) <?{ $0.Str !(elem) <най-горен най-горно най-горни> and is-ru-fuzzy-match($0.Str, 'най-горна', 2) }> | 'най-горно' | ([\w]+) <?{ $0.Str !(elem) <най-горен най-горна най-горни> and is-ru-fuzzy-match($0.Str, 'най-горно', 2) }> | 'най-горни' | ([\w]+) <?{ $0.Str !(elem) <най-горен най-горна най-горно> and is-ru-fuzzy-match($0.Str, 'най-горни', 2) }> | 'топ' | ([\w]+) <?{ $0.Str !(elem) <по от код лоб во это мой моя под итог что до тип типы кто> and is-ru-fuzzy-match($0.Str, 'топ', 1) }> | 'топ' | ([\w]+) <?{ $0.Str !(elem) <по от код лоб во это мой моя под итог что до тип типы кто> and is-ru-fuzzy-match($0.Str, 'топ', 1) }> | 'топ' | ([\w]+) <?{ $0.Str !(elem) <по от код лоб во это мой моя под итог что до тип типы кто> and is-ru-fuzzy-match($0.Str, 'топ', 1) }> | 'топ' | ([\w]+) <?{ $0.Str !(elem) <по от код лоб во это мой моя под итог что до тип типы кто> and is-ru-fuzzy-match($0.Str, 'топ', 1) }> }
    token top-noun:sym<Russian> { :i 'топ' | ([\w]+) <?{ $0.Str !(elem) <по от код лоб во это мой моя под итог что до тип типы кто> and is-ru-fuzzy-match($0.Str, 'топ', 1) }> }
    token transform-verb:sym<Russian> { :i 'преобразование' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'преобразование', 2) }> }
    token translation-noun:sym<Russian> { :i 'перевод' | ([\w]+) <?{ $0.Str ne 'первое' and is-ru-fuzzy-match($0.Str, 'перевод', 2) }> }
    token type-noun:sym<Russian> { :i 'тип' | ([\w]+) <?{ $0.Str !(elem) <и из мин эти им топ типы> and is-ru-fuzzy-match($0.Str, 'тип', 1) }> }
    token types-noun:sym<Russian> { :i 'типы' | ([\w]+) <?{ $0.Str !(elem) <топ тип> and is-ru-fuzzy-match($0.Str, 'типы', 2) }> }
    token until-preposition:sym<Russian> { :i 'до' | 'пока' | ([\w]+) <?{ $0.Str !(elem) <оба по под> and is-ru-fuzzy-match($0.Str, 'пока', 2) }> }
    token up-adverb:sym<Russian> { :i 'выше' | ([\w]+) <?{ $0.Str ne 'все' and is-ru-fuzzy-match($0.Str, 'выше', 2) }> | 'наверх' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'наверх', 2) }> }
    token use-verb:sym<Russian> { :i 'использовать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'использовать', 2) }> | 'используйте' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'используйте', 2) }> }
    token used-verb:sym<Russian> { :i 'использованый' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'использованый', 2) }> | 'используется' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'используется', 2) }> }
    token using-preposition:sym<Russian> { :i 'через' | ([\w]+) <?{ $0.Str ne 'чертеж' and is-ru-fuzzy-match($0.Str, 'через', 2) }> | 'с' | 'с' }
    token value-noun:sym<Russian> { :i 'значение' | ([\w]+) <?{ $0.Str ne 'значения' and is-ru-fuzzy-match($0.Str, 'значение', 2) }> }
    token values-noun:sym<Russian> { :i 'значения' | ([\w]+) <?{ $0.Str ne 'значение' and is-ru-fuzzy-match($0.Str, 'значения', 2) }> }
    token variable-noun:sym<Russian> { :i 'pеременная' | ([\w]+) <?{ $0.Str ne 'pеременные' and is-ru-fuzzy-match($0.Str, 'pеременная', 2) }> }
    token variables-noun:sym<Russian> { :i 'pеременные' | ([\w]+) <?{ $0.Str ne 'pеременная' and is-ru-fuzzy-match($0.Str, 'pеременные', 2) }> }
    token versus-preposition:sym<Russian> { :i 'против' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'против', 2) }> | 'ср.' | ([\w]+) <?{ $0.Str !(elem) <с съб> and is-ru-fuzzy-match($0.Str, 'ср.', 1) }> | 'против' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'против', 2) }> }
    token way-noun:sym<Russian> { :i 'раз' | ([\w]+) <?{ $0.Str !(elem) <как граф на рама рамы из без наш ряд шаг> and is-ru-fuzzy-match($0.Str, 'раз', 1) }> | 'способ' | ([\w]+) <?{ $0.Str ne 'список' and is-ru-fuzzy-match($0.Str, 'способ', 2) }> }
    token weight:sym<Russian> { :i <weight-noun> }
    token weight-adjective:sym<Russian> { :i 'весовой' | ([\w]+) <?{ $0.Str !(elem) <весовая весовое весовые> and is-ru-fuzzy-match($0.Str, 'весовой', 2) }> | 'весовая' | ([\w]+) <?{ $0.Str !(elem) <весовой весовое весовые> and is-ru-fuzzy-match($0.Str, 'весовая', 2) }> | 'весовое' | ([\w]+) <?{ $0.Str !(elem) <весовой весовая весовые> and is-ru-fuzzy-match($0.Str, 'весовое', 2) }> | 'весовые' | ([\w]+) <?{ $0.Str !(elem) <весовой весовая весовое> and is-ru-fuzzy-match($0.Str, 'весовые', 2) }> }
    token weight-noun:sym<Russian> { :i 'вес' | ([\w]+) <?{ $0.Str !(elem) <все с в во е без нет вещь вещи веса вo> and is-ru-fuzzy-match($0.Str, 'вес', 1) }> }
    token weights:sym<Russian> { :i <weights-noun> }
    token weights-noun:sym<Russian> { :i 'веса' | ([\w]+) <?{ $0.Str !(elem) <все дела вещь вещи вес> and is-ru-fuzzy-match($0.Str, 'веса', 2) }> }
    token what-pronoun:sym<Russian> { :i 'что' | ([\w]+) <?{ $0.Str !(elem) <дно по от во это итог эти до топ кто> and is-ru-fuzzy-match($0.Str, 'что', 1) }> | 'который' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'который', 2) }> }
    token when-pronoun:sym<Russian> { :i 'когда' | ([\w]+) <?{ $0.Str !(elem) <код коды> and is-ru-fuzzy-match($0.Str, 'когда', 2) }> }
    token which-determiner:sym<Russian> { :i 'кто' | ([\w]+) <?{ $0.Str !(elem) <как дно по от код во это итог эти что до топ> and is-ru-fuzzy-match($0.Str, 'кто', 1) }> | 'какой' | ([\w]+) <?{ $0.Str ne 'как' and is-ru-fuzzy-match($0.Str, 'какой', 2) }> }
    token with-preposition:sym<Russian> { :i 'через' | ([\w]+) <?{ $0.Str ne 'чертеж' and is-ru-fuzzy-match($0.Str, 'через', 2) }> | 'с' }
    token within-preposition:sym<Russian> { :i 'в' | 'вo' | 'внутри' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'внутри', 2) }> }
    token without-preposition:sym<Russian> { :i 'без' | ([\w]+) <?{ $0.Str !(elem) <из е нет бери раз вес> and is-ru-fuzzy-match($0.Str, 'без', 1) }> }
    token word-noun:sym<Russian> { :i 'слово' | ([\w]+) <?{ $0.Str !(elem) <слева слова> and is-ru-fuzzy-match($0.Str, 'слово', 2) }> }
    token words-noun:sym<Russian> { :i 'слова' | ([\w]+) <?{ $0.Str !(elem) <словарь слева слово> and is-ru-fuzzy-match($0.Str, 'слова', 2) }> }

    # Directives and phrases
    rule data-frame:sym<Russian> {  <data-noun>? <table-noun>  }
    rule data-frames:sym<Russian> {  <data-noun>? <tables-noun>  }
    rule time-series-data:sym<Russian> {  <time-adjective> <series-noun> <data-noun>?  }
    rule number-of:sym<Russian> {  [ <number-noun> | <count-verb> | <counts-noun> ] <of-preposition>?  }

}

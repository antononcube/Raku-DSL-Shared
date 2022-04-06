# ============================================================
# This role class is generated from the file
#   DSL::Shared::Roles::Bulgarian::CommonSpeechParts-template
# using the function AddFuzzyMatch CLI from
#   Grammar::TokenProcessing
# ============================================================

use v6.d;

use DSL::Shared::Utilities::DeterminedWordsMatching;

role DSL::Shared::Roles::Bulgarian::CommonSpeechParts {
    # Single words
    token ID-noun:sym<Bulgarian> { :i 'ID' | 'ИД' }
    token IDENTIFIER-adjective:sym<Bulgarian> { :i 'IDENTIFIER' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'IDENTIFIER', 2) }> | 'ИДЕНТИФИКАТОРЕН' | ([\w]+) <?{ $0.Str !(elem) <ИДЕНТИФИКАТОРНА ИДЕНТИФИКАТОРНИ ИДЕНТИФИКАТОР> and is-bg-fuzzy-match($0.Str, 'ИДЕНТИФИКАТОРЕН', 2) }> | 'ИДЕНТИФИКАТОРНА' | ([\w]+) <?{ $0.Str !(elem) <ИДЕНТИФИКАТОРЕН ИДЕНТИФИКАТОРНИ ИДЕНТИФИКАТОР> and is-bg-fuzzy-match($0.Str, 'ИДЕНТИФИКАТОРНА', 2) }> | 'ИДЕНТИФИКАТОРНИ' | ([\w]+) <?{ $0.Str !(elem) <ИДЕНТИФИКАТОРЕН ИДЕНТИФИКАТОРНА ИДЕНТИФИКАТОР> and is-bg-fuzzy-match($0.Str, 'ИДЕНТИФИКАТОРНИ', 2) }> }
    token IDENTIFIER-noun:sym<Bulgarian> { :i 'IDENTIFIER' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'IDENTIFIER', 2) }> | 'ИДЕНТИФИКАТОР' | ([\w]+) <?{ $0.Str !(elem) <ИДЕНТИФИКАТОРЕН ИДЕНТИФИКАТОРНА ИДЕНТИФИКАТОРНИ> and is-bg-fuzzy-match($0.Str, 'ИДЕНТИФИКАТОР', 2) }> }
    token MODULE-noun:sym<Bulgarian> { :i 'MODULE' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'MODULE', 2) }> | 'МОДУЛ' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'МОДУЛ', 2) }> }
    token TARGET-noun:sym<Bulgarian> { :i 'TARGET' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'TARGET', 2) }> | 'ЦЕЛ' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'ЦЕЛ', 1) }> }
    token USER-noun:sym<Bulgarian> { :i 'USER' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'USER', 2) }> | 'ПОТРЕБИТЕЛ' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'ПОТРЕБИТЕЛ', 2) }> }
    token a-determiner { '' }
    token add-verb:sym<Bulgarian> { :i 'събери' | ([\w]+) <?{ $0.Str ne 'съседи' and is-bg-fuzzy-match($0.Str, 'събери', 2) }> | 'добави' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'добави', 2) }> }
    token adhere-verb:sym<Bulgarian> { :i 'държи' | ([\w]+) <?{ $0.Str !(elem) <вържи свържи търси първи> and is-bg-fuzzy-match($0.Str, 'държи', 2) }> | 'според' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'според', 2) }> }
    token adjacency-noun:sym<Bulgarian> { :i 'аджудант' | ([\w]+) <?{ $0.Str ne 'аджудантен' and is-bg-fuzzy-match($0.Str, 'аджудант', 2) }> }
    token adjacent-adjective:sym<Bulgarian> { :i 'аджудант' | ([\w]+) <?{ $0.Str ne 'аджудантен' and is-bg-fuzzy-match($0.Str, 'аджудант', 2) }> | 'аджудантен' | ([\w]+) <?{ $0.Str ne 'аджудант' and is-bg-fuzzy-match($0.Str, 'аджудантен', 2) }> }
    token algorithm-noun:sym<Bulgarian> { :i 'алогоритъм' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'алогоритъм', 2) }> }
    token algorithms-noun:sym<Bulgarian> { :i 'алгоритми' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'алгоритми', 2) }> }
    token all-determiner:sym<Bulgarian> { :i 'всяко' | ([\w]+) <?{ $0.Str !(elem) <всеки всяка> and is-bg-fuzzy-match($0.Str, 'всяко', 2) }> | 'всички' | ([\w]+) <?{ $0.Str ne 'всеки' and is-bg-fuzzy-match($0.Str, 'всички', 2) }> }
    token and-conjunction:sym<Bulgarian> { :i 'и' }
    token annex-verb:sym<Bulgarian> { :i 'присъедини' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'присъедини', 2) }> }
    token append-verb:sym<Bulgarian> { :i 'добави' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'добави', 2) }> }
    token apply-verb:sym<Bulgarian> { :i 'приложи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'приложи', 2) }> }
    token are-verb:sym<Bulgarian> { :i 'са' }
    token array-noun:sym<Bulgarian> { :i 'масив' | ([\w]+) <?{ $0.Str ne 'масиви' and is-bg-fuzzy-match($0.Str, 'масив', 2) }> }
    token arrays-noun:sym<Bulgarian> { :i 'масиви' | ([\w]+) <?{ $0.Str ne 'масив' and is-bg-fuzzy-match($0.Str, 'масиви', 2) }> }
    token as-preposition:sym<Bulgarian> { :i 'като' | ([\w]+) <?{ $0.Str !(elem) <то карта датов дата дати докато как което какво> and is-bg-fuzzy-match($0.Str, 'като', 2) }> }
    token assign-verb:sym<Bulgarian> { :i 'присвои' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'присвои', 2) }> }
    token at-preposition:sym<Bulgarian> { :i 'то' }
    token automatic:sym<Bulgarian> { :i 'автоматичен' | ([\w]+) <?{ $0.Str !(elem) <автоматична автоматично автоматични> and is-bg-fuzzy-match($0.Str, 'автоматичен', 2) }> | 'автоматична' | ([\w]+) <?{ $0.Str !(elem) <автоматичен автоматично автоматични> and is-bg-fuzzy-match($0.Str, 'автоматична', 2) }> | 'автоматично' | ([\w]+) <?{ $0.Str !(elem) <автоматичен автоматична автоматични> and is-bg-fuzzy-match($0.Str, 'автоматично', 2) }> | 'автоматични' | ([\w]+) <?{ $0.Str !(elem) <автоматичен автоматична автоматично> and is-bg-fuzzy-match($0.Str, 'автоматични', 2) }> }
    token away-adverb:sym<Bulgarian> { :i 'away' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'away', 2) }> }
    token axes-noun:sym<Bulgarian> { :i 'оси' | ([\w]+) <?{ $0.Str !(elem) <и са ос от или този с кои> and is-bg-fuzzy-match($0.Str, 'оси', 1) }> }
    token axis-noun:sym<Bulgarian> { :i 'ос' }
    token be-verb:sym<Bulgarian> { :i 'be' }
    token both-determiner:sym<Bulgarian> { :i  'и'? 'двете' | 'едновременно' | 'заедно'  }
    token bottom-noun:sym<Bulgarian> { :i 'дъно' | ([\w]+) <?{ $0.Str !(elem) <пълно дело едно дясно до> and is-bg-fuzzy-match($0.Str, 'дъно', 2) }> | 'най-ниско' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'най-ниско', 2) }> }
    token broaden-verb:sym<Bulgarian> { :i 'разшири' | ([\w]+) <?{ $0.Str ne 'размери' and is-bg-fuzzy-match($0.Str, 'разшири', 2) }> }
    token by-preposition:sym<Bulgarian> { :i 'от' | 'със' | ([\w]+) <?{ $0.Str !(elem) <са ос във съб към с път> and is-bg-fuzzy-match($0.Str, 'със', 1) }> | 'чрез' | ([\w]+) <?{ $0.Str !(elem) <през без ред> and is-bg-fuzzy-match($0.Str, 'чрез', 2) }> }
    token calculation:sym<Bulgarian> { :i 'изчисление' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'изчисление', 2) }> }
    token case-noun:sym<Bulgarian> { :i 'случай' | ([\w]+) <?{ $0.Str !(elem) <случаи случаен> and is-bg-fuzzy-match($0.Str, 'случай', 2) }> }
    token cases-noun:sym<Bulgarian> { :i 'случаи' | ([\w]+) <?{ $0.Str !(elem) <случай случаен> and is-bg-fuzzy-match($0.Str, 'случаи', 2) }> }
    token chart-verb:sym<Bulgarian> { :i 'чертай' | ([\w]+) <?{ $0.Str !(elem) <начертай чертеж> and is-bg-fuzzy-match($0.Str, 'чертай', 2) }> | 'начертай' | ([\w]+) <?{ $0.Str ne 'чертай' and is-bg-fuzzy-match($0.Str, 'начертай', 2) }> }
    token chart-noun:sym<Bulgarian> { :i 'чертеж' | ([\w]+) <?{ $0.Str !(elem) <чертай чертежи> and is-bg-fuzzy-match($0.Str, 'чертеж', 2) }> | 'диаграма' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'диаграма', 2) }> | 'карта' | ([\w]+) <?{ $0.Str !(elem) <като дата> and is-bg-fuzzy-match($0.Str, 'карта', 2) }> }
    token classify-verb:sym<Bulgarian> { :i 'класифицирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'класифицирай', 2) }> }
    token clear-verb:sym<Bulgarian> { :i 'чисти' | ([\w]+) <?{ $0.Str !(elem) <зачисти изчисти число част> and is-bg-fuzzy-match($0.Str, 'чисти', 2) }> | 'зачисти' | ([\w]+) <?{ $0.Str !(elem) <чисти изчисти записи замести> and is-bg-fuzzy-match($0.Str, 'зачисти', 2) }> | 'изчисти' | ([\w]+) <?{ $0.Str !(elem) <чисти зачисти изчисли> and is-bg-fuzzy-match($0.Str, 'изчисти', 2) }> }
    token cluster:sym<Bulgarian> { :i <cluster-noun> }
    token cluster-noun:sym<Bulgarian> { :i 'клъстер' | ([\w]+) <?{ $0.Str ne 'клъстери' and is-bg-fuzzy-match($0.Str, 'клъстер', 2) }> | 'група' | ([\w]+) <?{ $0.Str ne 'групи' and is-bg-fuzzy-match($0.Str, 'група', 2) }> }
    token clusters-noun:sym<Bulgarian> { :i 'клъстери' | ([\w]+) <?{ $0.Str ne 'клъстер' and is-bg-fuzzy-match($0.Str, 'клъстери', 2) }> | 'групи' | ([\w]+) <?{ $0.Str ne 'група' and is-bg-fuzzy-match($0.Str, 'групи', 2) }> }
    token code-noun:sym<Bulgarian> { :i 'код' | ([\w]+) <?{ $0.Str !(elem) <то ос от как ид мой моя по ред под до към кога кой кои> and is-bg-fuzzy-match($0.Str, 'код', 1) }> }
    token codes-noun:sym<Bulgarian> { :i 'кодове' | ([\w]+) <?{ $0.Str ne 'редове' and is-bg-fuzzy-match($0.Str, 'кодове', 2) }> }
    token column-noun:sym<Bulgarian> { :i 'колона' | ([\w]+) <?{ $0.Str ne 'колони' and is-bg-fuzzy-match($0.Str, 'колона', 2) }> }
    token columns:sym<Bulgarian> { :i <columns-noun> }
    token columns-noun:sym<Bulgarian> { :i 'колони' | ([\w]+) <?{ $0.Str ne 'колона' and is-bg-fuzzy-match($0.Str, 'колони', 2) }> }
    token complete-adjective:sym<Bulgarian> { :i 'пълно' | ([\w]+) <?{ $0.Str !(elem) <дъно пълни първо> and is-bg-fuzzy-match($0.Str, 'пълно', 2) }> | 'пълни' | ([\w]+) <?{ $0.Str !(elem) <пълно първи> and is-bg-fuzzy-match($0.Str, 'пълни', 2) }> }
    token compute-directive:sym<Bulgarian> { :i 'изчисли' | ([\w]+) <?{ $0.Str ne 'изчисти' and is-bg-fuzzy-match($0.Str, 'изчисли', 2) }> | 'намери' | ([\w]+) <?{ $0.Str !(elem) <размери замени> and is-bg-fuzzy-match($0.Str, 'намери', 2) }> | 'калкулирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'калкулирай', 2) }> | 'пресметни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'пресметни', 2) }> }
    token config-noun:sym<Bulgarian> { :i 'конфигурирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'конфигурирай', 2) }> }
    token configuration-noun:sym<Bulgarian> { :i 'конфигурация' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'конфигурация', 2) }> }
    token connect-verb:sym<Bulgarian> { :i 'вържи' | ([\w]+) <?{ $0.Str !(elem) <държи свържи търси първи върху> and is-bg-fuzzy-match($0.Str, 'вържи', 2) }> | 'свържи' | ([\w]+) <?{ $0.Str !(elem) <държи вържи> and is-bg-fuzzy-match($0.Str, 'свържи', 2) }> }
    token consider-verb:sym<Bulgarian> { :i 'разгледай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разгледай', 2) }> }
    token context-noun:sym<Bulgarian> { :i 'контекст' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'контекст', 2) }> }
    token contingency-noun:sym<Bulgarian> { :i  'контингентен' | 'кръстосано' 'табулиране'  }
    token convert-verb:sym<Bulgarian> { :i 'превърни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'превърни', 2) }> }
    token count-verb:sym<Bulgarian> { :i 'преброй' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'преброй', 2) }> | 'брой' | ([\w]+) <?{ $0.Str !(elem) <бройка броя бройки мой кой> and is-bg-fuzzy-match($0.Str, 'брой', 2) }> | 'бройка' | ([\w]+) <?{ $0.Str !(elem) <брой бройки> and is-bg-fuzzy-match($0.Str, 'бройка', 2) }> | 'размер' | ([\w]+) <?{ $0.Str ne 'размери' and is-bg-fuzzy-match($0.Str, 'размер', 2) }> }
    token counts-noun:sym<Bulgarian> { :i 'броя' | ([\w]+) <?{ $0.Str !(elem) <брой моя> and is-bg-fuzzy-match($0.Str, 'броя', 2) }> | 'броеве' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'броеве', 2) }> | 'бройки' | ([\w]+) <?{ $0.Str !(elem) <брой бройка> and is-bg-fuzzy-match($0.Str, 'бройки', 2) }> | 'размери' | ([\w]+) <?{ $0.Str !(elem) <разшири намери размер раздели> and is-bg-fuzzy-match($0.Str, 'размери', 2) }> }
    token create:sym<Bulgarian> { :i 'създай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'създай', 2) }> | 'направи' | ([\w]+) <?{ $0.Str !(elem) <прави забрави> and is-bg-fuzzy-match($0.Str, 'направи', 2) }> }
    token create-directive:sym<Bulgarian> { :i  <create-verb> | 'направи'  }
    token create-verb:sym<Bulgarian> { :i 'създай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'създай', 2) }> }
    token creation-noun:sym<Bulgarian> { :i 'създание' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'създание', 2) }> | 'дело' | ([\w]+) <?{ $0.Str !(elem) <дъно ехо чело едно нещо цел до тегло> and is-bg-fuzzy-match($0.Str, 'дело', 2) }> }
    token current-adjective:sym<Bulgarian> { :i 'текущ' | ([\w]+) <?{ $0.Str !(elem) <текуща текущо текст> and is-bg-fuzzy-match($0.Str, 'текущ', 2) }> | 'текуща' | ([\w]+) <?{ $0.Str !(elem) <текущ текущо> and is-bg-fuzzy-match($0.Str, 'текуща', 2) }> | 'текущо' | ([\w]+) <?{ $0.Str !(elem) <текущ текуща> and is-bg-fuzzy-match($0.Str, 'текущо', 2) }> }
    token data-adjective:sym<Bulgarian> { :i 'даннов' | ([\w]+) <?{ $0.Str !(elem) <даннова данново даннови данни датов данна> and is-bg-fuzzy-match($0.Str, 'даннов', 2) }> | 'даннова' | ([\w]+) <?{ $0.Str !(elem) <даннов данново даннови датова данна> and is-bg-fuzzy-match($0.Str, 'даннова', 2) }> | 'данново' | ([\w]+) <?{ $0.Str !(elem) <даннов даннова даннови датово> and is-bg-fuzzy-match($0.Str, 'данново', 2) }> | 'даннови' | ([\w]+) <?{ $0.Str !(elem) <даннов даннова данново данни датови> and is-bg-fuzzy-match($0.Str, 'даннови', 2) }> }
    token data-noun:sym<Bulgarian> { :i 'данни' | ([\w]+) <?{ $0.Str !(elem) <даннов даннови дати данна десни> and is-bg-fuzzy-match($0.Str, 'данни', 2) }> | 'даннов' | ([\w]+) <?{ $0.Str !(elem) <даннова данново даннови данни датов данна> and is-bg-fuzzy-match($0.Str, 'даннов', 2) }> | 'даннова' | ([\w]+) <?{ $0.Str !(elem) <даннов данново даннови датова данна> and is-bg-fuzzy-match($0.Str, 'даннова', 2) }> }
    token date-adjective:sym<Bulgarian> { :i 'датов' | ([\w]+) <?{ $0.Str !(elem) <като даннов датова датово датови дата дати> and is-bg-fuzzy-match($0.Str, 'датов', 2) }> | 'датова' | ([\w]+) <?{ $0.Str !(elem) <даннова датов датово датови дата това> and is-bg-fuzzy-match($0.Str, 'датова', 2) }> | 'датово' | ([\w]+) <?{ $0.Str !(elem) <данново датов датова датови> and is-bg-fuzzy-match($0.Str, 'датово', 2) }> | 'датови' | ([\w]+) <?{ $0.Str !(elem) <даннови датов датова датово дати> and is-bg-fuzzy-match($0.Str, 'датови', 2) }> }
    token date-noun:sym<Bulgarian> { :i 'дата' | ([\w]+) <?{ $0.Str !(elem) <като карта датов датова дати данна дума> and is-bg-fuzzy-match($0.Str, 'дата', 2) }> }
    token dates-noun:sym<Bulgarian> { :i 'дати' | ([\w]+) <?{ $0.Str !(elem) <като данни датов датови дата наши думи> and is-bg-fuzzy-match($0.Str, 'дати', 2) }> }
    token dataset:sym<Bulgarian> { :i <dataset-noun> }
    token dataset-noun { 'дейтасет' | 'дейта' \h+ 'сет' | <array-noun> 'от' <data-noun> | <data-adjective> \h+ <array-noun>}
    token datasets-noun { 'дейтасети' | <arrays-noun> \h+ 'от' \h+ <data-noun> | <data-adjective> \h+ <arrays-noun> }
    token default:sym<Bulgarian> { :i <default-noun> }
    token default-noun { 'по' 'подразбиране' | 'подразбиращ' \h+ 'се' }
    token datum-noun:sym<Bulgarian> { :i 'данна' | ([\w]+) <?{ $0.Str !(elem) <даннов даннова данни дата дясна> and is-bg-fuzzy-match($0.Str, 'данна', 2) }> }
    token delete-directive:sym<Bulgarian> { :i 'изтрий' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'изтрий', 2) }> | 'изхвърли' | ([\w]+) <?{ $0.Str ne 'захвърли' and is-bg-fuzzy-match($0.Str, 'изхвърли', 2) }> | 'премахни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'премахни', 2) }> }
    token detect-verb:sym<Bulgarian> { :i 'установи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'установи', 2) }> | 'намери' | ([\w]+) <?{ $0.Str !(elem) <размери замени> and is-bg-fuzzy-match($0.Str, 'намери', 2) }> | 'детектирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'детектирай', 2) }> }
    token diagram:sym<Bulgarian> { :i <diagram-synonyms> }
    token diagram-noun:sym<Bulgarian> { :i 'диаграма' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'диаграма', 2) }> }
    token diagram-synonyms:sym<Bulgarian> { :i 
        <diagram-noun> |
        <plot-noun> |
        <plots-noun> |
        <graph-noun> |
        <chart-noun> }
    token difference:sym<Bulgarian> { :i 'разлика' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разлика', 2) }> }
    token dimension-noun:sym<Bulgarian> { :i 'размерност' | ([\w]+) <?{ $0.Str ne 'размерности' and is-bg-fuzzy-match($0.Str, 'размерност', 2) }> }
    token dimensions-noun:sym<Bulgarian> { :i 'размерности' | ([\w]+) <?{ $0.Str ne 'размерност' and is-bg-fuzzy-match($0.Str, 'размерности', 2) }> }
    token directly-adverb:sym<Bulgarian> { :i 'директно' | ([\w]+) <?{ $0.Str ne 'директен' and is-bg-fuzzy-match($0.Str, 'директно', 2) }> }
    token display-directive:sym<Bulgarian> { :i  <display-verb> | 'покажи' | 'ехо'  }
    token display-verb:sym<Bulgarian> { :i 'покажи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'покажи', 2) }> }
    token distance-noun:sym<Bulgarian> { :i 'разстояние' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разстояние', 2) }> }
    token do-verb:sym<Bulgarian> { :i 'прави' | ([\w]+) <?{ $0.Str !(elem) <направи първи> and is-bg-fuzzy-match($0.Str, 'прави', 2) }> }
    token document-noun:sym<Bulgarian> { :i 'документ' | ([\w]+) <?{ $0.Str ne 'документи' and is-bg-fuzzy-match($0.Str, 'документ', 2) }> }
    token documents-noun:sym<Bulgarian> { :i 'документи' | ([\w]+) <?{ $0.Str ne 'документ' and is-bg-fuzzy-match($0.Str, 'документи', 2) }> }
    token domain-noun:sym<Bulgarian> { :i 'домейн' | ([\w]+) <?{ $0.Str ne 'долен' and is-bg-fuzzy-match($0.Str, 'домейн', 2) }> | 'област' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'област', 2) }> }
    token drop-verb:sym<Bulgarian> { :i 'изхвърли' | ([\w]+) <?{ $0.Str ne 'захвърли' and is-bg-fuzzy-match($0.Str, 'изхвърли', 2) }> | 'забрави' | ([\w]+) <?{ $0.Str ne 'направи' and is-bg-fuzzy-match($0.Str, 'забрави', 2) }> | 'захвърли' | ([\w]+) <?{ $0.Str ne 'изхвърли' and is-bg-fuzzy-match($0.Str, 'захвърли', 2) }> }
    token during-preposition:sym<Bulgarian> { :i 'докато' | ([\w]+) <?{ $0.Str ne 'като' and is-bg-fuzzy-match($0.Str, 'докато', 2) }> | 'през' | ([\w]+) <?{ $0.Str !(elem) <чрез без ред> and is-bg-fuzzy-match($0.Str, 'през', 2) }> }
    token each-determiner:sym<Bulgarian> { :i 'всеки' | ([\w]+) <?{ $0.Str !(elem) <всяко всички всяка вземи> and is-bg-fuzzy-match($0.Str, 'всеки', 2) }> | 'всяко' | ([\w]+) <?{ $0.Str !(elem) <всеки всяка> and is-bg-fuzzy-match($0.Str, 'всяко', 2) }> | 'всяка' | ([\w]+) <?{ $0.Str !(elem) <всяко всеки> and is-bg-fuzzy-match($0.Str, 'всяка', 2) }> }
    token echo-verb:sym<Bulgarian> { :i 'ехо' | ([\w]+) <?{ $0.Str !(elem) <то дело чело е по едно нещо до> and is-bg-fuzzy-match($0.Str, 'ехо', 1) }> }
    token element:sym<Bulgarian> { :i <element-noun> }
    token element-noun:sym<Bulgarian> { :i 'елемент' | ([\w]+) <?{ $0.Str ne 'елементи' and is-bg-fuzzy-match($0.Str, 'елемент', 2) }> }
    token elements:sym<Bulgarian> { :i <elements-noun> }
    token elements-noun:sym<Bulgarian> { :i 'елементи' | ([\w]+) <?{ $0.Str ne 'елемент' and is-bg-fuzzy-match($0.Str, 'елементи', 2) }> }
    token empty-noun:sym<Bulgarian> { :i 'празно' | ([\w]+) <?{ $0.Str ne 'празнота' and is-bg-fuzzy-match($0.Str, 'празно', 2) }> | 'празнота' | ([\w]+) <?{ $0.Str ne 'празно' and is-bg-fuzzy-match($0.Str, 'празнота', 2) }> }
    token empty-verb:sym<Bulgarian> { :i  'празни' | <empty-noun>  }
    token every-determiner:sym<Bulgarian> { :i 'всеки' | ([\w]+) <?{ $0.Str !(elem) <всяко всички всяка вземи> and is-bg-fuzzy-match($0.Str, 'всеки', 2) }> | 'всяко' | ([\w]+) <?{ $0.Str !(elem) <всеки всяка> and is-bg-fuzzy-match($0.Str, 'всяко', 2) }> | 'всяка' | ([\w]+) <?{ $0.Str !(elem) <всяко всеки> and is-bg-fuzzy-match($0.Str, 'всяка', 2) }> }
    token extend-verb:sym<Bulgarian> { :i 'разшири' | ([\w]+) <?{ $0.Str ne 'размери' and is-bg-fuzzy-match($0.Str, 'разшири', 2) }> }
    token extract-directive:sym<Bulgarian> { :i 'измъкни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'измъкни', 2) }> | 'извади' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'извади', 2) }> | 'добий' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'добий', 2) }> }
    token filter:sym<Bulgarian> { :i <filter-verb> }
    token filter-noun:sym<Bulgarian> { :i <filter-verb> }
    token filter-verb:sym<Bulgarian> { :i 'филтър' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'филтър', 2) }> | 'филтрирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'филтрирай', 2) }> }
    token find-verb:sym<Bulgarian> { :i 'търси' | ([\w]+) <?{ $0.Str !(elem) <държи вържи първи> and is-bg-fuzzy-match($0.Str, 'търси', 2) }> | 'намери' | ([\w]+) <?{ $0.Str !(elem) <размери замени> and is-bg-fuzzy-match($0.Str, 'намери', 2) }> }
    token first-adjective:sym<Bulgarian> { :i 'първи' | ([\w]+) <?{ $0.Str !(elem) <държи пълни вържи прави търси първа първо> and is-bg-fuzzy-match($0.Str, 'първи', 2) }> | 'първа' | ([\w]+) <?{ $0.Str !(elem) <първи първо> and is-bg-fuzzy-match($0.Str, 'първа', 2) }> | 'първо' | ([\w]+) <?{ $0.Str !(elem) <пълно първи първа> and is-bg-fuzzy-match($0.Str, 'първо', 2) }> }
    token for-preposition:sym<Bulgarian> { :i 'за' | 'със' | ([\w]+) <?{ $0.Str !(elem) <са ос във съб към с път> and is-bg-fuzzy-match($0.Str, 'със', 1) }> | 'на' }
    token frame-noun:sym<Bulgarian> { :i 'рамка' | ([\w]+) <?{ $0.Str ne 'рамки' and is-bg-fuzzy-match($0.Str, 'рамка', 2) }> }
    token frames-noun:sym<Bulgarian> { :i 'рамки' | ([\w]+) <?{ $0.Str ne 'рамка' and is-bg-fuzzy-match($0.Str, 'рамки', 2) }> }
    token from-preposition:sym<Bulgarian> { :i 'от' }
    token function:sym<Bulgarian> { :i <function-noun> }
    token functions:sym<Bulgarian> { :i <functions-noun> }
    token function-noun:sym<Bulgarian> { :i 'функция' | ([\w]+) <?{ $0.Str ne 'функции' and is-bg-fuzzy-match($0.Str, 'функция', 2) }> }
    token functions-noun:sym<Bulgarian> { :i 'функции' | ([\w]+) <?{ $0.Str ne 'функция' and is-bg-fuzzy-match($0.Str, 'функции', 2) }> }
    token generate-directive:sym<Bulgarian> { :i  <generate-verb> | <create-verb> | 'направи'  }
    token generate-verb:sym<Bulgarian> { :i 'генерирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'генерирай', 2) }> }
    token get-verb:sym<Bulgarian> { :i 'вземи' | ([\w]+) <?{ $0.Str !(elem) <всеки време> and is-bg-fuzzy-match($0.Str, 'вземи', 2) }> }
    token graph-noun:sym<Bulgarian> { :i 'граф' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'граф', 2) }> }
    token head-adjective:sym<Bulgarian> { :i <head-noun> }
    token head-noun:sym<Bulgarian> { :i 'чело' | ([\w]+) <?{ $0.Str !(elem) <дело ехо начело число нещо цел тегло> and is-bg-fuzzy-match($0.Str, 'чело', 2) }> | 'начело' | ([\w]+) <?{ $0.Str ne 'чело' and is-bg-fuzzy-match($0.Str, 'начело', 2) }> }
    token high-adjective:sym<Bulgarian> { :i 'висок' | ([\w]+) <?{ $0.Str ne 'нисък' and is-bg-fuzzy-match($0.Str, 'висок', 2) }> }
    token higher-adjective:sym<Bulgarian> { :i 'по-висок' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'по-висок', 2) }> }
    token histogram:sym<Bulgarian> { :i 'хистограма' | ([\w]+) <?{ $0.Str ne 'хистограми' and is-bg-fuzzy-match($0.Str, 'хистограма', 2) }> }
    token histograms:sym<Bulgarian> { :i 'хистограми' | ([\w]+) <?{ $0.Str ne 'хистограма' and is-bg-fuzzy-match($0.Str, 'хистограми', 2) }> }
    token how-adverb:sym<Bulgarian> { :i 'как' | ([\w]+) <?{ $0.Str !(elem) <са като код за на макс наш към какво какви кой кои> and is-bg-fuzzy-match($0.Str, 'как', 1) }> }
    token id-noun:sym<Bulgarian> { :i 'ид' }
    token identifier-adjective:sym<Bulgarian> { :i <IDENTIFIER-adjective> }
    token identifier-noun:sym<Bulgarian> { :i <IDENTIFIER-noun> }
    token in-preposition:sym<Bulgarian> { :i 'в' | 'във' | ([\w]+) <?{ $0.Str !(elem) <със в ляв съб към връх път> and is-bg-fuzzy-match($0.Str, 'във', 1) }> }
    token include-verb:sym<Bulgarian> { :i 'включи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'включи', 2) }> | 'включвай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'включвай', 2) }> }
    token ingest-verb:sym<Bulgarian> { :i 'прочети' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'прочети', 2) }> }
    token into-preposition:sym<Bulgarian> { :i 'в' | 'във' | ([\w]+) <?{ $0.Str !(elem) <със в ляв съб към връх път> and is-bg-fuzzy-match($0.Str, 'във', 1) }> }
    token is-verb:sym<Bulgarian> { :i 'е' }
    token it-pronoun:sym<Bulgarian> { :i 'това' | ([\w]+) <?{ $0.Str !(elem) <то датова лява онова този кога> and is-bg-fuzzy-match($0.Str, 'това', 2) }> | 'което' | ([\w]+) <?{ $0.Str ne 'като' and is-bg-fuzzy-match($0.Str, 'което', 2) }> }
    token iterations:sym<Bulgarian> { :i 'итерации' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'итерации', 2) }> }
    token join-verb:sym<Bulgarian> { :i 'съедини' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'съедини', 2) }> }
    token language-noun:sym<Bulgarian> { :i 'език' | ([\w]+) <?{ $0.Str ne 'един' and is-bg-fuzzy-match($0.Str, 'език', 2) }> }
    token largest-adjective:sym<Bulgarian> { :i 'най-голям' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'най-голям', 2) }> }
    token last-adjective:sym<Bulgarian> { :i 'последен' | ([\w]+) <?{ $0.Str ne 'последни' and is-bg-fuzzy-match($0.Str, 'последен', 2) }> | 'последни' | ([\w]+) <?{ $0.Str ne 'последен' and is-bg-fuzzy-match($0.Str, 'последни', 2) }> }
    token left-adjective:sym<Bulgarian> { :i 'ляв' | ([\w]+) <?{ $0.Str !(elem) <в във лява ляво леви тях> and is-bg-fuzzy-match($0.Str, 'ляв', 1) }> | 'лява' | ([\w]+) <?{ $0.Str !(elem) <това ляв ляво леви> and is-bg-fuzzy-match($0.Str, 'лява', 2) }> | 'ляво' | ([\w]+) <?{ $0.Str !(elem) <ляв лява леви наляво> and is-bg-fuzzy-match($0.Str, 'ляво', 2) }> | 'леви' | ([\w]+) <?{ $0.Str !(elem) <ляв лява ляво> and is-bg-fuzzy-match($0.Str, 'леви', 2) }> }
    token left-noun:sym<Bulgarian> { :i 'наляво' | ([\w]+) <?{ $0.Str ne 'ляво' and is-bg-fuzzy-match($0.Str, 'наляво', 2) }> }
    token link-noun:sym<Bulgarian> { :i 'връзка' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'връзка', 2) }> }
    token list-noun:sym<Bulgarian> { :i 'списък' | ([\w]+) <?{ $0.Str ne 'нисък' and is-bg-fuzzy-match($0.Str, 'списък', 2) }> }
    token load-verb:sym<Bulgarian> { :i 'зареди' | ([\w]+) <?{ $0.Str ne 'замени' and is-bg-fuzzy-match($0.Str, 'зареди', 2) }> }
    token locate-verb:sym<Bulgarian> { :i 'намери' | ([\w]+) <?{ $0.Str !(elem) <размери замени> and is-bg-fuzzy-match($0.Str, 'намери', 2) }> | 'локализирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'локализирай', 2) }> }
    token low-adjective:sym<Bulgarian> { :i 'долен' | ([\w]+) <?{ $0.Str !(elem) <домейн десен> and is-bg-fuzzy-match($0.Str, 'долен', 2) }> | 'нисък' | ([\w]+) <?{ $0.Str !(elem) <висок списък> and is-bg-fuzzy-match($0.Str, 'нисък', 2) }> }
    token lower-adjective:sym<Bulgarian> { :i 'по-долен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'по-долен', 2) }> | 'долен' | ([\w]+) <?{ $0.Str !(elem) <домейн десен> and is-bg-fuzzy-match($0.Str, 'долен', 2) }> }
    token make-noun:sym<Bulgarian> { :i 'направи' | ([\w]+) <?{ $0.Str !(elem) <прави забрави> and is-bg-fuzzy-match($0.Str, 'направи', 2) }> }
    token making-noun:sym<Bulgarian> { :i 'правене' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'правене', 2) }> }
    token manner:sym<Bulgarian> { :i 'начин' | ([\w]+) <?{ $0.Str ne 'наши' and is-bg-fuzzy-match($0.Str, 'начин', 2) }> | 'маниер' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'маниер', 2) }> }
    token matrices-noun:sym<Bulgarian> { :i 'матрици' | ([\w]+) <?{ $0.Str ne 'матрица' and is-bg-fuzzy-match($0.Str, 'матрици', 2) }> }
    token matrix-noun:sym<Bulgarian> { :i 'матрица' | ([\w]+) <?{ $0.Str ne 'матрици' and is-bg-fuzzy-match($0.Str, 'матрица', 2) }> }
    token matrixes-noun:sym<Bulgarian> { :i 'матрици' | ([\w]+) <?{ $0.Str ne 'матрица' and is-bg-fuzzy-match($0.Str, 'матрици', 2) }> }
    token maximum:sym<Bulgarian> { :i 'макс' | ([\w]+) <?{ $0.Str ne 'как' and is-bg-fuzzy-match($0.Str, 'макс', 2) }> | 'максимум' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'максимум', 2) }> | 'максимален' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'максимален', 2) }> }
    token message-noun:sym<Bulgarian> { :i 'съобщение' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'съобщение', 2) }> }
    token method-adjective:sym<Bulgarian> { :i 'методен' | ([\w]+) <?{ $0.Str !(elem) <методна методно методни метод методи> and is-bg-fuzzy-match($0.Str, 'методен', 2) }> | 'методна' | ([\w]+) <?{ $0.Str !(elem) <методен методно методни метод методи> and is-bg-fuzzy-match($0.Str, 'методна', 2) }> | 'методно' | ([\w]+) <?{ $0.Str !(elem) <методен методна методни метод методи> and is-bg-fuzzy-match($0.Str, 'методно', 2) }> | 'методни' | ([\w]+) <?{ $0.Str !(elem) <методен методна методно метод методи> and is-bg-fuzzy-match($0.Str, 'методни', 2) }> }
    token method-noun:sym<Bulgarian> { :i 'метод' | ([\w]+) <?{ $0.Str !(elem) <методен методна методно методни методи> and is-bg-fuzzy-match($0.Str, 'метод', 2) }> }
    token methods-noun:sym<Bulgarian> { :i 'методи' | ([\w]+) <?{ $0.Str !(elem) <методен методна методно методни метод> and is-bg-fuzzy-match($0.Str, 'методи', 2) }> }
    token minimum:sym<Bulgarian> { :i 'мин' | ([\w]+) <?{ $0.Str !(elem) <и ид мой моя име един низ тип> and is-bg-fuzzy-match($0.Str, 'мин', 1) }> | 'минимум' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'минимум', 2) }> | 'минимален' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'минимален', 2) }> }
    token missing-adjective:sym<Bulgarian> { :i 'липсващи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'липсващи', 2) }> }
    token model:sym<Bulgarian> { :i 'модел' | ([\w]+) <?{ $0.Str ne 'модул' and is-bg-fuzzy-match($0.Str, 'модел', 2) }> }
    token module-noun:sym<Bulgarian> { :i 'модул' | ([\w]+) <?{ $0.Str ne 'модел' and is-bg-fuzzy-match($0.Str, 'модул', 2) }> }
    token my-determiner:sym<Bulgarian> { :i 'мой' | ([\w]+) <?{ $0.Str !(elem) <то ос от код брой мин моя моят по под до кой кои> and is-bg-fuzzy-match($0.Str, 'мой', 1) }> | 'моя' | ([\w]+) <?{ $0.Str !(elem) <то ос от код броя мин мой моят по под до кой кои> and is-bg-fuzzy-match($0.Str, 'моя', 1) }> | 'моят' | ([\w]+) <?{ $0.Str !(elem) <от мой моя> and is-bg-fuzzy-match($0.Str, 'моят', 2) }> }
    token name-noun:sym<Bulgarian> { :i 'име' | ([\w]+) <?{ $0.Str !(elem) <и ид е мин имена не или> and is-bg-fuzzy-match($0.Str, 'име', 1) }> }
    token names-noun:sym<Bulgarian> { :i 'имена' | ([\w]+) <?{ $0.Str ne 'име' and is-bg-fuzzy-match($0.Str, 'имена', 2) }> }
    token nearest-adjective:sym<Bulgarian> { :i 'най-близък' | ([\w]+) <?{ $0.Str ne 'най-близки' and is-bg-fuzzy-match($0.Str, 'най-близък', 2) }> | 'най-близки' | ([\w]+) <?{ $0.Str ne 'най-близък' and is-bg-fuzzy-match($0.Str, 'най-близки', 2) }> }
    token neighbors-noun:sym<Bulgarian> { :i 'съседи' | ([\w]+) <?{ $0.Str !(elem) <събери съседите> and is-bg-fuzzy-match($0.Str, 'съседи', 2) }> | 'съседите' | ([\w]+) <?{ $0.Str ne 'съседи' and is-bg-fuzzy-match($0.Str, 'съседите', 2) }> }
    token no-determiner:sym<Bulgarian> { :i 'без' | ([\w]+) <?{ $0.Str !(elem) <чрез през е не ред низ цел> and is-bg-fuzzy-match($0.Str, 'без', 1) }> }
    token non-prefix:sym<Bulgarian> { :i 'не' }
    token number-noun:sym<Bulgarian> { :i 'число' | ([\w]+) <?{ $0.Str !(elem) <чисти чело> and is-bg-fuzzy-match($0.Str, 'число', 2) }> }
    token object-noun:sym<Bulgarian> { :i 'обект' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обект', 2) }> }
    token obtain-verb:sym<Bulgarian> { :i 'придобий' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'придобий', 2) }> | 'добий' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'добий', 2) }> }
    token of-preposition:sym<Bulgarian> { :i 'за' | 'на' }
    token off-adverb:sym<Bulgarian> { :i 'без' | ([\w]+) <?{ $0.Str !(elem) <чрез през е не ред низ цел> and is-bg-fuzzy-match($0.Str, 'без', 1) }> }
    token on-preposition:sym<Bulgarian> { :i 'на' | 'по' }
    token one-pronoun:sym<Bulgarian> { :i 'едно' | ([\w]+) <?{ $0.Str !(elem) <дъно дело ехо един до> and is-bg-fuzzy-match($0.Str, 'едно', 2) }> | 'първо' | ([\w]+) <?{ $0.Str !(elem) <пълно първи първа> and is-bg-fuzzy-match($0.Str, 'първо', 2) }> | 'нещо' | ([\w]+) <?{ $0.Str !(elem) <дело ехо чело не нещя> and is-bg-fuzzy-match($0.Str, 'нещо', 2) }> }
    token ones-pronoun:sym<Bulgarian> { :i 'първи' | ([\w]+) <?{ $0.Str !(elem) <държи пълни вържи прави търси първа първо> and is-bg-fuzzy-match($0.Str, 'първи', 2) }> | 'нещя' | ([\w]+) <?{ $0.Str !(elem) <не нещо> and is-bg-fuzzy-match($0.Str, 'нещя', 2) }> }
    token or-conjunction:sym<Bulgarian> { :i 'или' | ([\w]+) <?{ $0.Str !(elem) <и оси ид име кои> and is-bg-fuzzy-match($0.Str, 'или', 1) }> }
    token our-determiner:sym<Bulgarian> { :i 'наш' | ([\w]+) <?{ $0.Str !(elem) <са за на как не наши низ> and is-bg-fuzzy-match($0.Str, 'наш', 1) }> | 'наши' | ([\w]+) <?{ $0.Str !(elem) <дати на начин наш нашите> and is-bg-fuzzy-match($0.Str, 'наши', 2) }> | 'нашите' | ([\w]+) <?{ $0.Str ne 'наши' and is-bg-fuzzy-match($0.Str, 'нашите', 2) }> }
    token out-adverb:sym<Bulgarian> { :i 'извън' | ([\w]+) <?{ $0.Str ne 'отвън' and is-bg-fuzzy-match($0.Str, 'извън', 2) }> | 'отвън' | ([\w]+) <?{ $0.Str ne 'извън' and is-bg-fuzzy-match($0.Str, 'отвън', 2) }> }
    token outlier-adjective:sym<Bulgarian> { :i 'извънреден' | ([\w]+) <?{ $0.Str !(elem) <извънредна извънредно извънредни> and is-bg-fuzzy-match($0.Str, 'извънреден', 2) }> | 'извънредна' | ([\w]+) <?{ $0.Str !(elem) <извънреден извънредно извънредни> and is-bg-fuzzy-match($0.Str, 'извънредна', 2) }> | 'извънредно' | ([\w]+) <?{ $0.Str !(elem) <извънреден извънредна извънредни> and is-bg-fuzzy-match($0.Str, 'извънредно', 2) }> | 'извънредни' | ([\w]+) <?{ $0.Str !(elem) <извънреден извънредна извънредно> and is-bg-fuzzy-match($0.Str, 'извънредни', 2) }> }
    token outlier-noun:sym<Bulgarian> { :i  'извънредност' | 'извънредна' 'стойност'  }
    token outliers-noun:sym<Bulgarian> { :i  'извънредности' | 'извънредна' 'стойности'  }
    token over-preposition:sym<Bulgarian> { :i 'върху' | ([\w]+) <?{ $0.Str !(elem) <вържи върхов връх> and is-bg-fuzzy-match($0.Str, 'върху', 2) }> | 'чрез' | ([\w]+) <?{ $0.Str !(elem) <през без ред> and is-bg-fuzzy-match($0.Str, 'чрез', 2) }> }
    token parameter-noun:sym<Bulgarian> { :i 'параметър' | ([\w]+) <?{ $0.Str ne 'параметри' and is-bg-fuzzy-match($0.Str, 'параметър', 2) }> }
    token parameters-noun:sym<Bulgarian> { :i 'параметри' | ([\w]+) <?{ $0.Str ne 'параметър' and is-bg-fuzzy-match($0.Str, 'параметри', 2) }> }
    token part-noun:sym<Bulgarian> { :i 'част' | ([\w]+) <?{ $0.Str ne 'чисти' and is-bg-fuzzy-match($0.Str, 'част', 2) }> }
    token pattern-noun:sym<Bulgarian> { :i 'шаблон' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'шаблон', 2) }> }
    token per-preposition:sym<Bulgarian> { :i 'за' }
    token pipeline-adjective:sym<Bulgarian> { :i 'лентов' | ([\w]+) <?{ $0.Str !(elem) <лентова лентово> and is-bg-fuzzy-match($0.Str, 'лентов', 2) }> | 'лентова' | ([\w]+) <?{ $0.Str !(elem) <лентов лентово> and is-bg-fuzzy-match($0.Str, 'лентова', 2) }> | 'лентово' | ([\w]+) <?{ $0.Str !(elem) <лентов лентова> and is-bg-fuzzy-match($0.Str, 'лентово', 2) }> }
    token pipeline-noun:sym<Bulgarian> { :i  'лента' | 'поточна' 'линия'  }
    token plot-noun:sym<Bulgarian> { :i 'чертеж' | ([\w]+) <?{ $0.Str !(elem) <чертай чертежи> and is-bg-fuzzy-match($0.Str, 'чертеж', 2) }> | 'графика' | ([\w]+) <?{ $0.Str ne 'графики' and is-bg-fuzzy-match($0.Str, 'графика', 2) }> }
    token plots-noun:sym<Bulgarian> { :i 'чертежи' | ([\w]+) <?{ $0.Str ne 'чертеж' and is-bg-fuzzy-match($0.Str, 'чертежи', 2) }> | 'графики' | ([\w]+) <?{ $0.Str ne 'графика' and is-bg-fuzzy-match($0.Str, 'графики', 2) }> }
    token position-noun:sym<Bulgarian> { :i 'позиция' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'позиция', 2) }> }
    token random-adjective:sym<Bulgarian> { :i 'случаен' | ([\w]+) <?{ $0.Str !(elem) <случай случаи> and is-bg-fuzzy-match($0.Str, 'случаен', 2) }> }
    token records:sym<Bulgarian> { :i 'записи' | ([\w]+) <?{ $0.Str ne 'зачисти' and is-bg-fuzzy-match($0.Str, 'записи', 2) }> }
    token reduce-verb:sym<Bulgarian> { :i 'редуцирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'редуцирай', 2) }> }
    token remove-verb:sym<Bulgarian> { :i 'премахни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'премахни', 2) }> | 'изтрий' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'изтрий', 2) }> }
    token replace-verb:sym<Bulgarian> { :i 'замести' | ([\w]+) <?{ $0.Str !(elem) <зачисти замени> and is-bg-fuzzy-match($0.Str, 'замести', 2) }> | 'замени' | ([\w]+) <?{ $0.Str !(elem) <намери зареди замести> and is-bg-fuzzy-match($0.Str, 'замени', 2) }> }
    token represent-directive:sym<Bulgarian> { :i  <represent-verb> | 'чертай' | 'отрази'  }
    token represent-verb:sym<Bulgarian> { :i 'представи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'представи', 2) }> }
    token rest-noun:sym<Bulgarian> { :i 'остатък' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'остатък', 2) }> }
    token result-noun:sym<Bulgarian> { :i 'резултат' | ([\w]+) <?{ $0.Str ne 'резултати' and is-bg-fuzzy-match($0.Str, 'резултат', 2) }> }
    token results:sym<Bulgarian> { :i <results-noun> }
    token results-noun:sym<Bulgarian> { :i 'резултати' | ([\w]+) <?{ $0.Str ne 'резултат' and is-bg-fuzzy-match($0.Str, 'резултати', 2) }> }
    token reverse-adjective:sym<Bulgarian> { :i 'обратен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обратен', 2) }> | 'обърни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обърни', 2) }> }
    token right-adjective:sym<Bulgarian> { :i 'десен' | ([\w]+) <?{ $0.Str !(elem) <долен десни> and is-bg-fuzzy-match($0.Str, 'десен', 2) }> | 'дясна' | ([\w]+) <?{ $0.Str !(elem) <данна дясно десни> and is-bg-fuzzy-match($0.Str, 'дясна', 2) }> | 'дясно' | ([\w]+) <?{ $0.Str !(elem) <дъно дясна десни надясно място> and is-bg-fuzzy-match($0.Str, 'дясно', 2) }> | 'десни' | ([\w]+) <?{ $0.Str !(elem) <данни десен дясна дясно> and is-bg-fuzzy-match($0.Str, 'десни', 2) }> }
    token right-noun:sym<Bulgarian> { :i 'надясно' | ([\w]+) <?{ $0.Str ne 'дясно' and is-bg-fuzzy-match($0.Str, 'надясно', 2) }> }
    token rows:sym<Bulgarian> { :i <rows-noun> }
    token rows-noun:sym<Bulgarian> { :i 'редове' | ([\w]+) <?{ $0.Str ne 'кодове' and is-bg-fuzzy-match($0.Str, 'редове', 2) }> }
    token run-verb:sym<Bulgarian> { :i 'run' | ([\w]+) <?{ $0.Str ne 'runs' and is-bg-fuzzy-match($0.Str, 'run', 1) }> | 'runs' | ([\w]+) <?{ $0.Str ne 'run' and is-bg-fuzzy-match($0.Str, 'runs', 2) }> }
    token running-verb:sym<Bulgarian> { :i 'running' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'running', 2) }> }
    token separate-verb:sym<Bulgarian> { :i 'раздели' | ([\w]+) <?{ $0.Str !(elem) <размери разстели> and is-bg-fuzzy-match($0.Str, 'раздели', 2) }> }
    token series-noun:sym<Bulgarian> { :i 'серия' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'серия', 2) }> | 'ред' | ([\w]+) <?{ $0.Str !(elem) <чрез код през ид е без не под цел> and is-bg-fuzzy-match($0.Str, 'ред', 1) }> | 'редица' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'редица', 2) }> }
    token set-directive:sym<Bulgarian> { :i 'присвои' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'присвои', 2) }> }
    token set-noun:sym<Bulgarian> { :i 'множество' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'множество', 2) }> }
    token setup-noun:sym<Bulgarian> { :i 'нагласа' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нагласа', 2) }> | 'настройване' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'настройване', 2) }> | 'потготовка' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'потготовка', 2) }> | 'потготвяне' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'потготвяне', 2) }> }
    token shape-noun:sym<Bulgarian> { :i 'форма' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'форма', 2) }> }
    token show-verb:sym<Bulgarian> { :i 'покажи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'покажи', 2) }> | 'показвай' | ([\w]+) <?{ $0.Str ne 'ползвай' and is-bg-fuzzy-match($0.Str, 'показвай', 2) }> }
    token simple:sym<Bulgarian> { :i 'прост' | ([\w]+) <?{ $0.Str ne 'просто' and is-bg-fuzzy-match($0.Str, 'прост', 2) }> | 'директен' | ([\w]+) <?{ $0.Str ne 'директно' and is-bg-fuzzy-match($0.Str, 'директен', 2) }> }
    token simply-adverb:sym<Bulgarian> { :i 'просто' | ([\w]+) <?{ $0.Str ne 'прост' and is-bg-fuzzy-match($0.Str, 'просто', 2) }> }
    token simulate:sym<Bulgarian> { :i 'симулирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'симулирай', 2) }> }
    token simulate-directive:sym<Bulgarian> { :i <simulate> }
    token simulation:sym<Bulgarian> { :i 'симулация' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'симулация', 2) }> }
    token single-adjective:sym<Bulgarian> { :i 'единичен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'единичен', 2) }> | 'един' | ([\w]+) <?{ $0.Str !(elem) <език мин едно> and is-bg-fuzzy-match($0.Str, 'един', 2) }> }
    token site-noun:sym<Bulgarian> { :i 'място' | ([\w]+) <?{ $0.Str ne 'дясно' and is-bg-fuzzy-match($0.Str, 'място', 2) }> | 'позиция' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'позиция', 2) }> }
    token smallest:sym<Bulgarian> { :i 'най-малък' | ([\w]+) <?{ $0.Str ne 'най-малки' and is-bg-fuzzy-match($0.Str, 'най-малък', 2) }> | 'най-малки' | ([\w]+) <?{ $0.Str ne 'най-малък' and is-bg-fuzzy-match($0.Str, 'най-малки', 2) }> }
    token smallest-adjective:sym<Bulgarian> { :i 'най-малък' | ([\w]+) <?{ $0.Str ne 'най-малки' and is-bg-fuzzy-match($0.Str, 'най-малък', 2) }> | 'най-малки' | ([\w]+) <?{ $0.Str ne 'най-малък' and is-bg-fuzzy-match($0.Str, 'най-малки', 2) }> }
    token some-determiner:sym<Bulgarian> { :i 'някой' | ([\w]+) <?{ $0.Str !(elem) <някои кой> and is-bg-fuzzy-match($0.Str, 'някой', 2) }> | 'някои' | ([\w]+) <?{ $0.Str !(elem) <някой кои> and is-bg-fuzzy-match($0.Str, 'някои', 2) }> }
    token sparse-adjective:sym<Bulgarian> { :i 'разреден' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разреден', 2) }> }
    token specific-adjective:sym<Bulgarian> { :i 'специфичен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'специфичен', 2) }> }
    token split-verb:sym<Bulgarian> { :i 'раздели' | ([\w]+) <?{ $0.Str !(elem) <размери разстели> and is-bg-fuzzy-match($0.Str, 'раздели', 2) }> }
    token spot-verb:sym<Bulgarian> { :i 'намери' | ([\w]+) <?{ $0.Str !(elem) <размери замени> and is-bg-fuzzy-match($0.Str, 'намери', 2) }> }
    token spread-verb:sym<Bulgarian> { :i 'разстели' | ([\w]+) <?{ $0.Str ne 'раздели' and is-bg-fuzzy-match($0.Str, 'разстели', 2) }> }
    token statistical:sym<Bulgarian> { :i <statistical-adjective> }
    token statistical-adjective:sym<Bulgarian> { :i 'статистически' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'статистически', 2) }> }
    token statistics-noun:sym<Bulgarian> { :i 'статистики' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'статистики', 2) }> }
    token stats-noun:sym<Bulgarian> { :i 'статс' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'статс', 2) }> }
    token step-noun:sym<Bulgarian> { :i 'стъпка' | ([\w]+) <?{ $0.Str ne 'стъпки' and is-bg-fuzzy-match($0.Str, 'стъпка', 2) }> }
    token steps-noun:sym<Bulgarian> { :i 'стъпки' | ([\w]+) <?{ $0.Str ne 'стъпка' and is-bg-fuzzy-match($0.Str, 'стъпки', 2) }> }
    token string-noun:sym<Bulgarian> { :i 'низ' | ([\w]+) <?{ $0.Str !(elem) <и на ид мин без не наш тип> and is-bg-fuzzy-match($0.Str, 'низ', 1) }> }
    token sub-prefix:sym<Bulgarian> { :i 'съб' | ([\w]+) <?{ $0.Str !(elem) <са със във към с път> and is-bg-fuzzy-match($0.Str, 'съб', 1) }> | 'под' | ([\w]+) <?{ $0.Str !(elem) <то ос от код ид мой моя по ред до път кой кои> and is-bg-fuzzy-match($0.Str, 'под', 1) }> }
    token summaries:sym<Bulgarian> { :i <summaries-noun> }
    token summaries-noun:sym<Bulgarian> { :i 'рекапитулации' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'рекапитулации', 2) }> | 'обобщения' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обобщения', 2) }> }
    token summarize-directive:sym<Bulgarian> { :i 'обобщи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обобщи', 2) }> }
    token summary:sym<Bulgarian> { :i <summary-noun> }
    token summary-noun:sym<Bulgarian> { :i 'рекапитулирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'рекапитулирай', 2) }> | 'обобщи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обобщи', 2) }> }
    token system-noun:sym<Bulgarian> { :i 'система' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'система', 2) }> }
    token table-noun:sym<Bulgarian> { :i 'таблица' | ([\w]+) <?{ $0.Str ne 'таблици' and is-bg-fuzzy-match($0.Str, 'таблица', 2) }> }
    token tables-noun:sym<Bulgarian> { :i 'таблици' | ([\w]+) <?{ $0.Str ne 'таблица' and is-bg-fuzzy-match($0.Str, 'таблици', 2) }> }
    token tabular-adjective:sym<Bulgarian> { :i 'табличен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'табличен', 2) }> }
    token take-verb:sym<Bulgarian> { :i 'вземи' | ([\w]+) <?{ $0.Str !(elem) <всеки време> and is-bg-fuzzy-match($0.Str, 'вземи', 2) }> }
    token target-noun:sym<Bulgarian> { :i 'цел' | ([\w]+) <?{ $0.Str !(elem) <дело чело е без не ред> and is-bg-fuzzy-match($0.Str, 'цел', 1) }> }
    token text-adjective:sym<Bulgarian> { :i 'текстов' | ([\w]+) <?{ $0.Str !(elem) <текстова текстово текстови текст> and is-bg-fuzzy-match($0.Str, 'текстов', 2) }> | 'текстова' | ([\w]+) <?{ $0.Str !(elem) <текстов текстово текстови> and is-bg-fuzzy-match($0.Str, 'текстова', 2) }> | 'текстово' | ([\w]+) <?{ $0.Str !(elem) <текстов текстова текстови> and is-bg-fuzzy-match($0.Str, 'текстово', 2) }> | 'текстови' | ([\w]+) <?{ $0.Str !(elem) <текстов текстова текстово> and is-bg-fuzzy-match($0.Str, 'текстови', 2) }> }
    token text-noun:sym<Bulgarian> { :i 'текст' | ([\w]+) <?{ $0.Str !(elem) <текущ текстов> and is-bg-fuzzy-match($0.Str, 'текст', 2) }> }
    token that-pronoun:sym<Bulgarian> { :i 'онези' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'онези', 2) }> | 'онова' | ([\w]+) <?{ $0.Str ne 'това' and is-bg-fuzzy-match($0.Str, 'онова', 2) }> }
    token the-determiner { '' }
    token them-pronoun:sym<Bulgarian> { :i 'тях' | ([\w]+) <?{ $0.Str !(elem) <то ляв тип> and is-bg-fuzzy-match($0.Str, 'тях', 1) }> }
    token this-pronoun:sym<Bulgarian> { :i 'този' | ([\w]+) <?{ $0.Str !(elem) <то оси това кои> and is-bg-fuzzy-match($0.Str, 'този', 2) }> | 'това' | ([\w]+) <?{ $0.Str !(elem) <то датова лява онова този кога> and is-bg-fuzzy-match($0.Str, 'това', 2) }> }
    token time-adjective:sym<Bulgarian> { :i 'времеви' | ([\w]+) <?{ $0.Str !(elem) <времева време времена> and is-bg-fuzzy-match($0.Str, 'времеви', 2) }> | 'времева' | ([\w]+) <?{ $0.Str !(elem) <времеви време времена> and is-bg-fuzzy-match($0.Str, 'времева', 2) }> }
    token time-noun:sym<Bulgarian> { :i 'време' | ([\w]+) <?{ $0.Str !(elem) <вземи времеви времева времена> and is-bg-fuzzy-match($0.Str, 'време', 2) }> }
    token timeline-noun { 'времева линия' }
    token times-noun:sym<Bulgarian> { :i 'времена' | ([\w]+) <?{ $0.Str !(elem) <времеви времева време> and is-bg-fuzzy-match($0.Str, 'времена', 2) }> }
    token to-preposition:sym<Bulgarian> { :i 'до' | 'на' | 'към' | ([\w]+) <?{ $0.Str !(elem) <със код как във съб път кой кои> and is-bg-fuzzy-match($0.Str, 'към', 1) }> }
    token top-adjective:sym<Bulgarian> { :i 'най-горен' | ([\w]+) <?{ $0.Str !(elem) <най-горна най-горно най-горни> and is-bg-fuzzy-match($0.Str, 'най-горен', 2) }> | 'най-горна' | ([\w]+) <?{ $0.Str !(elem) <най-горен най-горно най-горни> and is-bg-fuzzy-match($0.Str, 'най-горна', 2) }> | 'най-горно' | ([\w]+) <?{ $0.Str !(elem) <най-горен най-горна най-горни> and is-bg-fuzzy-match($0.Str, 'най-горно', 2) }> | 'най-горни' | ([\w]+) <?{ $0.Str !(elem) <най-горен най-горна най-горно> and is-bg-fuzzy-match($0.Str, 'най-горни', 2) }> | 'върхов' | ([\w]+) <?{ $0.Str !(elem) <върху върхова върхово върхови> and is-bg-fuzzy-match($0.Str, 'върхов', 2) }> | 'върхова' | ([\w]+) <?{ $0.Str !(elem) <върхов върхово върхови> and is-bg-fuzzy-match($0.Str, 'върхова', 2) }> | 'върхово' | ([\w]+) <?{ $0.Str !(elem) <върхов върхова върхови> and is-bg-fuzzy-match($0.Str, 'върхово', 2) }> | 'върхови' | ([\w]+) <?{ $0.Str !(elem) <върхов върхова върхово> and is-bg-fuzzy-match($0.Str, 'върхови', 2) }> }
    token top-noun:sym<Bulgarian> { :i 'връх' | ([\w]+) <?{ $0.Str !(elem) <във върху> and is-bg-fuzzy-match($0.Str, 'връх', 2) }> }
    token transform-verb:sym<Bulgarian> { :i 'трансформирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'трансформирай', 2) }> }
    token translation-noun:sym<Bulgarian> { :i 'транслация' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'транслация', 2) }> }
    token type-noun:sym<Bulgarian> { :i 'тип' | ([\w]+) <?{ $0.Str !(elem) <и то ид мин низ тях> and is-bg-fuzzy-match($0.Str, 'тип', 1) }> }
    token types-noun:sym<Bulgarian> { :i 'типове' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'типове', 2) }> }
    token up-adverb:sym<Bulgarian> { :i 'горе' | ([\w]+) <?{ $0.Str ne 'нагоре' and is-bg-fuzzy-match($0.Str, 'горе', 2) }> | 'нагоре' | ([\w]+) <?{ $0.Str ne 'горе' and is-bg-fuzzy-match($0.Str, 'нагоре', 2) }> }
    token use-verb:sym<Bulgarian> { :i 'ползвай' | ([\w]+) <?{ $0.Str !(elem) <показвай използвай ползван> and is-bg-fuzzy-match($0.Str, 'ползвай', 2) }> | 'използвай' | ([\w]+) <?{ $0.Str !(elem) <ползвай използван> and is-bg-fuzzy-match($0.Str, 'използвай', 2) }> }
    token used-verb:sym<Bulgarian> { :i 'ползван' | ([\w]+) <?{ $0.Str !(elem) <ползвай използван> and is-bg-fuzzy-match($0.Str, 'ползван', 2) }> | 'използван' | ([\w]+) <?{ $0.Str !(elem) <използвай ползван> and is-bg-fuzzy-match($0.Str, 'използван', 2) }> }
    token using-preposition:sym<Bulgarian> { :i 'чрез' | ([\w]+) <?{ $0.Str !(elem) <през без ред> and is-bg-fuzzy-match($0.Str, 'чрез', 2) }> | 'с' | 'със' | ([\w]+) <?{ $0.Str !(elem) <са ос във съб към с път> and is-bg-fuzzy-match($0.Str, 'със', 1) }> }
    token value-noun:sym<Bulgarian> { :i 'стойност' | ([\w]+) <?{ $0.Str ne 'стойности' and is-bg-fuzzy-match($0.Str, 'стойност', 2) }> }
    token values-noun:sym<Bulgarian> { :i 'стойности' | ([\w]+) <?{ $0.Str ne 'стойност' and is-bg-fuzzy-match($0.Str, 'стойности', 2) }> }
    token variable-noun:sym<Bulgarian> { :i 'променлива' | ([\w]+) <?{ $0.Str ne 'променливи' and is-bg-fuzzy-match($0.Str, 'променлива', 2) }> }
    token variables-noun:sym<Bulgarian> { :i 'променливи' | ([\w]+) <?{ $0.Str ne 'променлива' and is-bg-fuzzy-match($0.Str, 'променливи', 2) }> }
    token versus-preposition { 'срещу' | 'ср.' | 'против' }
    token way-noun:sym<Bulgarian> { :i 'път' | ([\w]+) <?{ $0.Str !(elem) <от със във по съб под към> and is-bg-fuzzy-match($0.Str, 'път', 1) }> | 'начин' | ([\w]+) <?{ $0.Str ne 'наши' and is-bg-fuzzy-match($0.Str, 'начин', 2) }> }
    token weight-noun:sym<Bulgarian> { :i 'тегло' | ([\w]+) <?{ $0.Str !(elem) <дело чело тегла> and is-bg-fuzzy-match($0.Str, 'тегло', 2) }> }
    token weight:sym<Bulgarian> { :i <weight-noun> }
    token weights-noun:sym<Bulgarian> { :i 'тегла' | ([\w]+) <?{ $0.Str ne 'тегло' and is-bg-fuzzy-match($0.Str, 'тегла', 2) }> }
    token weights:sym<Bulgarian> { :i <weights-noun> }
    token what-pronoun:sym<Bulgarian> { :i 'какво' | ([\w]+) <?{ $0.Str !(elem) <като как какви> and is-bg-fuzzy-match($0.Str, 'какво', 2) }> | 'какви' | ([\w]+) <?{ $0.Str !(elem) <как какво> and is-bg-fuzzy-match($0.Str, 'какви', 2) }> }
    token when-pronoun:sym<Bulgarian> { :i 'кога' | ([\w]+) <?{ $0.Str !(elem) <код това кой кои> and is-bg-fuzzy-match($0.Str, 'кога', 2) }> }
    token which-determiner:sym<Bulgarian> { :i 'кой' | ([\w]+) <?{ $0.Str !(elem) <то ос от код брой как мой моя по някой под до към кога кои> and is-bg-fuzzy-match($0.Str, 'кой', 1) }> | 'кои' | ([\w]+) <?{ $0.Str !(elem) <и то оси ос от код как мой моя по или някои под този до към кога кой> and is-bg-fuzzy-match($0.Str, 'кои', 1) }> }
    token with-preposition:sym<Bulgarian> { :i 'чрез' | ([\w]+) <?{ $0.Str !(elem) <през без ред> and is-bg-fuzzy-match($0.Str, 'чрез', 2) }> | 'с' | 'със' | ([\w]+) <?{ $0.Str !(elem) <са ос във съб към с път> and is-bg-fuzzy-match($0.Str, 'със', 1) }> }
    token without-preposition:sym<Bulgarian> { :i 'без' | ([\w]+) <?{ $0.Str !(elem) <чрез през е не ред низ цел> and is-bg-fuzzy-match($0.Str, 'без', 1) }> }
    token word-noun:sym<Bulgarian> { :i 'дума' | ([\w]+) <?{ $0.Str !(elem) <дата думи> and is-bg-fuzzy-match($0.Str, 'дума', 2) }> }
    token words-noun:sym<Bulgarian> { :i 'думи' | ([\w]+) <?{ $0.Str !(elem) <дати дума> and is-bg-fuzzy-match($0.Str, 'думи', 2) }> }

    # Directives and phrases
    rule data-frame:sym<Bulgarian> {  <data-noun>? <table-noun>  }
    rule data-frames:sym<Bulgarian> {  <data-noun>? <tables-noun>  }
    rule time-series-data:sym<Bulgarian> {  <time-adjective> <series-noun> <data-noun>?  }
    rule number-of:sym<Bulgarian> {  [ <number-noun> | <count-verb> | <counts-noun> ] <of-preposition>?  }

}

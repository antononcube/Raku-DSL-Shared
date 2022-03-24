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
    token IDENTIFIER-adjective:sym<Bulgarian> { :i 'IDENTIFIER' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'IDENTIFIER', 2) }> | 'ИДЕНТИФИКАТОРЕН' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'ИДЕНТИФИКАТОРЕН', 2) }> | 'ИДЕНТИФИКАТОРНА' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'ИДЕНТИФИКАТОРНА', 2) }> | 'ИДЕНТИФИКАТОРНИ' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'ИДЕНТИФИКАТОРНИ', 2) }> }
    token IDENTIFIER-noun:sym<Bulgarian> { :i 'IDENTIFIER' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'IDENTIFIER', 2) }> | 'ИДЕНТИФИКАТОР' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'ИДЕНТИФИКАТОР', 2) }> }
    token MODULE-noun:sym<Bulgarian> { :i 'MODULE' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'MODULE', 2) }> | 'МОДУЛ' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'МОДУЛ', 2) }> }
    token TARGET-noun:sym<Bulgarian> { :i 'TARGET' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'TARGET', 2) }> | 'ЦЕЛ' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'ЦЕЛ', 1) }> }
    token USER-noun:sym<Bulgarian> { :i 'USER' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'USER', 2) }> | 'ПОТРЕБИТЕЛ' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'ПОТРЕБИТЕЛ', 2) }> }
    token a-determiner:sym<Bulgarian> { :i  ''  }
    token add-verb:sym<Bulgarian> { :i 'събери' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'събери', 2) }> | 'добави' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'добави', 2) }> }
    token adhere-verb:sym<Bulgarian> { :i 'държи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'държи', 2) }> | 'според' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'според', 2) }> }
    token adjacency-noun:sym<Bulgarian> { :i 'аджудант' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'аджудант', 2) }> }
    token adjacent-adjective:sym<Bulgarian> { :i 'аджудант' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'аджудант', 2) }> | 'аджудантен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'аджудантен', 2) }> }
    token algorithm-noun:sym<Bulgarian> { :i 'алогоритъм' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'алогоритъм', 2) }> }
    token algorithms-noun:sym<Bulgarian> { :i 'алгоритми' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'алгоритми', 2) }> }
    token all-determiner:sym<Bulgarian> { :i 'всяко' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'всяко', 2) }> | 'всички' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'всички', 2) }> }
    token and-conjunction:sym<Bulgarian> { :i 'и' }
    token annex-verb:sym<Bulgarian> { :i 'присъедини' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'присъедини', 2) }> }
    token append-verb:sym<Bulgarian> { :i 'добави' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'добави', 2) }> }
    token apply-verb:sym<Bulgarian> { :i 'приложи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'приложи', 2) }> }
    token are-verb:sym<Bulgarian> { :i 'са' }
    token array-noun:sym<Bulgarian> { :i 'масив' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'масив', 2) }> }
    token arrays-noun:sym<Bulgarian> { :i 'масиви' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'масиви', 2) }> }
    token as-preposition:sym<Bulgarian> { :i 'като' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'като', 2) }> }
    token assign-verb:sym<Bulgarian> { :i 'присвои' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'присвои', 2) }> }
    token at-preposition:sym<Bulgarian> { :i 'то' }
    token automatic:sym<Bulgarian> { :i 'автоматичен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'автоматичен', 2) }> | 'автоматична' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'автоматична', 2) }> | 'автоматично' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'автоматично', 2) }> | 'автоматични' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'автоматични', 2) }> }
    token away-adverb:sym<Bulgarian> { :i 'away' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'away', 2) }> }
    token axes-noun:sym<Bulgarian> { :i 'оси' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'оси', 1) }> }
    token axis-noun:sym<Bulgarian> { :i 'ос' }
    token be-verb:sym<Bulgarian> { :i 'be' }
    token both-determiner:sym<Bulgarian> { :i 'двете' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'двете', 2) }> | 'едновременно' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'едновременно', 2) }> | 'заедно' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'заедно', 2) }> }
    token bottom-noun:sym<Bulgarian> { :i  'дъно' | 'най-ниско'  }
    token broaden-verb:sym<Bulgarian> { :i 'разшири' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разшири', 2) }> }
    token by-preposition:sym<Bulgarian> { :i 'от' | 'със' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'със', 1) }> | 'чрез' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'чрез', 2) }> }
    token calculation:sym<Bulgarian> { :i 'изчисление' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'изчисление', 2) }> }
    token case-noun:sym<Bulgarian> { :i 'случай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'случай', 2) }> }
    token cases-noun:sym<Bulgarian> { :i 'случаи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'случаи', 2) }> }
    token chart-noun:sym<Bulgarian> { :i 'диаграма' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'диаграма', 2) }> | 'карта' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'карта', 2) }> }
    token classify-verb:sym<Bulgarian> { :i 'класифицирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'класифицирай', 2) }> }
    token clear-verb:sym<Bulgarian> { :i 'чисти' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'чисти', 2) }> | 'зачисти' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'зачисти', 2) }> | 'изчисти' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'изчисти', 2) }> }
    token cluster:sym<Bulgarian> { :i  <cluster-noun>  }
    token cluster-noun:sym<Bulgarian> { :i 'клъстер' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'клъстер', 2) }> | 'група' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'група', 2) }> }
    token clusters-noun:sym<Bulgarian> { :i 'клъстери' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'клъстери', 2) }> | 'групи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'групи', 2) }> }
    token code-noun:sym<Bulgarian> { :i 'код' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'код', 1) }> }
    token codes-noun:sym<Bulgarian> { :i 'кодове' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'кодове', 2) }> }
    token column-noun:sym<Bulgarian> { :i 'колона' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'колона', 2) }> }
    token columns:sym<Bulgarian> { :i  <columns-noun>  }
    token columns-noun:sym<Bulgarian> { :i 'колони' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'колони', 2) }> }
    token complete-adjective:sym<Bulgarian> { :i 'пълно' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'пълно', 2) }> | 'пълни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'пълни', 2) }> }
    token compute-directive:sym<Bulgarian> { :i 'изчисли' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'изчисли', 2) }> | 'намери' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'намери', 2) }> | 'калкулирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'калкулирай', 2) }> | 'пресметни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'пресметни', 2) }> }
    token config-noun:sym<Bulgarian> { :i 'конфигурирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'конфигурирай', 2) }> }
    token configuration-noun:sym<Bulgarian> { :i 'конфигурация' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'конфигурация', 2) }> }
    token connect-verb:sym<Bulgarian> { :i 'вържи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'вържи', 2) }> | 'свържи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'свържи', 2) }> }
    token consider-verb:sym<Bulgarian> { :i 'разгледай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разгледай', 2) }> }
    token context-noun:sym<Bulgarian> { :i 'контекст' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'контекст', 2) }> }
    token contingency-noun:sym<Bulgarian> { :i  'контингентен' | 'кръстосано' 'табулиране'  }
    token convert-verb:sym<Bulgarian> { :i 'превърни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'превърни', 2) }> }
    token count-verb:sym<Bulgarian> { :i 'преброй' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'преброй', 2) }> | 'брой' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'брой', 2) }> | 'бройка' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'бройка', 2) }> | 'размер' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'размер', 2) }> }
    token counts-noun:sym<Bulgarian> { :i 'броя' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'броя', 2) }> | 'броеве' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'броеве', 2) }> | 'бройки' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'бройки', 2) }> | 'размери' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'размери', 2) }> }
    token create:sym<Bulgarian> { :i 'създай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'създай', 2) }> | 'направи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'направи', 2) }> }
    token create-directive:sym<Bulgarian> { :i  <create-verb> | 'направи'  }
    token create-verb:sym<Bulgarian> { :i 'създай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'създай', 2) }> }
    token creation-noun:sym<Bulgarian> { :i 'създание' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'създание', 2) }> | 'дело' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'дело', 2) }> }
    token current-adjective:sym<Bulgarian> { :i 'текущ' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'текущ', 2) }> | 'текуща' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'текуща', 2) }> | 'текущо' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'текущо', 2) }> }
    token data-adjective:sym<Bulgarian> { :i 'даннов' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'даннов', 2) }> | 'даннова' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'даннова', 2) }> | 'даннови' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'даннови', 2) }> }
    token data-noun:sym<Bulgarian> { :i 'данни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'данни', 2) }> | 'даннов' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'даннов', 2) }> | 'даннова' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'даннова', 2) }> }
    token dataset:sym<Bulgarian> { :i  <dataset-noun>  }
    token dataset-noun:sym<Bulgarian> { :i  'дейтасет' | 'дейта' \h+ 'сет' | <array-noun> 'от' <data-noun> | <data-adjective> \h+ <array-noun> }
    token datasets-noun:sym<Bulgarian> { :i  'дейтасети' | <arrays-noun> \h+ 'от' \h+ <data-noun> | <data-adjective> \h+ <arrays-noun>  }
    token default:sym<Bulgarian> { :i  <default-noun>  }
    token default-noun:sym<Bulgarian> { :i  'по' 'подразбиране' | 'подразбиращ' \h+ 'се'  }
    token datum-noun:sym<Bulgarian> { :i 'данна' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'данна', 2) }> }
    token delete-directive:sym<Bulgarian> { :i 'изтрий' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'изтрий', 2) }> | 'изхвърли' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'изхвърли', 2) }> | 'премахни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'премахни', 2) }> }
    token detect-verb:sym<Bulgarian> { :i 'установи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'установи', 2) }> | 'намери' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'намери', 2) }> | 'детектирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'детектирай', 2) }> }
    token diagram:sym<Bulgarian> { :i  <diagram-synonyms>  }
    token diagram-noun:sym<Bulgarian> { :i 'диаграма' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'диаграма', 2) }> }
    token diagram-synonyms:sym<Bulgarian> { :i  <diagram-noun> | <plot-noun> | <plots-noun> | <graph-noun> | <chart-noun>  }
    token difference:sym<Bulgarian> { :i 'разлика' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разлика', 2) }> }
    token dimension-noun:sym<Bulgarian> { :i 'размерност' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'размерност', 2) }> }
    token dimensions-noun:sym<Bulgarian> { :i 'размерности' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'размерности', 2) }> }
    token directly-adverb:sym<Bulgarian> { :i 'директно' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'директно', 2) }> }
    token display-directive:sym<Bulgarian> { :i  <display-verb> | 'покажи' | 'ехо'  }
    token display-verb:sym<Bulgarian> { :i 'покажи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'покажи', 2) }> }
    token distance-noun:sym<Bulgarian> { :i 'разстояние' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разстояние', 2) }> }
    token do-verb:sym<Bulgarian> { :i 'прави' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'прави', 2) }> }
    token document-noun:sym<Bulgarian> { :i 'документ' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'документ', 2) }> }
    token documents-noun:sym<Bulgarian> { :i 'документи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'документи', 2) }> }
    token domain-noun:sym<Bulgarian> { :i 'домейн' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'домейн', 2) }> | 'област' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'област', 2) }> }
    token drop-verb:sym<Bulgarian> { :i 'изхвърли' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'изхвърли', 2) }> | 'забрави' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'забрави', 2) }> | 'захвърли' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'захвърли', 2) }> }
    token during-preposition:sym<Bulgarian> { :i 'докато' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'докато', 2) }> | 'през' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'през', 2) }> }
    token each-determiner:sym<Bulgarian> { :i 'всеки' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'всеки', 2) }> | 'всяко' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'всяко', 2) }> | 'всяка' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'всяка', 2) }> }
    token echo-verb:sym<Bulgarian> { :i 'ехо' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'ехо', 1) }> }
    token element:sym<Bulgarian> { :i  <element-noun>  }
    token element-noun:sym<Bulgarian> { :i 'елемент' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'елемент', 2) }> }
    token elements:sym<Bulgarian> { :i  <elements-noun>  }
    token elements-noun:sym<Bulgarian> { :i 'елементи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'елементи', 2) }> }
    token empty-noun:sym<Bulgarian> { :i 'празно' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'празно', 2) }> | 'празнота' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'празнота', 2) }> }
    token empty-verb:sym<Bulgarian> { :i  'празни' | <empty-noun>  }
    token every-determiner:sym<Bulgarian> { :i 'всеки' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'всеки', 2) }> | 'всяко' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'всяко', 2) }> | 'всяка' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'всяка', 2) }> }
    token extend-verb:sym<Bulgarian> { :i 'разшири' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разшири', 2) }> }
    token extract-directive:sym<Bulgarian> { :i 'измъкни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'измъкни', 2) }> | 'извади' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'извади', 2) }> | 'добий' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'добий', 2) }> }
    token filter:sym<Bulgarian> { :i  <filter-verb>  }
    token filter-noun:sym<Bulgarian> { :i  <filter-verb>  }
    token filter-verb:sym<Bulgarian> { :i 'филтър' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'филтър', 2) }> | 'филтрирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'филтрирай', 2) }> }
    token first-adjective:sym<Bulgarian> { :i 'първи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'първи', 2) }> | 'първа' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'първа', 2) }> | 'първо' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'първо', 2) }> }
    token for-preposition:sym<Bulgarian> { :i 'за' | 'със' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'със', 1) }> | 'на' }
    token frame-noun:sym<Bulgarian> { :i 'рамка' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'рамка', 2) }> }
    token frames-noun:sym<Bulgarian> { :i 'рамки' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'рамки', 2) }> }
    token from-preposition:sym<Bulgarian> { :i 'от' }
    token function:sym<Bulgarian> { :i  <function-noun>  }
    token functions:sym<Bulgarian> { :i  <functions-noun>  }
    token function-noun:sym<Bulgarian> { :i 'функция' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'функция', 2) }> }
    token functions-noun:sym<Bulgarian> { :i 'функции' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'функции', 2) }> }
    token generate-directive:sym<Bulgarian> { :i  <generate-verb> | <create-verb> | 'направи'  }
    token generate-verb:sym<Bulgarian> { :i 'генерирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'генерирай', 2) }> }
    token get-verb:sym<Bulgarian> { :i  'вземи' | 'добий' | <take-verb>  }
    token graph-noun:sym<Bulgarian> { :i 'граф' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'граф', 2) }> }
    token head-adjective:sym<Bulgarian> { :i  <head-noun>  }
    token head-noun:sym<Bulgarian> { :i 'чело' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'чело', 2) }> | 'начело' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'начело', 2) }> }
    token high-adjective:sym<Bulgarian> { :i 'висок' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'висок', 2) }> }
    token higher-adjective:sym<Bulgarian> { :i  'по-висок'  }
    token histogram:sym<Bulgarian> { :i 'хистограма' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'хистограма', 2) }> }
    token histograms:sym<Bulgarian> { :i 'хистограми' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'хистограми', 2) }> }
    token how-adverb:sym<Bulgarian> { :i 'как' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'как', 1) }> }
    token id-noun:sym<Bulgarian> { :i 'ид' }
    token identifier-adjective:sym<Bulgarian> { :i  <IDENTIFIER-adjective>  }
    token identifier-noun:sym<Bulgarian> { :i  <IDENTIFIER-noun>  }
    token in-preposition:sym<Bulgarian> { :i 'в' | 'във' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'във', 1) }> }
    token include-verb:sym<Bulgarian> { :i 'включи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'включи', 2) }> | 'включвай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'включвай', 2) }> }
    token ingest-verb:sym<Bulgarian> { :i 'прочети' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'прочети', 2) }> }
    token into-preposition:sym<Bulgarian> { :i 'в' | 'във' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'във', 1) }> }
    token is-verb:sym<Bulgarian> { :i 'е' }
    token it-pronoun:sym<Bulgarian> { :i 'това' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'това', 2) }> | 'което' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'което', 2) }> }
    token iterations:sym<Bulgarian> { :i 'итерации' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'итерации', 2) }> }
    token join-verb:sym<Bulgarian> { :i 'съедини' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'съедини', 2) }> }
    token language-noun:sym<Bulgarian> { :i 'език' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'език', 2) }> }
    token largest-adjective:sym<Bulgarian> { :i  'най-голям'  }
    token last-adjective:sym<Bulgarian> { :i 'последен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'последен', 2) }> | 'последни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'последни', 2) }> }
    token link-noun:sym<Bulgarian> { :i 'връзка' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'връзка', 2) }> }
    token list-noun:sym<Bulgarian> { :i 'списък' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'списък', 2) }> }
    token load-verb:sym<Bulgarian> { :i 'зареди' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'зареди', 2) }> }
    token locate-verb:sym<Bulgarian> { :i 'намери' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'намери', 2) }> | 'локализирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'локализирай', 2) }> }
    token low-adjective:sym<Bulgarian> { :i 'долен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'долен', 2) }> | 'нисък' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нисък', 2) }> }
    token lower-adjective:sym<Bulgarian> { :i  'по-долен' | 'долен'  }
    token make-noun:sym<Bulgarian> { :i 'направи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'направи', 2) }> }
    token making-noun:sym<Bulgarian> { :i 'правене' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'правене', 2) }> }
    token manner:sym<Bulgarian> { :i 'начин' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'начин', 2) }> | 'маниер' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'маниер', 2) }> }
    token matrices-noun:sym<Bulgarian> { :i 'матрици' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'матрици', 2) }> }
    token matrix-noun:sym<Bulgarian> { :i 'матрица' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'матрица', 2) }> }
    token matrixes-noun:sym<Bulgarian> { :i 'матрици' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'матрици', 2) }> }
    token maximum:sym<Bulgarian> { :i 'макс' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'макс', 2) }> | 'максимум' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'максимум', 2) }> | 'максимален' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'максимален', 2) }> }
    token message-noun:sym<Bulgarian> { :i 'съобщение' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'съобщение', 2) }> }
    token method-noun:sym<Bulgarian> { :i 'метод' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'метод', 2) }> }
    token minimum:sym<Bulgarian> { :i 'мин' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'мин', 1) }> | 'минимум' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'минимум', 2) }> | 'минимален' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'минимален', 2) }> }
    token missing-adjective:sym<Bulgarian> { :i 'липсващи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'липсващи', 2) }> }
    token model:sym<Bulgarian> { :i 'модел' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'модел', 2) }> }
    token module-noun:sym<Bulgarian> { :i 'модул' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'модул', 2) }> }
    token my-determiner:sym<Bulgarian> { :i 'мой' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'мой', 1) }> | 'моя' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'моя', 1) }> | 'моят' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'моят', 2) }> }
    token name-noun:sym<Bulgarian> { :i 'име' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'име', 1) }> }
    token names-noun:sym<Bulgarian> { :i 'имена' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'имена', 2) }> }
    token nearest-adjective:sym<Bulgarian> { :i  'най-близък' | 'най-близки'  }
    token neighbors-noun:sym<Bulgarian> { :i 'съседи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'съседи', 2) }> | 'съседите' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'съседите', 2) }> }
    token no-determiner:sym<Bulgarian> { :i 'без' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'без', 1) }> }
    token non-prefix:sym<Bulgarian> { :i 'не' }
    token number-noun:sym<Bulgarian> { :i 'число' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'число', 2) }> }
    token object-noun:sym<Bulgarian> { :i 'обект' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обект', 2) }> }
    token of-preposition:sym<Bulgarian> { :i 'за' }
    token off-adverb:sym<Bulgarian> { :i 'без' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'без', 1) }> }
    token on-preposition:sym<Bulgarian> { :i 'на' | 'по' }
    token one-pronoun:sym<Bulgarian> { :i 'едно' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'едно', 2) }> | 'първо' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'първо', 2) }> | 'нещо' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нещо', 2) }> }
    token ones-pronoun:sym<Bulgarian> { :i 'първи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'първи', 2) }> | 'нещя' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нещя', 2) }> }
    token or-conjunction:sym<Bulgarian> { :i 'или' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'или', 1) }> }
    token our-determiner:sym<Bulgarian> { :i 'наш' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'наш', 1) }> | 'наши' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'наши', 2) }> | 'нашите' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нашите', 2) }> }
    token out-adverb:sym<Bulgarian> { :i 'извън' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'извън', 2) }> | 'отвън' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'отвън', 2) }> }
    token over-preposition:sym<Bulgarian> { :i 'върху' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'върху', 2) }> | 'чрез' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'чрез', 2) }> }
    token parameter-noun:sym<Bulgarian> { :i 'параметър' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'параметър', 2) }> }
    token parameters-noun:sym<Bulgarian> { :i 'параметри' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'параметри', 2) }> }
    token part-noun:sym<Bulgarian> { :i 'част' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'част', 2) }> }
    token pattern-noun:sym<Bulgarian> { :i 'шаблон' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'шаблон', 2) }> }
    token per-preposition:sym<Bulgarian> { :i 'за' }
    token pipeline-adjective:sym<Bulgarian> { :i 'лентов' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'лентов', 2) }> | 'лентова' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'лентова', 2) }> | 'лентово' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'лентово', 2) }> }
    token pipeline-noun:sym<Bulgarian> { :i  'лента' | 'поточна' 'линия'  }
    token plot-noun:sym<Bulgarian> { :i 'чертеж' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'чертеж', 2) }> | 'графика' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'графика', 2) }> }
    token plots-noun:sym<Bulgarian> { :i 'чертежи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'чертежи', 2) }> | 'графики' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'графики', 2) }> }
    token position-noun:sym<Bulgarian> { :i 'позиция' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'позиция', 2) }> }
    token random-adjective:sym<Bulgarian> { :i 'случаен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'случаен', 2) }> }
    token records:sym<Bulgarian> { :i 'записи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'записи', 2) }> }
    token reduce-verb:sym<Bulgarian> { :i 'редуцирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'редуцирай', 2) }> }
    token remove-verb:sym<Bulgarian> { :i 'премахни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'премахни', 2) }> | 'изтрий' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'изтрий', 2) }> }
    token replace-verb:sym<Bulgarian> { :i 'замести' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'замести', 2) }> | 'замени' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'замени', 2) }> }
    token represent-directive:sym<Bulgarian> { :i  <represent-verb> | 'чертай' | 'отрази'  }
    token represent-verb:sym<Bulgarian> { :i 'представи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'представи', 2) }> }
    token rest-noun:sym<Bulgarian> { :i 'остатък' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'остатък', 2) }> }
    token result-noun:sym<Bulgarian> { :i 'резултат' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'резултат', 2) }> }
    token results:sym<Bulgarian> { :i  <results-noun>  }
    token results-noun:sym<Bulgarian> { :i 'резултати' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'резултати', 2) }> }
    token reverse-adjective:sym<Bulgarian> { :i 'обратен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обратен', 2) }> | 'обърни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обърни', 2) }> }
    token rows:sym<Bulgarian> { :i  <rows-noun>  }
    token rows-noun:sym<Bulgarian> { :i 'редове' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'редове', 2) }> }
    token run-verb:sym<Bulgarian> { :i 'run' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'run', 1) }> | 'runs' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'runs', 2) }> }
    token running-verb:sym<Bulgarian> { :i 'running' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'running', 2) }> }
    token separate-verb:sym<Bulgarian> { :i 'раздели' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'раздели', 2) }> }
    token series-noun:sym<Bulgarian> { :i 'серия' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'серия', 2) }> | 'ред' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'ред', 1) }> | 'редица' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'редица', 2) }> }
    token set-directive:sym<Bulgarian> { :i 'присвои' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'присвои', 2) }> }
    token set-noun:sym<Bulgarian> { :i 'множество' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'множество', 2) }> }
    token setup-noun:sym<Bulgarian> { :i 'нагласа' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нагласа', 2) }> | 'настройване' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'настройване', 2) }> | 'потготовка' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'потготовка', 2) }> | 'потготвяне' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'потготвяне', 2) }> }
    token shape-noun:sym<Bulgarian> { :i 'форма' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'форма', 2) }> }
    token show-verb:sym<Bulgarian> { :i 'покажи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'покажи', 2) }> | 'показвай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'показвай', 2) }> }
    token simple:sym<Bulgarian> { :i 'прост' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'прост', 2) }> | 'директен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'директен', 2) }> }
    token simply-adverb:sym<Bulgarian> { :i 'просто' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'просто', 2) }> }
    token simulate:sym<Bulgarian> { :i 'симулирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'симулирай', 2) }> }
    token simulate-directive:sym<Bulgarian> { :i  <simulate>  }
    token simulation:sym<Bulgarian> { :i 'симулация' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'симулация', 2) }> }
    token single-adjective:sym<Bulgarian> { :i 'единичен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'единичен', 2) }> | 'един' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'един', 2) }> }
    token site-noun:sym<Bulgarian> { :i 'място' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'място', 2) }> | 'позиция' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'позиция', 2) }> }
    token smallest:sym<Bulgarian> { :i  'най-малък' | 'най-малки'  }
    token smallest-adjective:sym<Bulgarian> { :i  'най-малък' | 'най-малки'   }
    token some-determiner:sym<Bulgarian> { :i 'някой' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'някой', 2) }> | 'някои' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'някои', 2) }> }
    token sparse-adjective:sym<Bulgarian> { :i 'разреден' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разреден', 2) }> }
    token specific-adjective:sym<Bulgarian> { :i 'специфичен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'специфичен', 2) }> }
    token split-verb:sym<Bulgarian> { :i 'раздели' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'раздели', 2) }> }
    token spot-verb:sym<Bulgarian> { :i 'намери' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'намери', 2) }> }
    token spread-verb:sym<Bulgarian> { :i 'разстели' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разстели', 2) }> }
    token statistical:sym<Bulgarian> { :i  <statistical-adjective>  }
    token statistical-adjective:sym<Bulgarian> { :i 'статистически' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'статистически', 2) }> }
    token statistics-noun:sym<Bulgarian> { :i 'статистики' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'статистики', 2) }> }
    token stats-noun:sym<Bulgarian> { :i 'статс' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'статс', 2) }> }
    token step-noun:sym<Bulgarian> { :i 'стъпка' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'стъпка', 2) }> }
    token steps-noun:sym<Bulgarian> { :i 'стъпки' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'стъпки', 2) }> }
    token string-noun:sym<Bulgarian> { :i 'низ' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'низ', 1) }> }
    token sub-prefix:sym<Bulgarian> { :i 'съб' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'съб', 1) }> | 'под' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'под', 1) }> }
    token summaries:sym<Bulgarian> { :i  <summaries-noun>  }
    token summaries-noun:sym<Bulgarian> { :i 'рекапитулации' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'рекапитулации', 2) }> | 'обобщения' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обобщения', 2) }> }
    token summarize-directive:sym<Bulgarian> { :i 'обобщи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обобщи', 2) }> }
    token summary:sym<Bulgarian> { :i  <summary-noun>  }
    token summary-noun:sym<Bulgarian> { :i 'рекапитулирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'рекапитулирай', 2) }> | 'обобщи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обобщи', 2) }> }
    token system-noun:sym<Bulgarian> { :i 'система' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'система', 2) }> }
    token table-noun:sym<Bulgarian> { :i 'таблица' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'таблица', 2) }> }
    token tables-noun:sym<Bulgarian> { :i 'таблици' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'таблици', 2) }> }
    token tabular-adjective:sym<Bulgarian> { :i 'табличен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'табличен', 2) }> }
    token take-verb:sym<Bulgarian> { :i 'вземи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'вземи', 2) }> }
    token target-noun:sym<Bulgarian> { :i 'цел' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'цел', 1) }> }
    token text-noun:sym<Bulgarian> { :i 'текст' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'текст', 2) }> }
    token that-pronoun:sym<Bulgarian> { :i 'онези' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'онези', 2) }> | 'онова' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'онова', 2) }> }
    token the-determiner:sym<Bulgarian> { :i  ''  }
    token them-pronoun:sym<Bulgarian> { :i 'тях' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'тях', 1) }> }
    token this-pronoun:sym<Bulgarian> { :i 'този' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'този', 2) }> | 'това' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'това', 2) }> }
    token time-adjective:sym<Bulgarian> { :i 'времеви' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'времеви', 2) }> | 'времева' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'времева', 2) }> }
    token time-noun:sym<Bulgarian> { :i 'време' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'време', 2) }> }
    token timeline-noun:sym<Bulgarian> { :i  'времева линия'  }
    token times-noun:sym<Bulgarian> { :i 'времена' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'времена', 2) }> }
    token to-preposition:sym<Bulgarian> { :i 'до' | 'на' | 'към' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'към', 1) }> }
    token top-noun:sym<Bulgarian> { :i 'връх' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'връх', 2) }> }
    token transform-verb:sym<Bulgarian> { :i 'трансформирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'трансформирай', 2) }> }
    token translation-noun:sym<Bulgarian> { :i 'транслация' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'транслация', 2) }> }
    token type-noun:sym<Bulgarian> { :i 'тип' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'тип', 1) }> }
    token types-noun:sym<Bulgarian> { :i 'типове' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'типове', 2) }> }
    token up-adverb:sym<Bulgarian> { :i 'горе' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'горе', 2) }> | 'нагоре' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нагоре', 2) }> }
    token use-verb:sym<Bulgarian> { :i 'ползвай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'ползвай', 2) }> | 'използвай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'използвай', 2) }> }
    token used-verb:sym<Bulgarian> { :i 'ползван' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'ползван', 2) }> | 'използван' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'използван', 2) }> }
    token using-preposition:sym<Bulgarian> { :i 'чрез' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'чрез', 2) }> | 'с' | 'със' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'със', 1) }> }
    token value-noun:sym<Bulgarian> { :i 'стойност' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'стойност', 2) }> }
    token values-noun:sym<Bulgarian> { :i 'стойности' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'стойности', 2) }> }
    token variable-noun:sym<Bulgarian> { :i 'променлива' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'променлива', 2) }> }
    token variables-noun:sym<Bulgarian> { :i 'променливи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'променливи', 2) }> }
    token versus-preposition:sym<Bulgarian> { :i  'срещу' | 'ср.' | 'против'  }
    token way-noun:sym<Bulgarian> { :i 'път' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'път', 1) }> | 'начин' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'начин', 2) }> }
    token weight-noun:sym<Bulgarian> { :i 'тегло' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'тегло', 2) }> }
    token weight:sym<Bulgarian> { :i  <weight-noun>  }
    token weights-noun:sym<Bulgarian> { :i 'тегла' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'тегла', 2) }> }
    token weights:sym<Bulgarian> { :i  <weights-noun>  }
    token what-pronoun:sym<Bulgarian> { :i 'какво' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'какво', 2) }> | 'какви' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'какви', 2) }> }
    token when-pronoun:sym<Bulgarian> { :i 'кога' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'кога', 2) }> }
    token which-determiner:sym<Bulgarian> { :i 'кой' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'кой', 1) }> | 'кои' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'кои', 1) }> }
    token with-preposition:sym<Bulgarian> { :i 'чрез' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'чрез', 2) }> | 'с' | 'със' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'със', 1) }> }
    token without-preposition:sym<Bulgarian> { :i 'без' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'без', 1) }> }
    token word-noun:sym<Bulgarian> { :i 'дума' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'дума', 2) }> }
    token words-noun:sym<Bulgarian> { :i 'думи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'думи', 2) }> }

    # Directives and phrases
    rule data-frame:sym<Bulgarian> {  <data-noun>? <table-noun>  }
    rule data-frames:sym<Bulgarian> {  <data-noun>? <tables-noun>  }
    rule time-series-data:sym<Bulgarian> {  <time-adjective> <series-noun> <data-noun>?  }
    rule number-of:sym<Bulgarian> {  [ <number-noun> | <count-verb> | <counts-noun> ] <of-preposition>?  }

}

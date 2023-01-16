# ============================================================
# This role class is generated from the file
#   DSL::Shared::Roles::Portuguese::CommonSpeechParts-template
# using the function AddFuzzyMatch CLI from
#   Grammar::TokenProcessing
# ============================================================

use v6.d;

use DSL::Shared::Utilities::FuzzyMatching;

role DSL::Shared::Roles::Portuguese::CommonSpeechParts {
    # Single words
    token ID-noun:sym<Portuguese> { :i 'id' }
    token IDENTIFIER-adjective:sym<Portuguese> { :i 'identificador' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'identificador', 2) }> | 'id' }
    token IDENTIFIER-noun:sym<Portuguese> { :i 'identificador' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'identificador', 2) }> }
    token MODULE-noun:sym<Portuguese> { :i 'módulo' | ([\w]+) <?{ $0.Str ne 'modelo' and is-fuzzy-match($0.Str, 'módulo', 2) }> | 'módulo' | ([\w]+) <?{ $0.Str ne 'modelo' and is-fuzzy-match($0.Str, 'módulo', 2) }> }
    token TARGET-noun:sym<Portuguese> { :i 'meta' | ([\w]+) <?{ $0.Str !(elem) <mapa peça data testa meu> and is-fuzzy-match($0.Str, 'meta', 2) }> | 'propósito' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'propósito', 2) }> }
    token USER-noun:sym<Portuguese> { :i 'usuário' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'usuário', 2) }> | 'usuário' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'usuário', 2) }> }
    token a-determiner:sym<Portuguese> { :i 'um' }
    token add-verb:sym<Portuguese> { :i 'adicione' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'adicione', 2) }> }
    token adhere-verb:sym<Portuguese> { :i  'aderir' | 'guarda' | 'de' \h* 'acordo' \h* 'com'  }
    token adjacency-noun:sym<Portuguese> { :i 'ajudante' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'ajudante', 2) }> }
    token adjacent-adjective:sym<Portuguese> { :i 'ajudante' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'ajudante', 2) }> | 'ajudante' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'ajudante', 2) }> }
    token algorithm-noun:sym<Portuguese> { :i 'algoritmo' | ([\w]+) <?{ $0.Str ne 'algoritmos' and is-fuzzy-match($0.Str, 'algoritmo', 2) }> }
    token algorithms-noun:sym<Portuguese> { :i 'algoritmos' | ([\w]+) <?{ $0.Str ne 'algoritmo' and is-fuzzy-match($0.Str, 'algoritmos', 2) }> }
    token all-determiner:sym<Portuguese> { :i 'cada' | ([\w]+) <?{ $0.Str !(elem) <caso canal mapa data para carga> and is-fuzzy-match($0.Str, 'cada', 2) }> | 'todos' | ([\w]+) <?{ $0.Str !(elem) <dados métodos topo tipos> and is-fuzzy-match($0.Str, 'todos', 2) }> }
    token and-conjunction:sym<Portuguese> { :i 'e' }
    token annex-verb:sym<Portuguese> { :i 'junte-se' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'junte-se', 2) }> | 'junte' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'junte', 2) }> }
    token append-verb:sym<Portuguese> { :i 'acrescentar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'acrescentar', 2) }> }
    token apply-verb:sym<Portuguese> { :i 'anexar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'anexar', 2) }> }
    token are-verb:sym<Portuguese> { :i 'são' | ([\w]+) <?{ $0.Str !(elem) <ser do no isto sem não o> and is-fuzzy-match($0.Str, 'são', 1) }> }
    token array-noun:sym<Portuguese> { :i 'matriz' | ([\w]+) <?{ $0.Str ne 'matrizes' and is-fuzzy-match($0.Str, 'matriz', 2) }> }
    token arrays-noun:sym<Portuguese> { :i 'arrays' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'arrays', 2) }> }
    token as-preposition:sym<Portuguese> { :i 'como' | ([\w]+) <?{ $0.Str !(elem) <com caso nome topo> and is-fuzzy-match($0.Str, 'como', 2) }> }
    token assign-verb:sym<Portuguese> { :i 'atribuir' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'atribuir', 2) }> }
    token at-preposition:sym<Portuguese> { :i 'então' | ([\w]+) <?{ $0.Str ne 'não' and is-fuzzy-match($0.Str, 'então', 2) }> }
    token automatic:sym<Portuguese> { :i 'automático' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'automático', 2) }> | 'automaticamente' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'automaticamente', 2) }> }
    token away-adverb:sym<Portuguese> { :i 'fora' | ([\w]+) <?{ $0.Str !(elem) <para por hora> and is-fuzzy-match($0.Str, 'fora', 2) }> }
    token axes-noun:sym<Portuguese> { :i 'eixos' | ([\w]+) <?{ $0.Str !(elem) <eixo tipos> and is-fuzzy-match($0.Str, 'eixos', 2) }> }
    token axis-noun:sym<Portuguese> { :i 'eixo' | ([\w]+) <?{ $0.Str !(elem) <eixos echo baixo tipo> and is-fuzzy-match($0.Str, 'eixo', 2) }> }
    token be-verb:sym<Portuguese> { :i 'ser' | ([\w]+) <?{ $0.Str !(elem) <e são em de vir meu sem por> and is-fuzzy-match($0.Str, 'ser', 1) }> }
    token both-determiner:sym<Portuguese> { :i  'e'? \h* 'ambos' | 'simultaneamente' | 'juntos'  }
    token bottom-noun:sym<Portuguese> { :i 'fundo' | ([\w]+) <?{ $0.Str ne 'quando' and is-fuzzy-match($0.Str, 'fundo', 2) }> | 'inferior' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'inferior', 2) }> }
    token broaden-verb:sym<Portuguese> { :i 'expandir' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'expandir', 2) }> }
    token by-preposition:sym<Portuguese> { :i 'com' | ([\w]+) <?{ $0.Str !(elem) <um como do em no nome sem por ou o> and is-fuzzy-match($0.Str, 'com', 1) }> | 'via' | ([\w]+) <?{ $0.Str !(elem) <id vir a vs.> and is-fuzzy-match($0.Str, 'via', 1) }> }
    token calculation:sym<Portuguese> { :i 'cálculo' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'cálculo', 2) }> }
    token case-noun:sym<Portuguese> { :i 'caso' | ([\w]+) <?{ $0.Str !(elem) <cada como casos claro passo peso> and is-fuzzy-match($0.Str, 'caso', 2) }> }
    token cases-noun:sym<Portuguese> { :i 'casos' | ([\w]+) <?{ $0.Str !(elem) <caso dados passo passos pesos> and is-fuzzy-match($0.Str, 'casos', 2) }> }
    token channel-adjective:sym<Portuguese> { :i 'canal' | ([\w]+) <?{ $0.Str !(elem) <cada casual> and is-fuzzy-match($0.Str, 'canal', 2) }> }
    token channel-noun:sym<Portuguese> { :i 'canal' | ([\w]+) <?{ $0.Str !(elem) <cada casual> and is-fuzzy-match($0.Str, 'canal', 2) }> }
    token chart-noun:sym<Portuguese> { :i 'desenho' | ([\w]+) <?{ $0.Str ne 'desenhos' and is-fuzzy-match($0.Str, 'desenho', 2) }> | 'gráfico' | ([\w]+) <?{ $0.Str ne 'gráficos' and is-fuzzy-match($0.Str, 'gráfico', 2) }> | 'mapa' | ([\w]+) <?{ $0.Str !(elem) <meta cada data para max etapa> and is-fuzzy-match($0.Str, 'mapa', 2) }> }
    token chart-verb:sym<Portuguese> { :i 'sorteio' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'sorteio', 2) }> }
    token classify-verb:sym<Portuguese> { :i 'classificar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'classificar', 2) }> }
    token clear-verb:sym<Portuguese> { :i 'limpo' | ([\w]+) <?{ $0.Str !(elem) <limpar tipo> and is-fuzzy-match($0.Str, 'limpo', 2) }> | 'claro' | ([\w]+) <?{ $0.Str ne 'caso' and is-fuzzy-match($0.Str, 'claro', 2) }> | 'limpar' | ([\w]+) <?{ $0.Str !(elem) <limpo limiar> and is-fuzzy-match($0.Str, 'limpar', 2) }> }
    token cluster:sym<Portuguese> { :i <cluster-noun> }
    token cluster-noun:sym<Portuguese> { :i 'cluster' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'cluster', 2) }> | 'grupo' | ([\w]+) <?{ $0.Str ne 'grupos' and is-fuzzy-match($0.Str, 'grupo', 2) }> }
    token clusters-noun:sym<Portuguese> { :i 'aglomerados' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'aglomerados', 2) }> | 'grupos' | ([\w]+) <?{ $0.Str ne 'grupo' and is-fuzzy-match($0.Str, 'grupos', 2) }> }
    token code-noun:sym<Portuguese> { :i 'código' | ([\w]+) <?{ $0.Str ne 'códigos' and is-fuzzy-match($0.Str, 'código', 2) }> }
    token codes-noun:sym<Portuguese> { :i 'códigos' | ([\w]+) <?{ $0.Str ne 'código' and is-fuzzy-match($0.Str, 'códigos', 2) }> }
    token column-noun:sym<Portuguese> { :i 'coluna' | ([\w]+) <?{ $0.Str ne 'colunas' and is-fuzzy-match($0.Str, 'coluna', 2) }> }
    token columns:sym<Portuguese> { :i <columns-noun> }
    token columns-noun:sym<Portuguese> { :i 'colunas' | ([\w]+) <?{ $0.Str ne 'coluna' and is-fuzzy-match($0.Str, 'colunas', 2) }> }
    token complete-adjective:sym<Portuguese> { :i 'completo' | ([\w]+) <?{ $0.Str ne 'composto' and is-fuzzy-match($0.Str, 'completo', 2) }> | 'completo' | ([\w]+) <?{ $0.Str ne 'composto' and is-fuzzy-match($0.Str, 'completo', 2) }> }
    token compute-directive:sym<Portuguese> { :i 'calcular' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'calcular', 2) }> | 'encontrar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'encontrar', 2) }> }
    token config-noun:sym<Portuguese> { :i 'configurar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'configurar', 2) }> }
    token configuration-adjective:sym<Portuguese> { :i 'configuração' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'configuração', 2) }> }
    token configuration-noun:sym<Portuguese> { :i 'configuração' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'configuração', 2) }> }
    token connect-verb:sym<Portuguese> { :i 'bind' | ([\w]+) <?{ $0.Str ne 'id' and is-fuzzy-match($0.Str, 'bind', 2) }> | 'contacto' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'contacto', 2) }> }
    token consider-verb:sym<Portuguese> { :i 'considere' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'considere', 2) }> }
    token context-noun:sym<Portuguese> { :i 'antecedentes' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'antecedentes', 2) }> }
    token contingency-noun:sym<Portuguese> { :i  'contingente' | 'referência' \h+ 'cruzada'  }
    token convert-verb:sym<Portuguese> { :i 'converter' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'converter', 2) }> }
    token conveyor-adjective:sym<Portuguese> { :i 'transportador' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'transportador', 2) }> }
    token conveyor-noun:sym<Portuguese> { :i 'transportador' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'transportador', 2) }> }
    token count-verb:sym<Portuguese> { :i 'conde' | ([\w]+) <?{ $0.Str ne 'corre' and is-fuzzy-match($0.Str, 'conde', 2) }> | 'edição' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'edição', 2) }> | 'peça' | ([\w]+) <?{ $0.Str !(elem) <meta para peso> and is-fuzzy-match($0.Str, 'peça', 2) }> | 'tamanho' | ([\w]+) <?{ $0.Str ne 'caminho' and is-fuzzy-match($0.Str, 'tamanho', 2) }> }
    token counts-noun:sym<Portuguese> { :i  'número' \h+ 'de' | 'edições' | 'peças' | 'tamanhos'  }
    token create:sym<Portuguese> { :i 'criar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'criar', 2) }> | 'do' }
    token create-directive:sym<Portuguese> { :i  <create-verb> | 'do'  }
    token create-verb:sym<Portuguese> { :i 'criar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'criar', 2) }> }
    token creation-noun:sym<Portuguese> { :i 'criatura' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'criatura', 2) }> | 'caso' | ([\w]+) <?{ $0.Str !(elem) <cada como casos claro passo peso> and is-fuzzy-match($0.Str, 'caso', 2) }> }
    token current-adjective:sym<Portuguese> { :i 'actual' | ([\w]+) <?{ $0.Str ne 'casual' and is-fuzzy-match($0.Str, 'actual', 2) }> }
    token data-adjective:sym<Portuguese> { :i 'dados' | ([\w]+) <?{ $0.Str !(elem) <todos casos datas> and is-fuzzy-match($0.Str, 'dados', 2) }> | 'dannova' | ([\w]+) <?{ $0.Str ne 'dannovo' and is-fuzzy-match($0.Str, 'dannova', 2) }> | 'dannovo' | ([\w]+) <?{ $0.Str ne 'dannova' and is-fuzzy-match($0.Str, 'dannovo', 2) }> }
    token data-noun:sym<Portuguese> { :i 'dados' | ([\w]+) <?{ $0.Str !(elem) <todos casos datas> and is-fuzzy-match($0.Str, 'dados', 2) }> | 'dannova' | ([\w]+) <?{ $0.Str ne 'dannovo' and is-fuzzy-match($0.Str, 'dannova', 2) }> }
    token dataset:sym<Portuguese> { :i <dataset-noun> }
    token dataset-noun { 'conjunto' \h+ 'de' \h+ 'dados' | 'ficha de dados' \h+ 'conjunto' | <array-noun> \h+ 'a' \h+ 'partir' \h+ 'de' \h+ <data-noun> | <data-adjective> \h+ <array-noun>}
    token datasets-noun { 'conjuntos' \h+ 'de' \h+ 'dados' | <arrays-noun> \h+ 'a partir de' \h+ <data-noun> | <data-adjective> \h+ <arrays-noun> }
    token date-adjective:sym<Portuguese> { :i 'datas' | ([\w]+) <?{ $0.Str !(elem) <dados data fitas> and is-fuzzy-match($0.Str, 'datas', 2) }> | 'data' | ([\w]+) <?{ $0.Str !(elem) <meta cada mapa datas para falta> and is-fuzzy-match($0.Str, 'data', 2) }> }
    token date-noun:sym<Portuguese> { :i 'data' | ([\w]+) <?{ $0.Str !(elem) <meta cada mapa datas para falta> and is-fuzzy-match($0.Str, 'data', 2) }> }
    token dates-noun:sym<Portuguese> { :i 'datas' | ([\w]+) <?{ $0.Str !(elem) <dados data fitas> and is-fuzzy-match($0.Str, 'datas', 2) }> }
    token datum-noun:sym<Portuguese> { :i 'dados' | ([\w]+) <?{ $0.Str !(elem) <todos casos datas> and is-fuzzy-match($0.Str, 'dados', 2) }> }
    token default:sym<Portuguese> { :i <default-noun> }
    token default-noun:sym<Portuguese> { :i  'por' 'predefinição' | 'implicado' \h+ 'obter'  }
    token delete-directive:sym<Portuguese> { :i 'eliminar' | ([\w]+) <?{ $0.Str ne 'limiar' and is-fuzzy-match($0.Str, 'eliminar', 2) }> | 'descarte' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'descarte', 2) }> | 'remover' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'remover', 2) }> }
    token detect-verb:sym<Portuguese> { :i 'estabelecer' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'estabelecer', 2) }> | 'encontrar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'encontrar', 2) }> | 'detectar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'detectar', 2) }> }
    token diagram:sym<Portuguese> { :i <diagram-synonyms> }
    token diagram-noun:sym<Portuguese> { :i 'gráfico' | ([\w]+) <?{ $0.Str ne 'gráficos' and is-fuzzy-match($0.Str, 'gráfico', 2) }> }
    token diagram-synonyms:sym<Portuguese> { :i 
        <diagram-noun> |
        <plot-noun> |
        <plots-noun> |
        <graph-noun> |
        <chart-noun> }
    token dictionary-noun:sym<Portuguese> { :i 'dicionário' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'dicionário', 2) }> }
    token difference:sym<Portuguese> { :i 'diferença' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'diferença', 2) }> }
    token dimension-noun:sym<Portuguese> { :i 'tamanho' | ([\w]+) <?{ $0.Str ne 'caminho' and is-fuzzy-match($0.Str, 'tamanho', 2) }> }
    token dimensions-noun:sym<Portuguese> { :i 'dimensões' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'dimensões', 2) }> }
    token directly-adverb:sym<Portuguese> { :i 'directamente' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'directamente', 2) }> }
    token display-directive:sym<Portuguese> { :i  <display-verb> | 'mostrar' | 'echo'  }
    token display-verb:sym<Portuguese> { :i 'mostrar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'mostrar', 2) }> }
    token distance-noun:sym<Portuguese> { :i 'off' | ([\w]+) <?{ $0.Str !(elem) <ou o> and is-fuzzy-match($0.Str, 'off', 1) }> }
    token do-verb:sym<Portuguese> { :i 'faz' | ([\w]+) <?{ $0.Str !(elem) <max a> and is-fuzzy-match($0.Str, 'faz', 1) }> }
    token document-noun:sym<Portuguese> { :i 'documento' | ([\w]+) <?{ $0.Str ne 'documentos' and is-fuzzy-match($0.Str, 'documento', 2) }> }
    token documents-noun:sym<Portuguese> { :i 'documentos' | ([\w]+) <?{ $0.Str ne 'documento' and is-fuzzy-match($0.Str, 'documentos', 2) }> }
    token domain-noun:sym<Portuguese> { :i 'domínio' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'domínio', 2) }> | 'área' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'área', 2) }> }
    token drop-verb:sym<Portuguese> { :i 'descarte' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'descarte', 2) }> | 'esqueça' | ([\w]+) <?{ $0.Str ne 'esquerda' and is-fuzzy-match($0.Str, 'esqueça', 2) }> | 'descarte' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'descarte', 2) }> }
    token during-preposition:sym<Portuguese> { :i 'enquanto' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'enquanto', 2) }> | 'via' | ([\w]+) <?{ $0.Str !(elem) <id vir a vs.> and is-fuzzy-match($0.Str, 'via', 1) }> }
    token each-determiner:sym<Portuguese> { :i 'cada' | ([\w]+) <?{ $0.Str !(elem) <caso canal mapa data para carga> and is-fuzzy-match($0.Str, 'cada', 2) }> }
    token echo-verb:sym<Portuguese> { :i 'echo' | ([\w]+) <?{ $0.Str ne 'eixo' and is-fuzzy-match($0.Str, 'echo', 2) }> }
    token element:sym<Portuguese> { :i <element-noun> }
    token element-noun:sym<Portuguese> { :i 'elemento' | ([\w]+) <?{ $0.Str ne 'elementos' and is-fuzzy-match($0.Str, 'elemento', 2) }> }
    token elements:sym<Portuguese> { :i <elements-noun> }
    token elements-noun:sym<Portuguese> { :i 'elementos' | ([\w]+) <?{ $0.Str ne 'elemento' and is-fuzzy-match($0.Str, 'elementos', 2) }> }
    token empty-noun:sym<Portuguese> { :i 'branco' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'branco', 2) }> | 'vacuidade' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'vacuidade', 2) }> }
    token empty-verb:sym<Portuguese> { :i  'vazio' | <empty-noun>  }
    token every-determiner:sym<Portuguese> { :i  'a' \h+ 'cada'  }
    token extend-verb:sym<Portuguese> { :i 'expandir' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'expandir', 2) }> }
    token extract-directive:sym<Portuguese> { :i 'recuperado' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'recuperado', 2) }> | 'minha' | ([\w]+) <?{ $0.Str ne 'linha' and is-fuzzy-match($0.Str, 'minha', 2) }> }
    token filter:sym<Portuguese> { :i <filter-verb> }
    token filter-noun:sym<Portuguese> { :i <filter-verb> }
    token filter-verb:sym<Portuguese> { :i 'filtro' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'filtro', 2) }> }
    token find-verb:sym<Portuguese> { :i 'pesquisa' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'pesquisa', 2) }> | 'encontrar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'encontrar', 2) }> }
    token first-adjective:sym<Portuguese> { :i 'primeiro' | ([\w]+) <?{ $0.Str ne 'primeiros' and is-fuzzy-match($0.Str, 'primeiro', 2) }> | 'primeiros' | ([\w]+) <?{ $0.Str ne 'primeiro' and is-fuzzy-match($0.Str, 'primeiros', 2) }> }
    token for-preposition:sym<Portuguese> { :i 'para' | ([\w]+) <?{ $0.Str !(elem) <cada fora mapa peça data carga por parte hora> and is-fuzzy-match($0.Str, 'para', 2) }> | 'com' | ([\w]+) <?{ $0.Str !(elem) <um como do em no nome sem por ou o> and is-fuzzy-match($0.Str, 'com', 1) }> | 'em' }
    token frame-noun:sym<Portuguese> { :i 'moldura' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'moldura', 2) }> }
    token frames-noun:sym<Portuguese> { :i 'moldura' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'moldura', 2) }> }
    token from-preposition:sym<Portuguese> { :i 'de' }
    token function:sym<Portuguese> { :i <function-noun> }
    token function-noun:sym<Portuguese> { :i 'característica' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'característica', 2) }> }
    token functions:sym<Portuguese> { :i <functions-noun> }
    token functions-noun:sym<Portuguese> { :i 'funções' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'funções', 2) }> }
    token generate-directive:sym<Portuguese> { :i  <generate-verb> | <create-verb> | 'do'  }
    token generate-verb:sym<Portuguese> { :i 'generai' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'generai', 2) }> }
    token get-verb:sym<Portuguese> { :i 'obter' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'obter', 2) }> }
    token graph-noun:sym<Portuguese> { :i 'contar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'contar', 2) }> }
    token head-adjective:sym<Portuguese> { :i <head-noun> }
    token head-noun:sym<Portuguese> { :i 'testa' | ([\w]+) <?{ $0.Str !(elem) <meta lista texto este> and is-fuzzy-match($0.Str, 'testa', 2) }> | 'dirigido' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'dirigido', 2) }> }
    token high-adjective:sym<Portuguese> { :i 'alto' | ([\w]+) <?{ $0.Str !(elem) <isto falta> and is-fuzzy-match($0.Str, 'alto', 2) }> }
    token higher-adjective:sym<Portuguese> { :i  'mais' \h+ 'alta'  }
    token histogram:sym<Portuguese> { :i 'histograma' | ([\w]+) <?{ $0.Str ne 'histogramas' and is-fuzzy-match($0.Str, 'histograma', 2) }> }
    token histograms:sym<Portuguese> { :i 'histogramas' | ([\w]+) <?{ $0.Str ne 'histograma' and is-fuzzy-match($0.Str, 'histogramas', 2) }> }
    token how-adverb:sym<Portuguese> { :i 'como' | ([\w]+) <?{ $0.Str !(elem) <com caso nome topo> and is-fuzzy-match($0.Str, 'como', 2) }> }
    token id-noun:sym<Portuguese> { :i 'vir' | ([\w]+) <?{ $0.Str !(elem) <id ser via por vs.> and is-fuzzy-match($0.Str, 'vir', 1) }> }
    token identifier-adjective:sym<Portuguese> { :i <IDENTIFIER-adjective> }
    token identifier-noun:sym<Portuguese> { :i <IDENTIFIER-noun> }
    token in-preposition:sym<Portuguese> { :i 'em' | 'no' }
    token include-verb:sym<Portuguese> { :i 'incluir' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'incluir', 2) }> }
    token ingest-verb:sym<Portuguese> { :i  'leia' \h+ 'mais'  }
    token interpreter-noun:sym<Portuguese> { :i 'intérprete' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'intérprete', 2) }> | 'tradutora' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'tradutora', 2) }> }
    token interpreting-adjective:sym<Portuguese> { :i 'intérprete' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'intérprete', 2) }> | 'interpretando' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'interpretando', 2) }> }
    token into-preposition:sym<Portuguese> { :i 'em' }
    token is-verb:sym<Portuguese> { :i 'é' }
    token it-pronoun:sym<Portuguese> { :i 'isto' | ([\w]+) <?{ $0.Str !(elem) <são alto lista este> and is-fuzzy-match($0.Str, 'isto', 2) }> | 'que' | ([\w]+) <?{ $0.Str !(elem) <um e de meu ou quem> and is-fuzzy-match($0.Str, 'que', 1) }> }
    token iterations:sym<Portuguese> { :i 'iterações' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'iterações', 2) }> }
    token join-verb:sym<Portuguese> { :i 'composto' | ([\w]+) <?{ $0.Str ne 'completo' and is-fuzzy-match($0.Str, 'composto', 2) }> }
    token join-noun:sym<Portuguese> { :i 'ligação' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'ligação', 2) }> | 'composto' | ([\w]+) <?{ $0.Str ne 'completo' and is-fuzzy-match($0.Str, 'composto', 2) }> }
    token language-noun:sym<Portuguese> { :i 'língua' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'língua', 2) }> }
    token largest-adjective:sym<Portuguese> { :i 'maior' | ([\w]+) <?{ $0.Str !(elem) <valor menor> and is-fuzzy-match($0.Str, 'maior', 2) }> }
    token last-adjective:sym<Portuguese> { :i  'último' | 'últimos' | 'mais' \h+ 'recente' | 'passado' | 'passada'  }
    token left-adjective:sym<Portuguese> { :i 'esquerda' | ([\w]+) <?{ $0.Str ne 'esqueça' and is-fuzzy-match($0.Str, 'esquerda', 2) }> }
    token left-noun:sym<Portuguese> { :i 'esquerda' | ([\w]+) <?{ $0.Str ne 'esqueça' and is-fuzzy-match($0.Str, 'esquerda', 2) }> }
    token link-noun:sym<Portuguese> { :i 'ligação' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'ligação', 2) }> }
    token list-noun:sym<Portuguese> { :i 'lista' | ([\w]+) <?{ $0.Str !(elem) <testa isto linha> and is-fuzzy-match($0.Str, 'lista', 2) }> }
    token load-verb:sym<Portuguese> { :i 'carga' | ([\w]+) <?{ $0.Str !(elem) <cada para cerca> and is-fuzzy-match($0.Str, 'carga', 2) }> | 'carregar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'carregar', 2) }> }
    token locate-verb:sym<Portuguese> { :i 'encontrar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'encontrar', 2) }> | 'localizar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'localizar', 2) }> }
    token low-adjective:sym<Portuguese> { :i 'fundo' | ([\w]+) <?{ $0.Str ne 'quando' and is-fuzzy-match($0.Str, 'fundo', 2) }> | 'baixo' | ([\w]+) <?{ $0.Str ne 'eixo' and is-fuzzy-match($0.Str, 'baixo', 2) }> }
    token lower-adjective:sym<Portuguese> { :i  'fundo' | 'mais' \h+ 'baixa'  }
    token make-noun:sym<Portuguese> { :i 'do' }
    token making-noun:sym<Portuguese> { :i 'fazendo' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'fazendo', 2) }> }
    token manner:sym<Portuguese> { :i 'caminho' | ([\w]+) <?{ $0.Str ne 'tamanho' and is-fuzzy-match($0.Str, 'caminho', 2) }> | 'maneira' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'maneira', 2) }> }
    token matrices-noun:sym<Portuguese> { :i 'matrizes' | ([\w]+) <?{ $0.Str ne 'matriz' and is-fuzzy-match($0.Str, 'matrizes', 2) }> }
    token matrix-noun:sym<Portuguese> { :i 'matriz' | ([\w]+) <?{ $0.Str ne 'matrizes' and is-fuzzy-match($0.Str, 'matriz', 2) }> }
    token matrixes-noun:sym<Portuguese> { :i 'matrizes' | ([\w]+) <?{ $0.Str ne 'matriz' and is-fuzzy-match($0.Str, 'matrizes', 2) }> }
    token maximum:sym<Portuguese> { :i 'max' | ([\w]+) <?{ $0.Str !(elem) <mapa faz meu a> and is-fuzzy-match($0.Str, 'max', 1) }> | 'máximo' | ([\w]+) <?{ $0.Str ne 'mínimo' and is-fuzzy-match($0.Str, 'máximo', 2) }> }
    token message-noun:sym<Portuguese> { :i 'mensagem' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'mensagem', 2) }> }
    token method-adjective:sym<Portuguese> { :i 'método' | ([\w]+) <?{ $0.Str ne 'métodos' and is-fuzzy-match($0.Str, 'método', 2) }> | 'metodicamente' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'metodicamente', 2) }> | 'metódico' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'metódico', 2) }> }
    token method-noun:sym<Portuguese> { :i 'método' | ([\w]+) <?{ $0.Str ne 'métodos' and is-fuzzy-match($0.Str, 'método', 2) }> }
    token methods-noun:sym<Portuguese> { :i 'métodos' | ([\w]+) <?{ $0.Str !(elem) <todos método> and is-fuzzy-match($0.Str, 'métodos', 2) }> }
    token minimum:sym<Portuguese> { :i 'minha' | ([\w]+) <?{ $0.Str ne 'linha' and is-fuzzy-match($0.Str, 'minha', 2) }> | 'mínimo' | ([\w]+) <?{ $0.Str ne 'máximo' and is-fuzzy-match($0.Str, 'mínimo', 2) }> }
    token missing-adjective:sym<Portuguese> { :i 'falta' | ([\w]+) <?{ $0.Str !(elem) <data alto> and is-fuzzy-match($0.Str, 'falta', 2) }> }
    token model-noun:sym<Portuguese> { :i 'modelo' | ([\w]+) <?{ $0.Str ne 'módulo' and is-fuzzy-match($0.Str, 'modelo', 2) }> }
    token module-noun:sym<Portuguese> { :i 'módulo' | ([\w]+) <?{ $0.Str ne 'modelo' and is-fuzzy-match($0.Str, 'módulo', 2) }> }
    token my-determiner:sym<Portuguese> { :i 'meu' | ([\w]+) <?{ $0.Str !(elem) <meta e ser em de que max sem ou> and is-fuzzy-match($0.Str, 'meu', 1) }> }
    token name-noun:sym<Portuguese> { :i 'nome' | ([\w]+) <?{ $0.Str !(elem) <como com no nomes> and is-fuzzy-match($0.Str, 'nome', 2) }> }
    token names-noun:sym<Portuguese> { :i 'nomes' | ([\w]+) <?{ $0.Str ne 'nome' and is-fuzzy-match($0.Str, 'nomes', 2) }> }
    token nearest-adjective:sym<Portuguese> { :i  'mais' \h+ 'próximo'  }
    token neighbors-noun:sym<Portuguese> { :i 'vizinhos' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'vizinhos', 2) }> }
    token no-determiner:sym<Portuguese> { :i 'sem' | ([\w]+) <?{ $0.Str !(elem) <um e são ser com em de meu quem> and is-fuzzy-match($0.Str, 'sem', 1) }> }
    token non-prefix:sym<Portuguese> { :i 'não' | ([\w]+) <?{ $0.Str !(elem) <são então do no o> and is-fuzzy-match($0.Str, 'não', 1) }> }
    token number-noun:sym<Portuguese> { :i 'número' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'número', 2) }> }
    token object-noun:sym<Portuguese> { :i 'sítio' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'sítio', 2) }> }
    token obtain-verb:sym<Portuguese> { :i 'recuperado' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'recuperado', 2) }> | 'minha' | ([\w]+) <?{ $0.Str ne 'linha' and is-fuzzy-match($0.Str, 'minha', 2) }> }
    token of-preposition:sym<Portuguese> { :i 'para' | ([\w]+) <?{ $0.Str !(elem) <cada fora mapa peça data carga por parte hora> and is-fuzzy-match($0.Str, 'para', 2) }> | 'em' | 'de' }
    token off-adverb:sym<Portuguese> { :i 'sem' | ([\w]+) <?{ $0.Str !(elem) <um e são ser com em de meu quem> and is-fuzzy-match($0.Str, 'sem', 1) }> }
    token on-preposition:sym<Portuguese> { :i 'em' | 'por' | ([\w]+) <?{ $0.Str !(elem) <fora ser com do para vir no ou o hora> and is-fuzzy-match($0.Str, 'por', 1) }> }
    token one-pronoun:sym<Portuguese> { :i 'um' | 'primeiro' | ([\w]+) <?{ $0.Str ne 'primeiros' and is-fuzzy-match($0.Str, 'primeiro', 2) }> | 'coisa' | ([\w]+) <?{ $0.Str ne 'coisas' and is-fuzzy-match($0.Str, 'coisa', 2) }> }
    token ones-pronoun:sym<Portuguese> { :i 'primeiro' | ([\w]+) <?{ $0.Str ne 'primeiros' and is-fuzzy-match($0.Str, 'primeiro', 2) }> | 'coisas' | ([\w]+) <?{ $0.Str ne 'coisa' and is-fuzzy-match($0.Str, 'coisas', 2) }> }
    token or-conjunction:sym<Portuguese> { :i 'ou' }
    token our-determiner:sym<Portuguese> { :i 'nosso' | ([\w]+) <?{ $0.Str ne 'passo' and is-fuzzy-match($0.Str, 'nosso', 2) }> }
    token out-adverb:sym<Portuguese> { :i 'fora' | ([\w]+) <?{ $0.Str !(elem) <para por hora> and is-fuzzy-match($0.Str, 'fora', 2) }> }
    token outlier-adjective:sym<Portuguese> { :i 'extraordinário' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'extraordinário', 2) }> }
    token outlier-noun:sym<Portuguese> { :i 'emergência' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'emergência', 2) }> | 'extraordinário' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'extraordinário', 2) }> 'valor' | ([\w]+) <?{ $0.Str !(elem) <maior valores> and is-fuzzy-match($0.Str, 'valor', 2) }> }
    token outliers-noun:sym<Portuguese> { :i  'extraordinário' | 'extraordinário' \h+ 'valores'  }
    token over-preposition:sym<Portuguese> { :i 'via' | ([\w]+) <?{ $0.Str !(elem) <id vir a vs.> and is-fuzzy-match($0.Str, 'via', 1) }> | 'por' | ([\w]+) <?{ $0.Str !(elem) <fora ser com do para vir no ou o hora> and is-fuzzy-match($0.Str, 'por', 1) }> }
    token parameter-noun:sym<Portuguese> { :i 'parâmetro' | ([\w]+) <?{ $0.Str ne 'parâmetros' and is-fuzzy-match($0.Str, 'parâmetro', 2) }> }
    token parameters-noun:sym<Portuguese> { :i 'parâmetros' | ([\w]+) <?{ $0.Str ne 'parâmetro' and is-fuzzy-match($0.Str, 'parâmetros', 2) }> }
    token part-noun:sym<Portuguese> { :i 'parte' | ([\w]+) <?{ $0.Str ne 'para' and is-fuzzy-match($0.Str, 'parte', 2) }> }
    token pattern-noun:sym<Portuguese> { :i 'template' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'template', 2) }> }
    token per-preposition:sym<Portuguese> { :i 'para' | ([\w]+) <?{ $0.Str !(elem) <cada fora mapa peça data carga por parte hora> and is-fuzzy-match($0.Str, 'para', 2) }> }
    token pipeline-adjective:sym<Portuguese> { :i <tape-adjective> | <conveyor-adjective> | <channel-adjective> }
    token pipeline-noun:sym<Portuguese> { :i  <tape-noun> | <conveyor-noun> | <channel-noun> | 'streaming' \h+ 'linha'  }
    token plot-noun:sym<Portuguese> { :i 'desenho' | ([\w]+) <?{ $0.Str ne 'desenhos' and is-fuzzy-match($0.Str, 'desenho', 2) }> | 'gráfico' | ([\w]+) <?{ $0.Str ne 'gráficos' and is-fuzzy-match($0.Str, 'gráfico', 2) }> }
    token plots-noun:sym<Portuguese> { :i 'desenhos' | ([\w]+) <?{ $0.Str ne 'desenho' and is-fuzzy-match($0.Str, 'desenhos', 2) }> | 'gráficos' | ([\w]+) <?{ $0.Str ne 'gráfico' and is-fuzzy-match($0.Str, 'gráficos', 2) }> }
    token position-noun:sym<Portuguese> { :i 'posição' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'posição', 2) }> }
    token pull-noun:sym<Portuguese> { :i 'recuperado' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'recuperado', 2) }> | 'puxar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'puxar', 2) }> }
    token pull-verb:sym<Portuguese> { :i 'recuperado' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'recuperado', 2) }> | 'puxar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'puxar', 2) }> }
    token random-adjective:sym<Portuguese> { :i 'casual' | ([\w]+) <?{ $0.Str !(elem) <canal actual> and is-fuzzy-match($0.Str, 'casual', 2) }> }
    token records:sym<Portuguese> { :i 'registos' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'registos', 2) }> }
    token reduce-verb:sym<Portuguese> { :i 'reduzir' | ([\w]+) <?{ $0.Str ne 'resumir' and is-fuzzy-match($0.Str, 'reduzir', 2) }> }
    token remove-verb:sym<Portuguese> { :i 'remover' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'remover', 2) }> | 'eliminar' | ([\w]+) <?{ $0.Str ne 'limiar' and is-fuzzy-match($0.Str, 'eliminar', 2) }> }
    token replace-verb:sym<Portuguese> { :i 'substituir' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'substituir', 2) }> }
    token represent-directive:sym<Portuguese> { :i  <represent-verb> | 'sorteio' | 'reflectir'  }
    token represent-verb:sym<Portuguese> { :i 'apresentado' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'apresentado', 2) }> }
    token rest-noun:sym<Portuguese> { :i 'remanescente' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'remanescente', 2) }> }
    token result-noun:sym<Portuguese> { :i 'resultado' | ([\w]+) <?{ $0.Str ne 'resultados' and is-fuzzy-match($0.Str, 'resultado', 2) }> }
    token results:sym<Portuguese> { :i <results-noun> }
    token results-noun:sym<Portuguese> { :i 'resultados' | ([\w]+) <?{ $0.Str ne 'resultado' and is-fuzzy-match($0.Str, 'resultados', 2) }> }
    token reverse-adjective:sym<Portuguese> { :i 'reverso' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'reverso', 2) }> | 'rodar' | ([\w]+) <?{ $0.Str ne 'tomar' and is-fuzzy-match($0.Str, 'rodar', 2) }> }
    token right-adjective:sym<Portuguese> { :i 'direita' | ([\w]+) <?{ $0.Str ne 'directo' and is-fuzzy-match($0.Str, 'direita', 2) }> | 'certo' | ([\w]+) <?{ $0.Str !(elem) <cerca texto> and is-fuzzy-match($0.Str, 'certo', 2) }> }
    token right-noun:sym<Portuguese> { :i 'direita' | ([\w]+) <?{ $0.Str ne 'directo' and is-fuzzy-match($0.Str, 'direita', 2) }> }
    token row-noun:sym<Portuguese> { :i 'linha' | ([\w]+) <?{ $0.Str !(elem) <minha lista> and is-fuzzy-match($0.Str, 'linha', 2) }> }
    token rows:sym<Portuguese> { :i <rows-noun> }
    token rows-noun:sym<Portuguese> { :i 'filas' | ([\w]+) <?{ $0.Str ne 'fitas' and is-fuzzy-match($0.Str, 'filas', 2) }> }
    token run-verb:sym<Portuguese> { :i 'correr' | ([\w]+) <?{ $0.Str ne 'corre' and is-fuzzy-match($0.Str, 'correr', 2) }> | 'corre' | ([\w]+) <?{ $0.Str !(elem) <conde correr> and is-fuzzy-match($0.Str, 'corre', 2) }> }
    token running-verb:sym<Portuguese> { :i 'funcionamento' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'funcionamento', 2) }> }
    token separate-verb:sym<Portuguese> { :i 'tabs' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'tabs', 2) }> }
    token series-noun:sym<Portuguese> { :i 'série' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'série', 2) }> | 'linha' | ([\w]+) <?{ $0.Str !(elem) <minha lista> and is-fuzzy-match($0.Str, 'linha', 2) }> }
    token set-directive:sym<Portuguese> { :i 'atribuir' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'atribuir', 2) }> }
    token set-noun:sym<Portuguese> { :i 'muitos' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'muitos', 2) }> }
    token setup-adjective:sym<Portuguese> { :i 'sintonizar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'sintonizar', 2) }> | 'afinação' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'afinação', 2) }> | 'sintonizar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'sintonizar', 2) }> | 'inicialização' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'inicialização', 2) }> }
    token setup-noun:sym<Portuguese> { :i 'atitude' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'atitude', 2) }> | 'sintonizar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'sintonizar', 2) }> | 'inicialização' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'inicialização', 2) }> | 'preparação' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'preparação', 2) }> | 'potpourri' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'potpourri', 2) }> }
    token shape-noun:sym<Portuguese> { :i 'formulário' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'formulário', 2) }> }
    token show-verb:sym<Portuguese> { :i 'mostrar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'mostrar', 2) }> }
    token simple:sym<Portuguese> { :i 'simples' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'simples', 2) }> | 'directo' | ([\w]+) <?{ $0.Str ne 'direita' and is-fuzzy-match($0.Str, 'directo', 2) }> }
    token simply-adverb:sym<Portuguese> { :i 'apenas' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'apenas', 2) }> }
    token simulate:sym<Portuguese> { :i 'simular' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'simular', 2) }> }
    token simulate-directive:sym<Portuguese> { :i <simulate> }
    token simulation:sym<Portuguese> { :i 'simulação' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'simulação', 2) }> }
    token single-adjective:sym<Portuguese> { :i 'único' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'único', 2) }> | 'um' }
    token site-noun:sym<Portuguese> { :i 'localização' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'localização', 2) }> | 'posição' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'posição', 2) }> }
    token smallest:sym<Portuguese> { :i 'menor' | ([\w]+) <?{ $0.Str ne 'maior' and is-fuzzy-match($0.Str, 'menor', 2) }> }
    token smallest-adjective:sym<Portuguese> { :i 'menor' | ([\w]+) <?{ $0.Str ne 'maior' and is-fuzzy-match($0.Str, 'menor', 2) }> }
    token some-determiner:sym<Portuguese> { :i 'alguém' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'alguém', 2) }> | 'cerca' | ([\w]+) <?{ $0.Str !(elem) <carga certo> and is-fuzzy-match($0.Str, 'cerca', 2) }> }
    token sparse-adjective:sym<Portuguese> { :i 'diluído' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'diluído', 2) }> }
    token specific-adjective:sym<Portuguese> { :i 'específico' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'específico', 2) }> }
    token split-verb:sym<Portuguese> { :i 'tabs' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'tabs', 2) }> }
    token spot-verb:sym<Portuguese> { :i 'encontrar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'encontrar', 2) }> }
    token spread-verb:sym<Portuguese> { :i 'espalhar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'espalhar', 2) }> }
    token statistical:sym<Portuguese> { :i <statistical-adjective> }
    token statistical-adjective:sym<Portuguese> { :i 'estatisticamente' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'estatisticamente', 2) }> }
    token statistics-noun:sym<Portuguese> { :i 'estatísticas' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'estatísticas', 2) }> }
    token stats-noun:sym<Portuguese> { :i 'estatísticas' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'estatísticas', 2) }> }
    token step-noun:sym<Portuguese> { :i 'etapa' | ([\w]+) <?{ $0.Str !(elem) <mapa etapas> and is-fuzzy-match($0.Str, 'etapa', 2) }> | 'passo' | ([\w]+) <?{ $0.Str !(elem) <caso casos nosso passos peso pesos> and is-fuzzy-match($0.Str, 'passo', 2) }> }
    token steps-noun:sym<Portuguese> { :i 'etapas' | ([\w]+) <?{ $0.Str ne 'etapa' and is-fuzzy-match($0.Str, 'etapas', 2) }> | 'passos' | ([\w]+) <?{ $0.Str !(elem) <casos passo pesos> and is-fuzzy-match($0.Str, 'passos', 2) }> }
    token string-noun:sym<Portuguese> { :i 'fundo' | ([\w]+) <?{ $0.Str ne 'quando' and is-fuzzy-match($0.Str, 'fundo', 2) }> }
    token sub-prefix:sym<Portuguese> { :i 'sábado' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'sábado', 2) }> | 'em' }
    token summaries:sym<Portuguese> { :i <summaries-noun> }
    token summaries-noun:sym<Portuguese> { :i 'recapitula' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'recapitula', 2) }> | 'sumários' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'sumários', 2) }> }
    token summarize-directive:sym<Portuguese> { :i 'recapitulação' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'recapitulação', 2) }> | 'resumir' | ([\w]+) <?{ $0.Str !(elem) <reduzir resumo> and is-fuzzy-match($0.Str, 'resumir', 2) }> }
    token summary:sym<Portuguese> { :i <summary-noun> }
    token summary-noun:sym<Portuguese> { :i 'recapitulação' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'recapitulação', 2) }> | 'resumo' | ([\w]+) <?{ $0.Str ne 'resumir' and is-fuzzy-match($0.Str, 'resumo', 2) }> }
    token system-noun:sym<Portuguese> { :i 'sistema' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'sistema', 2) }> }
    token table-noun:sym<Portuguese> { :i 'quadro' | ([\w]+) <?{ $0.Str !(elem) <quadros quando> and is-fuzzy-match($0.Str, 'quadro', 2) }> }
    token tables-noun:sym<Portuguese> { :i 'quadros' | ([\w]+) <?{ $0.Str ne 'quadro' and is-fuzzy-match($0.Str, 'quadros', 2) }> }
    token tabular-adjective:sym<Portuguese> { :i 'tabular' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'tabular', 2) }> }
    token take-verb:sym<Portuguese> { :i 'obter' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'obter', 2) }> | 'tomar' | ([\w]+) <?{ $0.Str ne 'rodar' and is-fuzzy-match($0.Str, 'tomar', 2) }> | 'levar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'levar', 2) }> | 'pegue' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'pegue', 2) }> }
    token tape-adjective:sym<Portuguese> { :i 'cassetes' | ([\w]+) <?{ $0.Str ne 'cassete' and is-fuzzy-match($0.Str, 'cassetes', 2) }> | 'cassete' | ([\w]+) <?{ $0.Str ne 'cassetes' and is-fuzzy-match($0.Str, 'cassete', 2) }> | 'fitas' | ([\w]+) <?{ $0.Str !(elem) <datas filas> and is-fuzzy-match($0.Str, 'fitas', 2) }> }
    token tape-noun:sym<Portuguese> { :i 'cassete' | ([\w]+) <?{ $0.Str ne 'cassetes' and is-fuzzy-match($0.Str, 'cassete', 2) }> }
    token target-noun:sym<Portuguese> { :i 'finalidade' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'finalidade', 2) }> }
    token text-adjective:sym<Portuguese> { :i <text-noun> | <textual-adjective> }
    token text-noun:sym<Portuguese> { :i 'texto' | ([\w]+) <?{ $0.Str !(elem) <testa certo textos> and is-fuzzy-match($0.Str, 'texto', 2) }> }
    token texts-noun:sym<Portuguese> { :i 'textos' | ([\w]+) <?{ $0.Str ne 'texto' and is-fuzzy-match($0.Str, 'textos', 2) }> }
    token textual-adjective:sym<Portuguese> { :i 'textos' | ([\w]+) <?{ $0.Str ne 'texto' and is-fuzzy-match($0.Str, 'textos', 2) }> | 'texto' | ([\w]+) <?{ $0.Str !(elem) <testa certo textos> and is-fuzzy-match($0.Str, 'texto', 2) }> }
    token that-pronoun:sym<Portuguese> { :i 'esses' | ([\w]+) <?{ $0.Str !(elem) <eles este> and is-fuzzy-match($0.Str, 'esses', 2) }> | 'que' | ([\w]+) <?{ $0.Str !(elem) <um e de meu ou quem> and is-fuzzy-match($0.Str, 'que', 1) }> }
    token the-determiner:sym<Portuguese> { :i 'o' | 'a' }
    token them-pronoun:sym<Portuguese> { :i 'eles' | ([\w]+) <?{ $0.Str !(elem) <esses vezes> and is-fuzzy-match($0.Str, 'eles', 2) }> }
    token this-pronoun:sym<Portuguese> { :i 'este' | ([\w]+) <?{ $0.Str !(elem) <testa isto esses> and is-fuzzy-match($0.Str, 'este', 2) }> | 'isto' | ([\w]+) <?{ $0.Str !(elem) <são alto lista este> and is-fuzzy-match($0.Str, 'isto', 2) }> }
    token threshold-adjective:sym<Portuguese> { :i 'limiar' | ([\w]+) <?{ $0.Str !(elem) <limpar eliminar limiares> and is-fuzzy-match($0.Str, 'limiar', 2) }> | 'limiares' | ([\w]+) <?{ $0.Str ne 'limiar' and is-fuzzy-match($0.Str, 'limiares', 2) }> }
    token threshold-noun:sym<Portuguese> { :i 'limiar' | ([\w]+) <?{ $0.Str !(elem) <limpar eliminar limiares> and is-fuzzy-match($0.Str, 'limiar', 2) }> }
    token time-adjective:sym<Portuguese> { :i 'hora' | ([\w]+) <?{ $0.Str !(elem) <fora para por> and is-fuzzy-match($0.Str, 'hora', 2) }> | 'hora' | ([\w]+) <?{ $0.Str !(elem) <fora para por> and is-fuzzy-match($0.Str, 'hora', 2) }> }
    token time-noun:sym<Portuguese> { :i 'hora' | ([\w]+) <?{ $0.Str !(elem) <fora para por> and is-fuzzy-match($0.Str, 'hora', 2) }> }
    token timeline-noun:sym<Portuguese> { :i  <time-adjective> 'linha'  }
    token times-noun:sym<Portuguese> { :i 'vezes' | ([\w]+) <?{ $0.Str ne 'eles' and is-fuzzy-match($0.Str, 'vezes', 2) }> }
    token to-preposition:sym<Portuguese> { :i 'para' | ([\w]+) <?{ $0.Str !(elem) <cada fora mapa peça data carga por parte hora> and is-fuzzy-match($0.Str, 'para', 2) }> | 'em' | 'para' | ([\w]+) <?{ $0.Str !(elem) <cada fora mapa peça data carga por parte hora> and is-fuzzy-match($0.Str, 'para', 2) }> | 'a' }
    token top-adjective:sym<Portuguese> { :i 'início' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'início', 2) }> | 'topo' | ([\w]+) <?{ $0.Str !(elem) <todos como tipo tipos> and is-fuzzy-match($0.Str, 'topo', 2) }> | 'topo' | ([\w]+) <?{ $0.Str !(elem) <todos como tipo tipos> and is-fuzzy-match($0.Str, 'topo', 2) }> | 'início' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'início', 2) }> }
    token top-noun:sym<Portuguese> { :i 'início' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'início', 2) }> }
    token transform-verb:sym<Portuguese> { :i 'transformar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'transformar', 2) }> }
    token translation-noun:sym<Portuguese> { :i 'tradução' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'tradução', 2) }> }
    token type-noun:sym<Portuguese> { :i 'tipo' | ([\w]+) <?{ $0.Str !(elem) <eixo limpo topo tipos> and is-fuzzy-match($0.Str, 'tipo', 2) }> }
    token types-noun:sym<Portuguese> { :i 'tipos' | ([\w]+) <?{ $0.Str !(elem) <todos eixos topo tipo> and is-fuzzy-match($0.Str, 'tipos', 2) }> }
    token up-adverb:sym<Portuguese> { :i 'acima' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'acima', 2) }> | 'subir' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'subir', 2) }> }
    token use-verb:sym<Portuguese> { :i 'utilização' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'utilização', 2) }> | 'utilização' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'utilização', 2) }> }
    token used-verb:sym<Portuguese> { :i 'recuperado' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'recuperado', 2) }> | 'usado' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'usado', 2) }> }
    token using-preposition:sym<Portuguese> { :i 'via' | ([\w]+) <?{ $0.Str !(elem) <id vir a vs.> and is-fuzzy-match($0.Str, 'via', 1) }> | 'с' | 'com' | ([\w]+) <?{ $0.Str !(elem) <um como do em no nome sem por ou o> and is-fuzzy-match($0.Str, 'com', 1) }> }
    token value-noun:sym<Portuguese> { :i 'valor' | ([\w]+) <?{ $0.Str !(elem) <maior valores> and is-fuzzy-match($0.Str, 'valor', 2) }> }
    token values-noun:sym<Portuguese> { :i 'valores' | ([\w]+) <?{ $0.Str ne 'valor' and is-fuzzy-match($0.Str, 'valores', 2) }> }
    token variable-noun:sym<Portuguese> { :i 'variável' | ([\w]+) <?{ $0.Str ne 'variáveis' and is-fuzzy-match($0.Str, 'variável', 2) }> }
    token variables-noun:sym<Portuguese> { :i 'variáveis' | ([\w]+) <?{ $0.Str ne 'variável' and is-fuzzy-match($0.Str, 'variáveis', 2) }> }
    token versus-preposition:sym<Portuguese> { :i 'vs.' | ([\w]+) <?{ $0.Str !(elem) <via vir ср.> and is-fuzzy-match($0.Str, 'vs.', 1) }> | 'ср.' | ([\w]+) <?{ $0.Str !(elem) <с vs.> and is-fuzzy-match($0.Str, 'ср.', 1) }> | 'vs.' | ([\w]+) <?{ $0.Str !(elem) <via vir ср.> and is-fuzzy-match($0.Str, 'vs.', 1) }> }
    token way-noun:sym<Portuguese> { :i 'estrada' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'estrada', 2) }> | 'caminho' | ([\w]+) <?{ $0.Str ne 'tamanho' and is-fuzzy-match($0.Str, 'caminho', 2) }> }
    token weight:sym<Portuguese> { :i <weight-noun> }
    token weight-adjective:sym<Portuguese> { :i <weight-noun> }
    token weight-noun:sym<Portuguese> { :i 'peso' | ([\w]+) <?{ $0.Str !(elem) <caso peça passo pesos> and is-fuzzy-match($0.Str, 'peso', 2) }> }
    token weights:sym<Portuguese> { :i <weights-noun> }
    token weights-noun:sym<Portuguese> { :i 'pesos' | ([\w]+) <?{ $0.Str !(elem) <casos passo passos peso> and is-fuzzy-match($0.Str, 'pesos', 2) }> }
    token what-pronoun:sym<Portuguese> { :i  'o' \h+ 'que' | 'que'  }
    token when-pronoun:sym<Portuguese> { :i 'quando' | ([\w]+) <?{ $0.Str !(elem) <fundo quadro> and is-fuzzy-match($0.Str, 'quando', 2) }> }
    token which-determiner:sym<Portuguese> { :i 'quem' | ([\w]+) <?{ $0.Str !(elem) <um em que sem> and is-fuzzy-match($0.Str, 'quem', 2) }> | 'que' | ([\w]+) <?{ $0.Str !(elem) <um e de meu ou quem> and is-fuzzy-match($0.Str, 'que', 1) }> }
    token with-preposition:sym<Portuguese> { :i 'via' | ([\w]+) <?{ $0.Str !(elem) <id vir a vs.> and is-fuzzy-match($0.Str, 'via', 1) }> | 'с' | 'com' | ([\w]+) <?{ $0.Str !(elem) <um como do em no nome sem por ou o> and is-fuzzy-match($0.Str, 'com', 1) }> | 'no' | 'por' | ([\w]+) <?{ $0.Str !(elem) <fora ser com do para vir no ou o hora> and is-fuzzy-match($0.Str, 'por', 1) }> }
    token without-preposition:sym<Portuguese> { :i 'sem' | ([\w]+) <?{ $0.Str !(elem) <um e são ser com em de meu quem> and is-fuzzy-match($0.Str, 'sem', 1) }> }
    token word-noun:sym<Portuguese> { :i 'palavra' | ([\w]+) <?{ $0.Str ne 'palavras' and is-fuzzy-match($0.Str, 'palavra', 2) }> }
    token words-noun:sym<Portuguese> { :i 'palavras' | ([\w]+) <?{ $0.Str ne 'palavra' and is-fuzzy-match($0.Str, 'palavras', 2) }> }

    # Directives and phrases
    rule data-frame:sym<Portuguese> {  <data-noun>? <table-noun>  }
    rule data-frames:sym<Portuguese> {  <data-noun>? <tables-noun>  }
    rule time-series-data:sym<Portuguese> {  <time-adjective> <series-noun> <data-noun>?  }
    rule number-of:sym<Portuguese> {  [ <number-noun> | <count-verb> | <counts-noun> ] <of-preposition>?  }

}

# ============================================================
# This role class is generated from the file
#   DSL::Shared::Roles::Portuguese::CommonSpeechParts-template
# using the function AddFuzzyMatch CLI from
#   Grammar::TokenProcessing
# ============================================================

use v6.d;

use DSL::Shared::Utilities::DeterminedWordsMatching;

role DSL::Shared::Roles::Portuguese::CommonSpeechParts {
    # Single words
    token ID-noun:sym<Portuguese> { :i 'id' }
    token IDENTIFIER-adjective:sym<Portuguese> { :i 'identificador' | ([\w]+) <?{ $0.Str ne 'identificadora' and is-pt-fuzzy-match($0.Str, 'identificador', 2) }> | 'identificadora' | ([\w]+) <?{ $0.Str ne 'identificador' and is-pt-fuzzy-match($0.Str, 'identificadora', 2) }> | 'id' }
    token IDENTIFIER-noun:sym<Portuguese> { :i 'identificador' | ([\w]+) <?{ $0.Str ne 'identificadora' and is-pt-fuzzy-match($0.Str, 'identificador', 2) }> }
    token MODULE-noun:sym<Portuguese> { :i 'módulo' | ([\w]+) <?{ $0.Str ne 'modelo' and is-pt-fuzzy-match($0.Str, 'módulo', 2) }> }
    token TARGET-noun:sym<Portuguese> { :i 'meta' | ([\w]+) <?{ $0.Str !(elem) <data alta meu esta> and is-pt-fuzzy-match($0.Str, 'meta', 2) }> | 'propósito' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'propósito', 2) }> | 'alvo' | ([\w]+) <?{ $0.Str !(elem) <alto alta> and is-pt-fuzzy-match($0.Str, 'alvo', 2) }> }
    token USER-noun:sym<Portuguese> { :i 'usuário' | ([\w]+) <?{ $0.Str !(elem) <usuária sumário> and is-pt-fuzzy-match($0.Str, 'usuário', 2) }> | 'usuária' | ([\w]+) <?{ $0.Str ne 'usuário' and is-pt-fuzzy-match($0.Str, 'usuária', 2) }> }
    token a-determiner:sym<Portuguese> { :i 'um' | 'uma' | ([\w]+) <?{ $0.Str !(elem) <um em na via max da a usar> and is-pt-fuzzy-match($0.Str, 'uma', 1) }> }
    token add-verb:sym<Portuguese> { :i 'adicionar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'adicionar', 2) }> }
    token adhere-verb:sym<Portuguese> { :i  'aderir' | 'de' \h+ 'acordo' \h+ 'com'  }
    token adjacency-noun:sym<Portuguese> { :i 'adjacência' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'adjacência', 2) }> }
    token adjacent-adjective:sym<Portuguese> { :i 'adjacent' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'adjacent', 2) }> }
    token algorithm-noun:sym<Portuguese> { :i 'algoritmo' | ([\w]+) <?{ $0.Str ne 'algoritmos' and is-pt-fuzzy-match($0.Str, 'algoritmo', 2) }> }
    token algorithms-noun:sym<Portuguese> { :i 'algoritmos' | ([\w]+) <?{ $0.Str ne 'algoritmo' and is-pt-fuzzy-match($0.Str, 'algoritmos', 2) }> }
    token all-determiner:sym<Portuguese> { :i 'cada' | ([\w]+) <?{ $0.Str !(elem) <caso canal dado data para carga da usada> and is-pt-fuzzy-match($0.Str, 'cada', 2) }> | 'todos' | ([\w]+) <?{ $0.Str !(elem) <todas dados métodos dos topo tipos> and is-pt-fuzzy-match($0.Str, 'todos', 2) }> | 'todas' | ([\w]+) <?{ $0.Str !(elem) <todos das rodar tomar> and is-pt-fuzzy-match($0.Str, 'todas', 2) }> }
    token and-conjunction:sym<Portuguese> { :i 'e' }
    token annex-verb:sym<Portuguese> { :i 'juntar' | ([\w]+) <?{ $0.Str ne 'contar' and is-pt-fuzzy-match($0.Str, 'juntar', 2) }> | 'junte-se' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'junte-se', 2) }> }
    token append-verb:sym<Portuguese> { :i 'acrescentar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'acrescentar', 2) }> }
    token apply-verb:sym<Portuguese> { :i 'anexar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'anexar', 2) }> }
    token are-verb:sym<Portuguese> { :i 'são' | ([\w]+) <?{ $0.Str !(elem) <no ser isto sem não do sub o isso> and is-pt-fuzzy-match($0.Str, 'são', 1) }> }
    token array-noun:sym<Portuguese> { :i 'matriz' | ([\w]+) <?{ $0.Str ne 'matrizes' and is-pt-fuzzy-match($0.Str, 'matriz', 2) }> }
    token arrays-noun:sym<Portuguese> { :i 'matrizes' | ([\w]+) <?{ $0.Str ne 'matriz' and is-pt-fuzzy-match($0.Str, 'matrizes', 2) }> }
    token as-preposition:sym<Portuguese> { :i 'como' | ([\w]+) <?{ $0.Str !(elem) <com caso nome topo> and is-pt-fuzzy-match($0.Str, 'como', 2) }> }
    token assign-verb:sym<Portuguese> { :i 'atribuir' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'atribuir', 2) }> }
    token at-preposition:sym<Portuguese> { :i 'em' | 'no' | 'na' }
    token automatic:sym<Portuguese> { :i 'automático' | ([\w]+) <?{ $0.Str ne 'automática' and is-pt-fuzzy-match($0.Str, 'automático', 2) }> | 'automática' | ([\w]+) <?{ $0.Str ne 'automático' and is-pt-fuzzy-match($0.Str, 'automática', 2) }> | 'automaticamente' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'automaticamente', 2) }> }
    token away-adverb:sym<Portuguese> { :i 'fora' | ([\w]+) <?{ $0.Str !(elem) <para forma hora> and is-pt-fuzzy-match($0.Str, 'fora', 2) }> }
    token axes-noun:sym<Portuguese> { :i 'eixos' | ([\w]+) <?{ $0.Str !(elem) <eixo tipos> and is-pt-fuzzy-match($0.Str, 'eixos', 2) }> }
    token axis-noun:sym<Portuguese> { :i 'eixo' | ([\w]+) <?{ $0.Str !(elem) <eixos baixo tipo> and is-pt-fuzzy-match($0.Str, 'eixo', 2) }> }
    token be-verb:sym<Portuguese> { :i 'ser' | ([\w]+) <?{ $0.Str !(elem) <e são em meu sem de sub usar> and is-pt-fuzzy-match($0.Str, 'ser', 1) }> | 'estar' | ([\w]+) <?{ $0.Str !(elem) <ecoar essa essas este estes esta estas usar> and is-pt-fuzzy-match($0.Str, 'estar', 2) }> }
    token both-determiner:sym<Portuguese> { :i  'e'? \h* 'ambos' | 'simultaneamente' | 'juntos' | 'juntas'  }
    token bottom-noun:sym<Portuguese> { :i 'fundo' | ([\w]+) <?{ $0.Str !(elem) <função quando> and is-pt-fuzzy-match($0.Str, 'fundo', 2) }> | 'inferior' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'inferior', 2) }> }
    token broaden-verb:sym<Portuguese> { :i 'expandir' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'expandir', 2) }> }
    token by-preposition:sym<Portuguese> { :i 'com' | ([\w]+) <?{ $0.Str !(elem) <um como em no nome sem do dos ou o os> and is-pt-fuzzy-match($0.Str, 'com', 1) }> | 'via' | ([\w]+) <?{ $0.Str !(elem) <id uma na min da a> and is-pt-fuzzy-match($0.Str, 'via', 1) }> }
    token calculation:sym<Portuguese> { :i 'cálculo' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'cálculo', 2) }> }
    token case-noun:sym<Portuguese> { :i 'caso' | ([\w]+) <?{ $0.Str !(elem) <cada como casos dado das passo as isso peso> and is-pt-fuzzy-match($0.Str, 'caso', 2) }> }
    token cases-noun:sym<Portuguese> { :i 'casos' | ([\w]+) <?{ $0.Str !(elem) <caso dados passo passos pesos> and is-pt-fuzzy-match($0.Str, 'casos', 2) }> }
    token channel-adjective:sym<Portuguese> { :i <channel-noun> }
    token channel-noun:sym<Portuguese> { :i 'canal' | ([\w]+) <?{ $0.Str ne 'cada' and is-pt-fuzzy-match($0.Str, 'canal', 2) }> }
    token chart-noun:sym<Portuguese> { :i 'gráfico' | ([\w]+) <?{ $0.Str ne 'gráficos' and is-pt-fuzzy-match($0.Str, 'gráfico', 2) }> }
    token chart-verb:sym<Portuguese> { :i  'em'? \h* 'gráfico'  }
    token classify-verb:sym<Portuguese> { :i 'classificar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'classificar', 2) }> }
    token clear-verb:sym<Portuguese> { :i 'limpar' | ([\w]+) <?{ $0.Str !(elem) <ligar limiar> and is-pt-fuzzy-match($0.Str, 'limpar', 2) }> | 'apagar' | ([\w]+) <?{ $0.Str ne 'pegar' and is-pt-fuzzy-match($0.Str, 'apagar', 2) }> }
    token cluster:sym<Portuguese> { :i <cluster-noun> }
    token cluster-noun:sym<Portuguese> { :i 'cluster' | ([\w]+) <?{ $0.Str ne 'clusters' and is-pt-fuzzy-match($0.Str, 'cluster', 2) }> | 'aglomerado' | ([\w]+) <?{ $0.Str ne 'aglomerados' and is-pt-fuzzy-match($0.Str, 'aglomerado', 2) }> | 'grupo' | ([\w]+) <?{ $0.Str ne 'grupos' and is-pt-fuzzy-match($0.Str, 'grupo', 2) }> }
    token clusters-noun:sym<Portuguese> { :i 'clusters' | ([\w]+) <?{ $0.Str ne 'cluster' and is-pt-fuzzy-match($0.Str, 'clusters', 2) }> | 'aglomerados' | ([\w]+) <?{ $0.Str ne 'aglomerado' and is-pt-fuzzy-match($0.Str, 'aglomerados', 2) }> | 'grupos' | ([\w]+) <?{ $0.Str ne 'grupo' and is-pt-fuzzy-match($0.Str, 'grupos', 2) }> }
    token code-noun:sym<Portuguese> { :i 'código' | ([\w]+) <?{ $0.Str ne 'códigos' and is-pt-fuzzy-match($0.Str, 'código', 2) }> }
    token codes-noun:sym<Portuguese> { :i 'códigos' | ([\w]+) <?{ $0.Str ne 'código' and is-pt-fuzzy-match($0.Str, 'códigos', 2) }> }
    token column-noun:sym<Portuguese> { :i 'coluna' | ([\w]+) <?{ $0.Str ne 'colunas' and is-pt-fuzzy-match($0.Str, 'coluna', 2) }> }
    token columns:sym<Portuguese> { :i <columns-noun> }
    token columns-noun:sym<Portuguese> { :i 'colunas' | ([\w]+) <?{ $0.Str ne 'coluna' and is-pt-fuzzy-match($0.Str, 'colunas', 2) }> }
    token complete-adjective:sym<Portuguese> { :i 'completo' | ([\w]+) <?{ $0.Str !(elem) <completos completa completas> and is-pt-fuzzy-match($0.Str, 'completo', 2) }> | 'completos' | ([\w]+) <?{ $0.Str !(elem) <completo completa completas> and is-pt-fuzzy-match($0.Str, 'completos', 2) }> | 'completa' | ([\w]+) <?{ $0.Str !(elem) <completo completos completas> and is-pt-fuzzy-match($0.Str, 'completa', 2) }> | 'completas' | ([\w]+) <?{ $0.Str !(elem) <completo completos completa> and is-pt-fuzzy-match($0.Str, 'completas', 2) }> }
    token compute-directive:sym<Portuguese> { :i 'calcular' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'calcular', 2) }> | 'encontrar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'encontrar', 2) }> | 'achar' | ([\w]+) <?{ $0.Str ne 'ecoar' and is-pt-fuzzy-match($0.Str, 'achar', 2) }> }
    token config-noun:sym<Portuguese> { :i 'configurar' | ([\w]+) <?{ $0.Str !(elem) <configurado configurada> and is-pt-fuzzy-match($0.Str, 'configurar', 2) }> }
    token configuration-adjective:sym<Portuguese> { :i 'configuração' | ([\w]+) <?{ $0.Str ne 'configurado' and is-pt-fuzzy-match($0.Str, 'configuração', 2) }> }
    token configuration-noun:sym<Portuguese> { :i 'configuração' | ([\w]+) <?{ $0.Str ne 'configurado' and is-pt-fuzzy-match($0.Str, 'configuração', 2) }> }
    token connect-verb:sym<Portuguese> { :i 'conectar' | ([\w]+) <?{ $0.Str ne 'contar' and is-pt-fuzzy-match($0.Str, 'conectar', 2) }> }
    token consider-verb:sym<Portuguese> { :i 'considerar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'considerar', 2) }> }
    token context-noun:sym<Portuguese> { :i 'contexto' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'contexto', 2) }> }
    token contingency-noun:sym<Portuguese> { :i  'contingência' | 'referência' \h+ 'cruzada'  }
    token convert-verb:sym<Portuguese> { :i 'converter' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'converter', 2) }> }
    token conveyor-adjective:sym<Portuguese> { :i 'transportador' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'transportador', 2) }> }
    token conveyor-noun:sym<Portuguese> { :i 'transportador' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'transportador', 2) }> }
    token count-verb:sym<Portuguese> { :i 'contar' | ([\w]+) <?{ $0.Str !(elem) <juntar conectar> and is-pt-fuzzy-match($0.Str, 'contar', 2) }> }
    token counts-noun:sym<Portuguese> { :i  'tamanho' | 'número' \h+ 'de' | 'quantidade' \h+ 'de'  }
    token create:sym<Portuguese> { :i 'criar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'criar', 2) }> }
    token create-directive:sym<Portuguese> { :i  <create-verb> | 'fazer'  }
    token create-verb:sym<Portuguese> { :i 'criar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'criar', 2) }> }
    token creation-noun:sym<Portuguese> { :i 'criação' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'criação', 2) }> }
    token current-adjective:sym<Portuguese> { :i 'atual' | ([\w]+) <?{ $0.Str ne 'qual' and is-pt-fuzzy-match($0.Str, 'atual', 2) }> }
    token data-adjective:sym<Portuguese> { :i <data-noun> }
    token data-noun:sym<Portuguese> { :i 'dado' | ([\w]+) <?{ $0.Str !(elem) <cada caso dados data do da das usado> and is-pt-fuzzy-match($0.Str, 'dado', 2) }> | 'dados' | ([\w]+) <?{ $0.Str !(elem) <todos casos dado datas dos das usados> and is-pt-fuzzy-match($0.Str, 'dados', 2) }> }
    token dataset:sym<Portuguese> { :i <dataset-noun> }
    token dataset-noun:sym<Portuguese> { :i  'conjunto' \h+ 'de' \h+ 'dados' | <array-noun> \h+ 'a' \h+ 'partir' \h+ 'de' \h+ <data-noun> | <data-adjective> \h+ <array-noun> }
    token datasets-noun:sym<Portuguese> { :i  'conjuntos' \h+ 'de' \h+ 'dados' | <arrays-noun> \h+ 'a' \h+ 'partir' \h+ 'de' \h+ <data-noun> | <data-adjective> \h+ <arrays-noun>  }
    token date-adjective:sym<Portuguese> { :i 'data' | ([\w]+) <?{ $0.Str !(elem) <meta cada dado datas para alta da das esta> and is-pt-fuzzy-match($0.Str, 'data', 2) }> | 'datas' | ([\w]+) <?{ $0.Str !(elem) <dados data das fitas estas> and is-pt-fuzzy-match($0.Str, 'datas', 2) }> }
    token date-noun:sym<Portuguese> { :i 'data' | ([\w]+) <?{ $0.Str !(elem) <meta cada dado datas para alta da das esta> and is-pt-fuzzy-match($0.Str, 'data', 2) }> }
    token dates-noun:sym<Portuguese> { :i 'datas' | ([\w]+) <?{ $0.Str !(elem) <dados data das fitas estas> and is-pt-fuzzy-match($0.Str, 'datas', 2) }> }
    token datum-noun:sym<Portuguese> { :i <data-noun> }
    token default:sym<Portuguese> { :i <default-noun> }
    token default-noun:sym<Portuguese> { :i 'padrão' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'padrão', 2) }> }
    token delete-directive:sym<Portuguese> { :i 'deletar' | ([\w]+) <?{ $0.Str ne 'detectar' and is-pt-fuzzy-match($0.Str, 'deletar', 2) }> | 'eliminar' | ([\w]+) <?{ $0.Str ne 'limiar' and is-pt-fuzzy-match($0.Str, 'eliminar', 2) }> | 'descartar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'descartar', 2) }> | 'remover' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'remover', 2) }> }
    token detect-verb:sym<Portuguese> { :i 'encontrar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'encontrar', 2) }> | 'detectar' | ([\w]+) <?{ $0.Str ne 'deletar' and is-pt-fuzzy-match($0.Str, 'detectar', 2) }> | 'encontrar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'encontrar', 2) }> | 'achar' | ([\w]+) <?{ $0.Str ne 'ecoar' and is-pt-fuzzy-match($0.Str, 'achar', 2) }> }
    token diagram:sym<Portuguese> { :i <diagram-synonyms> }
    token diagram-noun:sym<Portuguese> { :i 'diagrama' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'diagrama', 2) }> }
    token diagram-synonyms:sym<Portuguese> { :i 
        <diagram-noun> |
        <plot-noun> |
        <plots-noun> |
        <graph-noun> |
        <chart-noun> }
    token dictionary-noun:sym<Portuguese> { :i 'dicionário' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'dicionário', 2) }> }
    token difference:sym<Portuguese> { :i 'diferença' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'diferença', 2) }> }
    token dimension-noun:sym<Portuguese> { :i 'tamanho' | ([\w]+) <?{ $0.Str !(elem) <tamanhos caminho> and is-pt-fuzzy-match($0.Str, 'tamanho', 2) }> | 'dimensão' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'dimensão', 2) }> }
    token dimensions-noun:sym<Portuguese> { :i 'tamanhos' | ([\w]+) <?{ $0.Str ne 'tamanho' and is-pt-fuzzy-match($0.Str, 'tamanhos', 2) }> | 'dimensões' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'dimensões', 2) }> }
    token directly-adverb:sym<Portuguese> { :i 'diretamente' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'diretamente', 2) }> }
    token display-directive:sym<Portuguese> { :i <display-verb> }
    token display-verb:sym<Portuguese> { :i 'mostrar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'mostrar', 2) }> | 'exibir' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'exibir', 2) }> }
    token distance-noun:sym<Portuguese> { :i 'distância' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'distância', 2) }> }
    token do-verb:sym<Portuguese> { :i 'fazer' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'fazer', 2) }> }
    token document-noun:sym<Portuguese> { :i 'documento' | ([\w]+) <?{ $0.Str ne 'documentos' and is-pt-fuzzy-match($0.Str, 'documento', 2) }> }
    token documents-noun:sym<Portuguese> { :i 'documentos' | ([\w]+) <?{ $0.Str ne 'documento' and is-pt-fuzzy-match($0.Str, 'documentos', 2) }> }
    token domain-noun:sym<Portuguese> { :i 'domínio' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'domínio', 2) }> | 'área' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'área', 2) }> }
    token drop-verb:sym<Portuguese> { :i 'derrubar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'derrubar', 2) }> | 'descartar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'descartar', 2) }> | 'esquecer' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'esquecer', 2) }> }
    token during-preposition:sym<Portuguese> { :i 'enquanto' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'enquanto', 2) }> }
    token each-determiner:sym<Portuguese> { :i 'cada' | ([\w]+) <?{ $0.Str !(elem) <caso canal dado data para carga da usada> and is-pt-fuzzy-match($0.Str, 'cada', 2) }> }
    token echo-verb:sym<Portuguese> { :i 'ecoar' | ([\w]+) <?{ $0.Str !(elem) <estar achar> and is-pt-fuzzy-match($0.Str, 'ecoar', 2) }> | 'repetir' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'repetir', 2) }> }
    token element:sym<Portuguese> { :i <element-noun> }
    token element-noun:sym<Portuguese> { :i 'elemento' | ([\w]+) <?{ $0.Str ne 'elementos' and is-pt-fuzzy-match($0.Str, 'elemento', 2) }> }
    token elements:sym<Portuguese> { :i <elements-noun> }
    token elements-noun:sym<Portuguese> { :i 'elementos' | ([\w]+) <?{ $0.Str ne 'elemento' and is-pt-fuzzy-match($0.Str, 'elementos', 2) }> }
    token empty-noun:sym<Portuguese> { :i 'branco' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'branco', 2) }> | 'vazio' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'vazio', 2) }> }
    token empty-verb:sym<Portuguese> { :i 'esvaziar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'esvaziar', 2) }> | 'limpar' | ([\w]+) <?{ $0.Str !(elem) <ligar limiar> and is-pt-fuzzy-match($0.Str, 'limpar', 2) }> | 'apagar' | ([\w]+) <?{ $0.Str ne 'pegar' and is-pt-fuzzy-match($0.Str, 'apagar', 2) }> }
    token every-determiner:sym<Portuguese> { :i 'cada' | ([\w]+) <?{ $0.Str !(elem) <caso canal dado data para carga da usada> and is-pt-fuzzy-match($0.Str, 'cada', 2) }> }
    token extend-verb:sym<Portuguese> { :i 'expandir' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'expandir', 2) }> }
    token extract-directive:sym<Portuguese> { :i 'extraia' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'extraia', 2) }> }
    token filter:sym<Portuguese> { :i <filter-verb> }
    token filter-noun:sym<Portuguese> { :i 'filtro' | ([\w]+) <?{ $0.Str ne 'filtrar' and is-pt-fuzzy-match($0.Str, 'filtro', 2) }> }
    token filter-verb:sym<Portuguese> { :i 'filtrar' | ([\w]+) <?{ $0.Str ne 'filtro' and is-pt-fuzzy-match($0.Str, 'filtrar', 2) }> }
    token find-verb:sym<Portuguese> { :i 'pesquisar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'pesquisar', 2) }> | 'achar' | ([\w]+) <?{ $0.Str ne 'ecoar' and is-pt-fuzzy-match($0.Str, 'achar', 2) }> | 'encontrar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'encontrar', 2) }> }
    token first-adjective:sym<Portuguese> { :i 'primeiro' | ([\w]+) <?{ $0.Str !(elem) <primeiros primeira primeiras> and is-pt-fuzzy-match($0.Str, 'primeiro', 2) }> | 'primeiros' | ([\w]+) <?{ $0.Str !(elem) <primeiro primeira primeiras> and is-pt-fuzzy-match($0.Str, 'primeiros', 2) }> | 'primeira' | ([\w]+) <?{ $0.Str !(elem) <primeiro primeiros primeiras> and is-pt-fuzzy-match($0.Str, 'primeira', 2) }> | 'primeiras' | ([\w]+) <?{ $0.Str !(elem) <primeiro primeiros primeira> and is-pt-fuzzy-match($0.Str, 'primeiras', 2) }> }
    token for-preposition:sym<Portuguese> { :i 'para' | ([\w]+) <?{ $0.Str !(elem) <cada fora data carga parte hora> and is-pt-fuzzy-match($0.Str, 'para', 2) }> | 'com' | ([\w]+) <?{ $0.Str !(elem) <um como em no nome sem do dos ou o os> and is-pt-fuzzy-match($0.Str, 'com', 1) }> | 'em' }
    token frame-noun:sym<Portuguese> { :i 'moldura' | ([\w]+) <?{ $0.Str ne 'molduras' and is-pt-fuzzy-match($0.Str, 'moldura', 2) }> }
    token frames-noun:sym<Portuguese> { :i 'molduras' | ([\w]+) <?{ $0.Str ne 'moldura' and is-pt-fuzzy-match($0.Str, 'molduras', 2) }> }
    token from-preposition:sym<Portuguese> { :i  'de' | 'à' \h+ 'partir' \h+ 'de'  }
    token function:sym<Portuguese> { :i <function-noun> }
    token function-noun:sym<Portuguese> { :i 'função' | ([\w]+) <?{ $0.Str ne 'fundo' and is-pt-fuzzy-match($0.Str, 'função', 2) }> }
    token functions:sym<Portuguese> { :i <functions-noun> }
    token functions-noun:sym<Portuguese> { :i 'funções' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'funções', 2) }> }
    token generate-directive:sym<Portuguese> { :i <generate-verb> | <create-verb> }
    token generate-verb:sym<Portuguese> { :i 'generar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'generar', 2) }> }
    token get-verb:sym<Portuguese> { :i 'pegar' | ([\w]+) <?{ $0.Str !(elem) <apagar levar ligar puxar pegue> and is-pt-fuzzy-match($0.Str, 'pegar', 2) }> | 'obter' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'obter', 2) }> | 'levar' | ([\w]+) <?{ $0.Str !(elem) <pegar ligar> and is-pt-fuzzy-match($0.Str, 'levar', 2) }> }
    token graph-noun:sym<Portuguese> { :i 'gráfico' | ([\w]+) <?{ $0.Str ne 'gráficos' and is-pt-fuzzy-match($0.Str, 'gráfico', 2) }> }
    token head-adjective:sym<Portuguese> { :i <head-noun> }
    token head-noun:sym<Portuguese> { :i 'cabeça' | ([\w]+) <?{ $0.Str ne 'tabela' and is-pt-fuzzy-match($0.Str, 'cabeça', 2) }> }
    token high-adjective:sym<Portuguese> { :i 'alto' | ([\w]+) <?{ $0.Str !(elem) <alvo alta isto> and is-pt-fuzzy-match($0.Str, 'alto', 2) }> | 'alta' | ([\w]+) <?{ $0.Str !(elem) <meta alvo data alto esta> and is-pt-fuzzy-match($0.Str, 'alta', 2) }> }
    token higher-adjective:sym<Portuguese> { :i  'mais' \h+ <high-adjective>  }
    token histogram:sym<Portuguese> { :i 'histograma' | ([\w]+) <?{ $0.Str ne 'histogramas' and is-pt-fuzzy-match($0.Str, 'histograma', 2) }> }
    token histograms:sym<Portuguese> { :i 'histogramas' | ([\w]+) <?{ $0.Str ne 'histograma' and is-pt-fuzzy-match($0.Str, 'histogramas', 2) }> }
    token how-adverb:sym<Portuguese> { :i 'como' | ([\w]+) <?{ $0.Str !(elem) <com caso nome topo> and is-pt-fuzzy-match($0.Str, 'como', 2) }> }
    token id-noun:sym<Portuguese> { :i 'id' }
    token identifier-adjective:sym<Portuguese> { :i <IDENTIFIER-adjective> }
    token identifier-noun:sym<Portuguese> { :i <IDENTIFIER-noun> }
    token in-preposition:sym<Portuguese> { :i  <at-preposition> | 'dentro'  }
    token include-verb:sym<Portuguese> { :i 'incluir' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'incluir', 2) }> }
    token ingest-verb:sym<Portuguese> { :i  'leia' \h+ 'mais'  }
    token interpreter-noun:sym<Portuguese> { :i 'intérprete' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'intérprete', 2) }> }
    token interpreting-adjective:sym<Portuguese> { :i 'interpretador' | ([\w]+) <?{ $0.Str ne 'interpretadora' and is-pt-fuzzy-match($0.Str, 'interpretador', 2) }> | 'interpretadora' | ([\w]+) <?{ $0.Str ne 'interpretador' and is-pt-fuzzy-match($0.Str, 'interpretadora', 2) }> }
    token into-preposition:sym<Portuguese> { :i 'em' }
    token is-verb:sym<Portuguese> { :i 'é' }
    token it-pronoun:sym<Portuguese> { :i 'isto' | ([\w]+) <?{ $0.Str !(elem) <são alto lista resto este esta isso> and is-pt-fuzzy-match($0.Str, 'isto', 2) }> | 'que' | ([\w]+) <?{ $0.Str !(elem) <um e meu de ou sub quem qual> and is-pt-fuzzy-match($0.Str, 'que', 1) }> }
    token iterations:sym<Portuguese> { :i 'iterações' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'iterações', 2) }> }
    token join-verb:sym<Portuguese> { :i 'ligar' | ([\w]+) <?{ $0.Str !(elem) <limpar pegar levar limiar> and is-pt-fuzzy-match($0.Str, 'ligar', 2) }> | 'combinar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'combinar', 2) }> }
    token join-noun:sym<Portuguese> { :i 'ligação' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'ligação', 2) }> | 'combinação' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'combinação', 2) }> }
    token language-noun:sym<Portuguese> { :i 'língua' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'língua', 2) }> }
    token largest-adjective:sym<Portuguese> { :i 'maior' | ([\w]+) <?{ $0.Str !(elem) <menor valor> and is-pt-fuzzy-match($0.Str, 'maior', 2) }> }
    token last-adjective:sym<Portuguese> { :i  'último' | 'últimos' | 'mais' \h+ 'recente' | 'passado' | 'passada'  }
    token left-adjective:sym<Portuguese> { :i 'esquerda' | ([\w]+) <?{ $0.Str ne 'esquerdo' and is-pt-fuzzy-match($0.Str, 'esquerda', 2) }> }
    token left-noun:sym<Portuguese> { :i 'esquerdo' | ([\w]+) <?{ $0.Str ne 'esquerda' and is-pt-fuzzy-match($0.Str, 'esquerdo', 2) }> | 'esquerda' | ([\w]+) <?{ $0.Str ne 'esquerdo' and is-pt-fuzzy-match($0.Str, 'esquerda', 2) }> }
    token link-noun:sym<Portuguese> { :i 'ligação' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'ligação', 2) }> }
    token list-noun:sym<Portuguese> { :i 'lista' | ([\w]+) <?{ $0.Str !(elem) <isto linha esta> and is-pt-fuzzy-match($0.Str, 'lista', 2) }> }
    token load-verb:sym<Portuguese> { :i 'carregar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'carregar', 2) }> | 'carga' | ([\w]+) <?{ $0.Str !(elem) <cada para> and is-pt-fuzzy-match($0.Str, 'carga', 2) }> }
    token locate-verb:sym<Portuguese> { :i 'encontrar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'encontrar', 2) }> | 'localizar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'localizar', 2) }> | 'achar' | ([\w]+) <?{ $0.Str ne 'ecoar' and is-pt-fuzzy-match($0.Str, 'achar', 2) }> }
    token low-adjective:sym<Portuguese> { :i 'baixo' | ([\w]+) <?{ $0.Str !(elem) <eixo baixa> and is-pt-fuzzy-match($0.Str, 'baixo', 2) }> | 'baixa' | ([\w]+) <?{ $0.Str ne 'baixo' and is-pt-fuzzy-match($0.Str, 'baixa', 2) }> }
    token lower-adjective:sym<Portuguese> { :i  'mais' \h+ <low-adjective>  }
    token make-noun:sym<Portuguese> { :i 'fazer' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'fazer', 2) }> }
    token making-noun:sym<Portuguese> { :i 'fazendo' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'fazendo', 2) }> }
    token manner:sym<Portuguese> { :i 'caminho' | ([\w]+) <?{ $0.Str ne 'tamanho' and is-pt-fuzzy-match($0.Str, 'caminho', 2) }> | 'maneira' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'maneira', 2) }> }
    token matrices-noun:sym<Portuguese> { :i 'matrizes' | ([\w]+) <?{ $0.Str ne 'matriz' and is-pt-fuzzy-match($0.Str, 'matrizes', 2) }> }
    token matrix-noun:sym<Portuguese> { :i 'matriz' | ([\w]+) <?{ $0.Str ne 'matrizes' and is-pt-fuzzy-match($0.Str, 'matriz', 2) }> }
    token matrixes-noun:sym<Portuguese> { :i 'matrizes' | ([\w]+) <?{ $0.Str ne 'matriz' and is-pt-fuzzy-match($0.Str, 'matrizes', 2) }> }
    token maximum:sym<Portuguese> { :i 'max' | ([\w]+) <?{ $0.Str !(elem) <uma na min meu da das a as> and is-pt-fuzzy-match($0.Str, 'max', 1) }> | 'máximo' | ([\w]+) <?{ $0.Str !(elem) <máximos máxima máximas mínimo> and is-pt-fuzzy-match($0.Str, 'máximo', 2) }> | 'máximos' | ([\w]+) <?{ $0.Str !(elem) <máximo máxima máximas mínimos> and is-pt-fuzzy-match($0.Str, 'máximos', 2) }> | 'máxima' | ([\w]+) <?{ $0.Str !(elem) <máximo máximos máximas mínima> and is-pt-fuzzy-match($0.Str, 'máxima', 2) }> | 'máximas' | ([\w]+) <?{ $0.Str !(elem) <máximo máximos máxima mínimas> and is-pt-fuzzy-match($0.Str, 'máximas', 2) }> }
    token message-noun:sym<Portuguese> { :i 'mensagem' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'mensagem', 2) }> }
    token method-adjective:sym<Portuguese> { :i 'método' | ([\w]+) <?{ $0.Str ne 'métodos' and is-pt-fuzzy-match($0.Str, 'método', 2) }> | 'metodicamente' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'metodicamente', 2) }> | 'metódico' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'metódico', 2) }> }
    token method-noun:sym<Portuguese> { :i 'método' | ([\w]+) <?{ $0.Str ne 'métodos' and is-pt-fuzzy-match($0.Str, 'método', 2) }> }
    token methods-noun:sym<Portuguese> { :i 'métodos' | ([\w]+) <?{ $0.Str !(elem) <todos método> and is-pt-fuzzy-match($0.Str, 'métodos', 2) }> }
    token minimum:sym<Portuguese> { :i 'min' | ([\w]+) <?{ $0.Str !(elem) <id via max meu> and is-pt-fuzzy-match($0.Str, 'min', 1) }> | 'mínimo' | ([\w]+) <?{ $0.Str !(elem) <máximo mínimos mínima mínimas> and is-pt-fuzzy-match($0.Str, 'mínimo', 2) }> | 'mínimos' | ([\w]+) <?{ $0.Str !(elem) <máximos mínimo mínima mínimas> and is-pt-fuzzy-match($0.Str, 'mínimos', 2) }> | 'mínima' | ([\w]+) <?{ $0.Str !(elem) <máxima mínimo mínimos mínimas> and is-pt-fuzzy-match($0.Str, 'mínima', 2) }> | 'mínimas' | ([\w]+) <?{ $0.Str !(elem) <máximas mínimo mínimos mínima> and is-pt-fuzzy-match($0.Str, 'mínimas', 2) }> }
    token missing-adjective:sym<Portuguese> { :i 'faltando' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'faltando', 2) }> }
    token model-noun:sym<Portuguese> { :i 'modelo' | ([\w]+) <?{ $0.Str ne 'módulo' and is-pt-fuzzy-match($0.Str, 'modelo', 2) }> }
    token module-noun:sym<Portuguese> { :i 'módulo' | ([\w]+) <?{ $0.Str ne 'modelo' and is-pt-fuzzy-match($0.Str, 'módulo', 2) }> }
    token my-determiner:sym<Portuguese> { :i 'meu' | ([\w]+) <?{ $0.Str !(elem) <meta e em ser que max min sem de ou> and is-pt-fuzzy-match($0.Str, 'meu', 1) }> }
    token name-noun:sym<Portuguese> { :i 'nome' | ([\w]+) <?{ $0.Str !(elem) <como no com nomes> and is-pt-fuzzy-match($0.Str, 'nome', 2) }> }
    token names-noun:sym<Portuguese> { :i 'nomes' | ([\w]+) <?{ $0.Str ne 'nome' and is-pt-fuzzy-match($0.Str, 'nomes', 2) }> }
    token nearest-adjective:sym<Portuguese> { :i  'mais' \h+ 'próximo' | 'mais' \h+ 'próxima'  }
    token neighbors-noun:sym<Portuguese> { :i 'vizinhos' | ([\w]+) <?{ $0.Str ne 'vizinhas' and is-pt-fuzzy-match($0.Str, 'vizinhos', 2) }> | 'vizinhas' | ([\w]+) <?{ $0.Str ne 'vizinhos' and is-pt-fuzzy-match($0.Str, 'vizinhas', 2) }> }
    token no-determiner:sym<Portuguese> { :i 'sem' | ([\w]+) <?{ $0.Str !(elem) <um e são em ser com meu de sub quem> and is-pt-fuzzy-match($0.Str, 'sem', 1) }> }
    token non-prefix:sym<Portuguese> { :i 'não' | ([\w]+) <?{ $0.Str !(elem) <são no na do o> and is-pt-fuzzy-match($0.Str, 'não', 1) }> }
    token number-noun:sym<Portuguese> { :i 'número' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'número', 2) }> }
    token object-noun:sym<Portuguese> { :i 'objeto' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'objeto', 2) }> }
    token obtain-verb:sym<Portuguese> { :i 'obter' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'obter', 2) }> | 'pegar' | ([\w]+) <?{ $0.Str !(elem) <apagar levar ligar puxar pegue> and is-pt-fuzzy-match($0.Str, 'pegar', 2) }> | 'conseguir' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'conseguir', 2) }> }
    token of-preposition:sym<Portuguese> { :i 'em' | 'de' | 'do' | 'dos' | ([\w]+) <?{ $0.Str !(elem) <todos no com dados de do da das ou o os as> and is-pt-fuzzy-match($0.Str, 'dos', 1) }> | 'da' | 'das' | ([\w]+) <?{ $0.Str !(elem) <todas na caso dado dados data datas max de do dos da tabs os a as> and is-pt-fuzzy-match($0.Str, 'das', 1) }> }
    token off-adverb:sym<Portuguese> { :i 'sem' | ([\w]+) <?{ $0.Str !(elem) <um e são em ser com meu de sub quem> and is-pt-fuzzy-match($0.Str, 'sem', 1) }> }
    token on-preposition:sym<Portuguese> { :i  <at-preposition> | 'por'  }
    token one-pronoun:sym<Portuguese> { :i  'alguém' | 'uma' \h+ 'pessoa'  }
    token ones-pronoun:sym<Portuguese> { :i  'algumas' \h+ 'pessoas'  }
    token or-conjunction:sym<Portuguese> { :i 'ou' }
    token our-determiner:sym<Portuguese> { :i 'nosso' | ([\w]+) <?{ $0.Str !(elem) <passo isso> and is-pt-fuzzy-match($0.Str, 'nosso', 2) }> }
    token out-adverb:sym<Portuguese> { :i 'fora' | ([\w]+) <?{ $0.Str !(elem) <para forma hora> and is-pt-fuzzy-match($0.Str, 'fora', 2) }> }
    token outlier-adjective:sym<Portuguese> { :i <outlier-noun> }
    token outlier-noun:sym<Portuguese> { :i 'extraordinário' | ([\w]+) <?{ $0.Str ne 'extraordinários' and is-pt-fuzzy-match($0.Str, 'extraordinário', 2) }> }
    token outliers-noun:sym<Portuguese> { :i 'extraordinários' | ([\w]+) <?{ $0.Str ne 'extraordinário' and is-pt-fuzzy-match($0.Str, 'extraordinários', 2) }> }
    token over-preposition:sym<Portuguese> { :i  'além' \h+ 'de' | 'acima' \h+ 'de' | 'mais' \h+ 'que'  }
    token parameter-noun:sym<Portuguese> { :i 'parâmetro' | ([\w]+) <?{ $0.Str ne 'parâmetros' and is-pt-fuzzy-match($0.Str, 'parâmetro', 2) }> }
    token parameters-noun:sym<Portuguese> { :i 'parâmetros' | ([\w]+) <?{ $0.Str ne 'parâmetro' and is-pt-fuzzy-match($0.Str, 'parâmetros', 2) }> }
    token part-noun:sym<Portuguese> { :i 'parte' | ([\w]+) <?{ $0.Str ne 'para' and is-pt-fuzzy-match($0.Str, 'parte', 2) }> }
    token pattern-noun:sym<Portuguese> { :i 'padrão' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'padrão', 2) }> }
    token per-preposition:sym<Portuguese> { :i 'para' | ([\w]+) <?{ $0.Str !(elem) <cada fora data carga parte hora> and is-pt-fuzzy-match($0.Str, 'para', 2) }> }
    token pipeline-adjective:sym<Portuguese> { :i <tape-adjective> | <conveyor-adjective> | <channel-adjective> }
    token pipeline-noun:sym<Portuguese> { :i  <tape-noun> | <conveyor-noun> | <channel-noun> | 'streaming'  }
    token plot-noun:sym<Portuguese> { :i 'gráfico' | ([\w]+) <?{ $0.Str ne 'gráficos' and is-pt-fuzzy-match($0.Str, 'gráfico', 2) }> }
    token plots-noun:sym<Portuguese> { :i 'gráficos' | ([\w]+) <?{ $0.Str ne 'gráfico' and is-pt-fuzzy-match($0.Str, 'gráficos', 2) }> }
    token position-noun:sym<Portuguese> { :i 'posição' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'posição', 2) }> }
    token pull-noun:sym<Portuguese> { :i 'puxado' | ([\w]+) <?{ $0.Str !(elem) <puxados puxada puxadas puxar usado pesado> and is-pt-fuzzy-match($0.Str, 'puxado', 2) }> | 'puxados' | ([\w]+) <?{ $0.Str !(elem) <puxado puxada puxadas usados pesados> and is-pt-fuzzy-match($0.Str, 'puxados', 2) }> | 'puxada' | ([\w]+) <?{ $0.Str !(elem) <puxado puxados puxadas puxar usada pesada> and is-pt-fuzzy-match($0.Str, 'puxada', 2) }> | 'puxadas' | ([\w]+) <?{ $0.Str !(elem) <puxado puxados puxada usadas pesadas> and is-pt-fuzzy-match($0.Str, 'puxadas', 2) }> }
    token pull-verb:sym<Portuguese> { :i 'puxar' | ([\w]+) <?{ $0.Str !(elem) <pegar puxado puxada usar> and is-pt-fuzzy-match($0.Str, 'puxar', 2) }> }
    token random-adjective:sym<Portuguese> { :i  'aleatório' | 'aleatórios' | 'aleatória' | 'aleatórias' | 'ao' \h+ 'acaso'  }
    token records:sym<Portuguese> { :i 'registos' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'registos', 2) }> | 'gravações' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'gravações', 2) }> }
    token reduce-verb:sym<Portuguese> { :i 'reduzir' | ([\w]+) <?{ $0.Str ne 'resumir' and is-pt-fuzzy-match($0.Str, 'reduzir', 2) }> }
    token remove-verb:sym<Portuguese> { :i 'remover' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'remover', 2) }> | 'eliminar' | ([\w]+) <?{ $0.Str ne 'limiar' and is-pt-fuzzy-match($0.Str, 'eliminar', 2) }> | 'apagar' | ([\w]+) <?{ $0.Str ne 'pegar' and is-pt-fuzzy-match($0.Str, 'apagar', 2) }> }
    token replace-verb:sym<Portuguese> { :i 'substituir' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'substituir', 2) }> | 'trocar' | ([\w]+) <?{ $0.Str !(elem) <rodar tomar> and is-pt-fuzzy-match($0.Str, 'trocar', 2) }> }
    token represent-directive:sym<Portuguese> { :i 'represente' | ([\w]+) <?{ $0.Str ne 'representar' and is-pt-fuzzy-match($0.Str, 'represente', 2) }> }
    token represent-verb:sym<Portuguese> { :i 'representar' | ([\w]+) <?{ $0.Str ne 'represente' and is-pt-fuzzy-match($0.Str, 'representar', 2) }> }
    token rest-noun:sym<Portuguese> { :i 'resto' | ([\w]+) <?{ $0.Str !(elem) <isto texto resumo este esta peso> and is-pt-fuzzy-match($0.Str, 'resto', 2) }> | 'remanescente' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'remanescente', 2) }> }
    token result-noun:sym<Portuguese> { :i 'resultado' | ([\w]+) <?{ $0.Str ne 'resultados' and is-pt-fuzzy-match($0.Str, 'resultado', 2) }> }
    token results:sym<Portuguese> { :i <results-noun> }
    token results-noun:sym<Portuguese> { :i 'resultados' | ([\w]+) <?{ $0.Str ne 'resultado' and is-pt-fuzzy-match($0.Str, 'resultados', 2) }> }
    token reverse-adjective:sym<Portuguese> { :i 'reverso' | ([\w]+) <?{ $0.Str !(elem) <reversos reversa reversas> and is-pt-fuzzy-match($0.Str, 'reverso', 2) }> | 'reversos' | ([\w]+) <?{ $0.Str !(elem) <reverso reversa reversas> and is-pt-fuzzy-match($0.Str, 'reversos', 2) }> | 'reversa' | ([\w]+) <?{ $0.Str !(elem) <reverso reversos reversas> and is-pt-fuzzy-match($0.Str, 'reversa', 2) }> | 'reversas' | ([\w]+) <?{ $0.Str !(elem) <reverso reversos reversa> and is-pt-fuzzy-match($0.Str, 'reversas', 2) }> }
    token right-adjective:sym<Portuguese> { :i 'direita' | ([\w]+) <?{ $0.Str !(elem) <direito direto> and is-pt-fuzzy-match($0.Str, 'direita', 2) }> }
    token right-noun:sym<Portuguese> { :i 'direito' | ([\w]+) <?{ $0.Str !(elem) <direita direto> and is-pt-fuzzy-match($0.Str, 'direito', 2) }> | 'direita' | ([\w]+) <?{ $0.Str !(elem) <direito direto> and is-pt-fuzzy-match($0.Str, 'direita', 2) }> }
    token row-noun:sym<Portuguese> { :i 'linha' | ([\w]+) <?{ $0.Str !(elem) <lista linhas> and is-pt-fuzzy-match($0.Str, 'linha', 2) }> }
    token rows:sym<Portuguese> { :i <rows-noun> }
    token rows-noun:sym<Portuguese> { :i 'linhas' | ([\w]+) <?{ $0.Str ne 'linha' and is-pt-fuzzy-match($0.Str, 'linhas', 2) }> }
    token run-verb:sym<Portuguese> { :i 'executar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'executar', 2) }> | 'rodar' | ([\w]+) <?{ $0.Str !(elem) <todas trocar tomar> and is-pt-fuzzy-match($0.Str, 'rodar', 2) }> }
    token running-verb:sym<Portuguese> { :i  'em' \h+ 'execução' | 'rodando'  }
    token separate-verb:sym<Portuguese> { :i 'separar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'separar', 2) }> }
    token series-noun:sym<Portuguese> { :i 'série' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'série', 2) }> }
    token set-directive:sym<Portuguese> { :i 'defina' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'defina', 2) }> | 'attribua' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'attribua', 2) }> }
    token set-noun:sym<Portuguese> { :i 'conjunto' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'conjunto', 2) }> }
    token setup-adjective:sym<Portuguese> { :i 'configurado' | ([\w]+) <?{ $0.Str !(elem) <configurar configuração configurados configurada configuradas> and is-pt-fuzzy-match($0.Str, 'configurado', 2) }> | 'configurados' | ([\w]+) <?{ $0.Str !(elem) <configurado configurada configuradas> and is-pt-fuzzy-match($0.Str, 'configurados', 2) }> | 'configurada' | ([\w]+) <?{ $0.Str !(elem) <configurar configurado configurados configuradas> and is-pt-fuzzy-match($0.Str, 'configurada', 2) }> | 'configuradas' | ([\w]+) <?{ $0.Str !(elem) <configurado configurados configurada> and is-pt-fuzzy-match($0.Str, 'configuradas', 2) }> | 'instalado' | ([\w]+) <?{ $0.Str !(elem) <instalados instalada instaladas instalar> and is-pt-fuzzy-match($0.Str, 'instalado', 2) }> | 'instalados' | ([\w]+) <?{ $0.Str !(elem) <instalado instalada instaladas> and is-pt-fuzzy-match($0.Str, 'instalados', 2) }> | 'instalada' | ([\w]+) <?{ $0.Str !(elem) <instalado instalados instaladas instalar> and is-pt-fuzzy-match($0.Str, 'instalada', 2) }> | 'instaladas' | ([\w]+) <?{ $0.Str !(elem) <instalado instalados instalada> and is-pt-fuzzy-match($0.Str, 'instaladas', 2) }> }
    token setup-noun:sym<Portuguese> { :i 'configurar' | ([\w]+) <?{ $0.Str !(elem) <configurado configurada> and is-pt-fuzzy-match($0.Str, 'configurar', 2) }> | 'instalar' | ([\w]+) <?{ $0.Str !(elem) <instalado instalada> and is-pt-fuzzy-match($0.Str, 'instalar', 2) }> }
    token shape-noun:sym<Portuguese> { :i 'forma' | ([\w]+) <?{ $0.Str !(elem) <fora hora> and is-pt-fuzzy-match($0.Str, 'forma', 2) }> }
    token show-verb:sym<Portuguese> { :i 'mostrar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'mostrar', 2) }> }
    token simple:sym<Portuguese> { :i 'simples' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'simples', 2) }> | 'direto' | ([\w]+) <?{ $0.Str !(elem) <direita direito> and is-pt-fuzzy-match($0.Str, 'direto', 2) }> }
    token simply-adverb:sym<Portuguese> { :i 'apenas' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'apenas', 2) }> | 'somente' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'somente', 2) }> }
    token simulate:sym<Portuguese> { :i 'simular' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'simular', 2) }> }
    token simulate-directive:sym<Portuguese> { :i <simulate> }
    token simulation:sym<Portuguese> { :i 'simulação' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'simulação', 2) }> }
    token single-adjective:sym<Portuguese> { :i 'único' | ([\w]+) <?{ $0.Str ne 'única' and is-pt-fuzzy-match($0.Str, 'único', 2) }> | 'única' | ([\w]+) <?{ $0.Str ne 'único' and is-pt-fuzzy-match($0.Str, 'única', 2) }> | 'um' | 'uma' | ([\w]+) <?{ $0.Str !(elem) <um em na via max da a usar> and is-pt-fuzzy-match($0.Str, 'uma', 1) }> }
    token site-noun:sym<Portuguese> { :i 'localização' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'localização', 2) }> | 'posição' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'posição', 2) }> }
    token smallest:sym<Portuguese> { :i <smallest-adjective> }
    token smallest-adjective:sym<Portuguese> { :i 'menor' | ([\w]+) <?{ $0.Str ne 'maior' and is-pt-fuzzy-match($0.Str, 'menor', 2) }> }
    token some-determiner:sym<Portuguese> { :i 'algum' | ([\w]+) <?{ $0.Str !(elem) <alguns alguma algumas> and is-pt-fuzzy-match($0.Str, 'algum', 2) }> | 'alguns' | ([\w]+) <?{ $0.Str !(elem) <algum alguma algumas> and is-pt-fuzzy-match($0.Str, 'alguns', 2) }> | 'alguma' | ([\w]+) <?{ $0.Str !(elem) <algum alguns algumas> and is-pt-fuzzy-match($0.Str, 'alguma', 2) }> | 'algumas' | ([\w]+) <?{ $0.Str !(elem) <algum alguns alguma> and is-pt-fuzzy-match($0.Str, 'algumas', 2) }> }
    token sparse-adjective:sym<Portuguese> { :i 'disperso' | ([\w]+) <?{ $0.Str !(elem) <dispersos dispersa dispersas> and is-pt-fuzzy-match($0.Str, 'disperso', 2) }> | 'dispersos' | ([\w]+) <?{ $0.Str !(elem) <disperso dispersa dispersas> and is-pt-fuzzy-match($0.Str, 'dispersos', 2) }> | 'dispersa' | ([\w]+) <?{ $0.Str !(elem) <disperso dispersos dispersas> and is-pt-fuzzy-match($0.Str, 'dispersa', 2) }> | 'dispersas' | ([\w]+) <?{ $0.Str !(elem) <disperso dispersos dispersa> and is-pt-fuzzy-match($0.Str, 'dispersas', 2) }> | 'espaçado' | ([\w]+) <?{ $0.Str !(elem) <espaçados espaçada espaçadas espalhado> and is-pt-fuzzy-match($0.Str, 'espaçado', 2) }> | 'espaçados' | ([\w]+) <?{ $0.Str !(elem) <espaçado espaçada espaçadas espalhados> and is-pt-fuzzy-match($0.Str, 'espaçados', 2) }> | 'espaçada' | ([\w]+) <?{ $0.Str !(elem) <espaçado espaçados espaçadas espalhada> and is-pt-fuzzy-match($0.Str, 'espaçada', 2) }> | 'espaçadas' | ([\w]+) <?{ $0.Str !(elem) <espaçado espaçados espaçada espalhadas> and is-pt-fuzzy-match($0.Str, 'espaçadas', 2) }> | 'espalhado' | ([\w]+) <?{ $0.Str !(elem) <espaçado espalhados espalhada espalhadas espalhar> and is-pt-fuzzy-match($0.Str, 'espalhado', 2) }> | 'espalhados' | ([\w]+) <?{ $0.Str !(elem) <espaçados espalhado espalhada espalhadas> and is-pt-fuzzy-match($0.Str, 'espalhados', 2) }> | 'espalhada' | ([\w]+) <?{ $0.Str !(elem) <espaçada espalhado espalhados espalhadas espalhar> and is-pt-fuzzy-match($0.Str, 'espalhada', 2) }> | 'espalhadas' | ([\w]+) <?{ $0.Str !(elem) <espaçadas espalhado espalhados espalhada> and is-pt-fuzzy-match($0.Str, 'espalhadas', 2) }> }
    token specific-adjective:sym<Portuguese> { :i 'específico' | ([\w]+) <?{ $0.Str !(elem) <específicos específica específicas> and is-pt-fuzzy-match($0.Str, 'específico', 2) }> | 'específicos' | ([\w]+) <?{ $0.Str !(elem) <específico específica específicas> and is-pt-fuzzy-match($0.Str, 'específicos', 2) }> | 'específica' | ([\w]+) <?{ $0.Str !(elem) <específico específicos específicas> and is-pt-fuzzy-match($0.Str, 'específica', 2) }> | 'específicas' | ([\w]+) <?{ $0.Str !(elem) <específico específicos específica> and is-pt-fuzzy-match($0.Str, 'específicas', 2) }> }
    token split-verb:sym<Portuguese> { :i 'tabs' | ([\w]+) <?{ $0.Str !(elem) <das as> and is-pt-fuzzy-match($0.Str, 'tabs', 2) }> }
    token spot-verb:sym<Portuguese> { :i 'encontrar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'encontrar', 2) }> }
    token spread-verb:sym<Portuguese> { :i 'espalhar' | ([\w]+) <?{ $0.Str !(elem) <espalhado espalhada> and is-pt-fuzzy-match($0.Str, 'espalhar', 2) }> }
    token statistical:sym<Portuguese> { :i <statistical-adjective> }
    token statistical-adjective:sym<Portuguese> { :i 'estatisticamente' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'estatisticamente', 2) }> }
    token statistics-noun:sym<Portuguese> { :i <stats-noun> }
    token stats-noun:sym<Portuguese> { :i 'estatísticas' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'estatísticas', 2) }> }
    token step-noun:sym<Portuguese> { :i 'etapa' | ([\w]+) <?{ $0.Str ne 'etapas' and is-pt-fuzzy-match($0.Str, 'etapa', 2) }> | 'passo' | ([\w]+) <?{ $0.Str !(elem) <caso casos nosso passos isso peso pesos> and is-pt-fuzzy-match($0.Str, 'passo', 2) }> }
    token steps-noun:sym<Portuguese> { :i 'etapas' | ([\w]+) <?{ $0.Str ne 'etapa' and is-pt-fuzzy-match($0.Str, 'etapas', 2) }> | 'passos' | ([\w]+) <?{ $0.Str !(elem) <casos passo pesos> and is-pt-fuzzy-match($0.Str, 'passos', 2) }> }
    token string-noun:sym<Portuguese> { :i 'texto' | ([\w]+) <?{ $0.Str !(elem) <resto textos tempo> and is-pt-fuzzy-match($0.Str, 'texto', 2) }> }
    token sub-prefix:sym<Portuguese> { :i 'sub' | ([\w]+) <?{ $0.Str !(elem) <um são ser que sem ou> and is-pt-fuzzy-match($0.Str, 'sub', 1) }> }
    token summaries:sym<Portuguese> { :i <summaries-noun> }
    token summaries-noun:sym<Portuguese> { :i 'resumos' | ([\w]+) <?{ $0.Str !(elem) <resumir resumo> and is-pt-fuzzy-match($0.Str, 'resumos', 2) }> | 'sumários' | ([\w]+) <?{ $0.Str ne 'sumário' and is-pt-fuzzy-match($0.Str, 'sumários', 2) }> }
    token summarize-directive:sym<Portuguese> { :i 'resumir' | ([\w]+) <?{ $0.Str !(elem) <reduzir resumos resumo> and is-pt-fuzzy-match($0.Str, 'resumir', 2) }> }
    token summary:sym<Portuguese> { :i <summary-noun> }
    token summary-noun:sym<Portuguese> { :i 'resumo' | ([\w]+) <?{ $0.Str !(elem) <resto resumos resumir> and is-pt-fuzzy-match($0.Str, 'resumo', 2) }> | 'sumário' | ([\w]+) <?{ $0.Str !(elem) <usuário sumários> and is-pt-fuzzy-match($0.Str, 'sumário', 2) }> }
    token system-noun:sym<Portuguese> { :i 'sistema' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'sistema', 2) }> }
    token table-noun:sym<Portuguese> { :i 'tabela' | ([\w]+) <?{ $0.Str !(elem) <cabeça tabelas tabular> and is-pt-fuzzy-match($0.Str, 'tabela', 2) }> }
    token tables-noun:sym<Portuguese> { :i 'tabelas' | ([\w]+) <?{ $0.Str !(elem) <tabela tabular> and is-pt-fuzzy-match($0.Str, 'tabelas', 2) }> }
    token tabular-adjective:sym<Portuguese> { :i 'tabular' | ([\w]+) <?{ $0.Str !(elem) <tabela tabelas> and is-pt-fuzzy-match($0.Str, 'tabular', 2) }> }
    token take-verb:sym<Portuguese> { :i 'obter' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'obter', 2) }> | 'tomar' | ([\w]+) <?{ $0.Str !(elem) <todas trocar rodar> and is-pt-fuzzy-match($0.Str, 'tomar', 2) }> | 'pegue' | ([\w]+) <?{ $0.Str ne 'pegar' and is-pt-fuzzy-match($0.Str, 'pegue', 2) }> | 'levar' | ([\w]+) <?{ $0.Str !(elem) <pegar ligar> and is-pt-fuzzy-match($0.Str, 'levar', 2) }> }
    token tape-adjective:sym<Portuguese> { :i 'cassetes' | ([\w]+) <?{ $0.Str ne 'cassete' and is-pt-fuzzy-match($0.Str, 'cassetes', 2) }> | 'cassete' | ([\w]+) <?{ $0.Str ne 'cassetes' and is-pt-fuzzy-match($0.Str, 'cassete', 2) }> | 'fitas' | ([\w]+) <?{ $0.Str !(elem) <datas estas> and is-pt-fuzzy-match($0.Str, 'fitas', 2) }> }
    token tape-noun:sym<Portuguese> { :i 'cassete' | ([\w]+) <?{ $0.Str ne 'cassetes' and is-pt-fuzzy-match($0.Str, 'cassete', 2) }> }
    token target-noun:sym<Portuguese> { :i 'alvo' | ([\w]+) <?{ $0.Str !(elem) <alto alta> and is-pt-fuzzy-match($0.Str, 'alvo', 2) }> | 'finalidade' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'finalidade', 2) }> }
    token text-adjective:sym<Portuguese> { :i <text-noun> | <textual-adjective> }
    token text-noun:sym<Portuguese> { :i 'texto' | ([\w]+) <?{ $0.Str !(elem) <resto textos tempo> and is-pt-fuzzy-match($0.Str, 'texto', 2) }> }
    token texts-noun:sym<Portuguese> { :i 'textos' | ([\w]+) <?{ $0.Str ne 'texto' and is-pt-fuzzy-match($0.Str, 'textos', 2) }> }
    token textual-adjective:sym<Portuguese> { :i 'textual' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'textual', 2) }> }
    token that-pronoun:sym<Portuguese> { :i 'esse' | ([\w]+) <?{ $0.Str !(elem) <esses essa essas eles este estes esta isso> and is-pt-fuzzy-match($0.Str, 'esse', 2) }> | 'esses' | ([\w]+) <?{ $0.Str !(elem) <esse essa essas eles este estes estas> and is-pt-fuzzy-match($0.Str, 'esses', 2) }> | 'essa' | ([\w]+) <?{ $0.Str !(elem) <estar esse esses essas este esta estas isso> and is-pt-fuzzy-match($0.Str, 'essa', 2) }> | 'essas' | ([\w]+) <?{ $0.Str !(elem) <estar esse esses essa estes esta estas> and is-pt-fuzzy-match($0.Str, 'essas', 2) }> | 'que' | ([\w]+) <?{ $0.Str !(elem) <um e meu de ou sub quem qual> and is-pt-fuzzy-match($0.Str, 'que', 1) }> }
    token the-determiner:sym<Portuguese> { :i 'o' | 'os' | 'a' | 'as' }
    token them-pronoun:sym<Portuguese> { :i 'eles' | ([\w]+) <?{ $0.Str !(elem) <esse esses estes vezes> and is-pt-fuzzy-match($0.Str, 'eles', 2) }> }
    token this-pronoun:sym<Portuguese> { :i 'esse' | ([\w]+) <?{ $0.Str !(elem) <esses essa essas eles este estes esta isso> and is-pt-fuzzy-match($0.Str, 'esse', 2) }> | 'esses' | ([\w]+) <?{ $0.Str !(elem) <esse essa essas eles este estes estas> and is-pt-fuzzy-match($0.Str, 'esses', 2) }> | 'essa' | ([\w]+) <?{ $0.Str !(elem) <estar esse esses essas este esta estas isso> and is-pt-fuzzy-match($0.Str, 'essa', 2) }> | 'essas' | ([\w]+) <?{ $0.Str !(elem) <estar esse esses essa estes esta estas> and is-pt-fuzzy-match($0.Str, 'essas', 2) }> | 'este' | ([\w]+) <?{ $0.Str !(elem) <estar isto resto esse esses essa estes esta estas entre> and is-pt-fuzzy-match($0.Str, 'este', 2) }> | 'estes' | ([\w]+) <?{ $0.Str !(elem) <estar esse esses essas eles este esta estas> and is-pt-fuzzy-match($0.Str, 'estes', 2) }> | 'esta' | ([\w]+) <?{ $0.Str !(elem) <meta estar data alta isto lista resto esse essa essas este estes estas> and is-pt-fuzzy-match($0.Str, 'esta', 2) }> | 'estas' | ([\w]+) <?{ $0.Str !(elem) <estar datas fitas esses essa essas este estes esta> and is-pt-fuzzy-match($0.Str, 'estas', 2) }> | 'isso' | ([\w]+) <?{ $0.Str !(elem) <são caso isto nosso passo esse essa peso> and is-pt-fuzzy-match($0.Str, 'isso', 2) }> | 'isto' | ([\w]+) <?{ $0.Str !(elem) <são alto lista resto este esta isso> and is-pt-fuzzy-match($0.Str, 'isto', 2) }> }
    token threshold-adjective:sym<Portuguese> { :i 'limite' | ([\w]+) <?{ $0.Str !(elem) <limites limiar> and is-pt-fuzzy-match($0.Str, 'limite', 2) }> | 'limites' | ([\w]+) <?{ $0.Str !(elem) <limite limiares> and is-pt-fuzzy-match($0.Str, 'limites', 2) }> | 'limiar' | ([\w]+) <?{ $0.Str !(elem) <limpar eliminar ligar limite limiares> and is-pt-fuzzy-match($0.Str, 'limiar', 2) }> | 'limiares' | ([\w]+) <?{ $0.Str !(elem) <limites limiar> and is-pt-fuzzy-match($0.Str, 'limiares', 2) }> }
    token threshold-noun:sym<Portuguese> { :i 'limite' | ([\w]+) <?{ $0.Str !(elem) <limites limiar> and is-pt-fuzzy-match($0.Str, 'limite', 2) }> | 'limiar' | ([\w]+) <?{ $0.Str !(elem) <limpar eliminar ligar limite limiares> and is-pt-fuzzy-match($0.Str, 'limiar', 2) }> }
    token time-adjective:sym<Portuguese> { :i 'hora' | ([\w]+) <?{ $0.Str !(elem) <fora para forma> and is-pt-fuzzy-match($0.Str, 'hora', 2) }> }
    token time-noun:sym<Portuguese> { :i 'horário' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'horário', 2) }> | 'hora' | ([\w]+) <?{ $0.Str !(elem) <fora para forma> and is-pt-fuzzy-match($0.Str, 'hora', 2) }> | 'tempo' | ([\w]+) <?{ $0.Str !(elem) <texto topo tipo> and is-pt-fuzzy-match($0.Str, 'tempo', 2) }> }
    token timeline-noun:sym<Portuguese> { :i  'linha' \h+ 'do' \h+ 'tempo' | 'timeline'  }
    token times-noun:sym<Portuguese> { :i 'vezes' | ([\w]+) <?{ $0.Str ne 'eles' and is-pt-fuzzy-match($0.Str, 'vezes', 2) }> }
    token to-preposition:sym<Portuguese> { :i 'para' | ([\w]+) <?{ $0.Str !(elem) <cada fora data carga parte hora> and is-pt-fuzzy-match($0.Str, 'para', 2) }> | 'em' | 'o' | 'os' | 'a' | 'as' }
    token top-adjective:sym<Portuguese> { :i 'topo' | ([\w]+) <?{ $0.Str !(elem) <todos como tempo tipo tipos> and is-pt-fuzzy-match($0.Str, 'topo', 2) }> }
    token top-noun:sym<Portuguese> { :i 'topo' | ([\w]+) <?{ $0.Str !(elem) <todos como tempo tipo tipos> and is-pt-fuzzy-match($0.Str, 'topo', 2) }> }
    token transform-verb:sym<Portuguese> { :i 'transformar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'transformar', 2) }> }
    token translation-noun:sym<Portuguese> { :i 'tradução' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'tradução', 2) }> }
    token type-noun:sym<Portuguese> { :i 'tipo' | ([\w]+) <?{ $0.Str !(elem) <eixo tempo topo tipos> and is-pt-fuzzy-match($0.Str, 'tipo', 2) }> }
    token types-noun:sym<Portuguese> { :i 'tipos' | ([\w]+) <?{ $0.Str !(elem) <todos eixos topo tipo> and is-pt-fuzzy-match($0.Str, 'tipos', 2) }> }
    token up-adverb:sym<Portuguese> { :i 'acima' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'acima', 2) }> }
    token use-verb:sym<Portuguese> { :i 'usar' | ([\w]+) <?{ $0.Str !(elem) <uma ser estar puxar usado usada> and is-pt-fuzzy-match($0.Str, 'usar', 2) }> | 'utilizar' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'utilizar', 2) }> }
    token used-verb:sym<Portuguese> { :i 'usado' | ([\w]+) <?{ $0.Str !(elem) <dado puxado usar usados usada usadas usando pesado> and is-pt-fuzzy-match($0.Str, 'usado', 2) }> | 'usados' | ([\w]+) <?{ $0.Str !(elem) <dados puxados usado usada usadas usando pesados> and is-pt-fuzzy-match($0.Str, 'usados', 2) }> | 'usada' | ([\w]+) <?{ $0.Str !(elem) <cada puxada usar usado usados usadas usando pesada> and is-pt-fuzzy-match($0.Str, 'usada', 2) }> 'usadas' | ([\w]+) <?{ $0.Str !(elem) <puxadas usado usados usada pesadas> and is-pt-fuzzy-match($0.Str, 'usadas', 2) }> }
    token using-preposition:sym<Portuguese> { :i 'usando' | ([\w]+) <?{ $0.Str !(elem) <usado usados usada quando> and is-pt-fuzzy-match($0.Str, 'usando', 2) }> | 'с' | 'com' | ([\w]+) <?{ $0.Str !(elem) <um como em no nome sem do dos ou o os> and is-pt-fuzzy-match($0.Str, 'com', 1) }> }
    token value-noun:sym<Portuguese> { :i 'valor' | ([\w]+) <?{ $0.Str !(elem) <maior valores> and is-pt-fuzzy-match($0.Str, 'valor', 2) }> }
    token values-noun:sym<Portuguese> { :i 'valores' | ([\w]+) <?{ $0.Str ne 'valor' and is-pt-fuzzy-match($0.Str, 'valores', 2) }> }
    token variable-noun:sym<Portuguese> { :i 'variável' | ([\w]+) <?{ $0.Str ne 'variáveis' and is-pt-fuzzy-match($0.Str, 'variável', 2) }> }
    token variables-noun:sym<Portuguese> { :i 'variáveis' | ([\w]+) <?{ $0.Str ne 'variável' and is-pt-fuzzy-match($0.Str, 'variáveis', 2) }> }
    token versus-preposition { 'vs.' | 'versus' | 'ср.' | 'comparado' \h+ '[com | a | ao]' }
    token way-noun:sym<Portuguese> { :i 'caminho' | ([\w]+) <?{ $0.Str ne 'tamanho' and is-pt-fuzzy-match($0.Str, 'caminho', 2) }> }
    token weight:sym<Portuguese> { :i <weight-noun> }
    token weight-adjective:sym<Portuguese> { :i 'pesado' | ([\w]+) <?{ $0.Str !(elem) <puxado usado pesados pesada pesadas peso> and is-pt-fuzzy-match($0.Str, 'pesado', 2) }> | 'pesados' | ([\w]+) <?{ $0.Str !(elem) <puxados usados pesado pesada pesadas pesos> and is-pt-fuzzy-match($0.Str, 'pesados', 2) }> | 'pesada' | ([\w]+) <?{ $0.Str !(elem) <puxada usada pesado pesados pesadas> and is-pt-fuzzy-match($0.Str, 'pesada', 2) }> | 'pesadas' | ([\w]+) <?{ $0.Str !(elem) <puxadas usadas pesado pesados pesada> and is-pt-fuzzy-match($0.Str, 'pesadas', 2) }> }
    token weight-noun:sym<Portuguese> { :i 'peso' | ([\w]+) <?{ $0.Str !(elem) <caso resto passo isso pesado pesos> and is-pt-fuzzy-match($0.Str, 'peso', 2) }> }
    token weights:sym<Portuguese> { :i <weights-noun> }
    token weights-noun:sym<Portuguese> { :i 'pesos' | ([\w]+) <?{ $0.Str !(elem) <casos passo passos pesados peso> and is-pt-fuzzy-match($0.Str, 'pesos', 2) }> }
    token what-pronoun:sym<Portuguese> { :i  'o' \h+ 'que' | 'que'  }
    token when-pronoun:sym<Portuguese> { :i 'quando' | ([\w]+) <?{ $0.Str !(elem) <fundo usando> and is-pt-fuzzy-match($0.Str, 'quando', 2) }> }
    token which-determiner:sym<Portuguese> { :i 'quem' | ([\w]+) <?{ $0.Str !(elem) <um em que sem qual> and is-pt-fuzzy-match($0.Str, 'quem', 2) }> | 'qual' | ([\w]+) <?{ $0.Str !(elem) <atual que quem quais> and is-pt-fuzzy-match($0.Str, 'qual', 2) }> | 'quais' | ([\w]+) <?{ $0.Str ne 'qual' and is-pt-fuzzy-match($0.Str, 'quais', 2) }> }
    token with-preposition:sym<Portuguese> { :i 'с' | 'com' | ([\w]+) <?{ $0.Str !(elem) <um como em no nome sem do dos ou o os> and is-pt-fuzzy-match($0.Str, 'com', 1) }> | 'no' }
    token within-preposition:sym<Portuguese> { :i 'entre' | ([\w]+) <?{ $0.Str !(elem) <este dentro> and is-pt-fuzzy-match($0.Str, 'entre', 2) }> | 'dentro' | ([\w]+) <?{ $0.Str ne 'entre' and is-pt-fuzzy-match($0.Str, 'dentro', 2) }> }
    token without-preposition:sym<Portuguese> { :i 'sem' | ([\w]+) <?{ $0.Str !(elem) <um e são em ser com meu de sub quem> and is-pt-fuzzy-match($0.Str, 'sem', 1) }> }
    token word-noun:sym<Portuguese> { :i 'palavra' | ([\w]+) <?{ $0.Str ne 'palavras' and is-pt-fuzzy-match($0.Str, 'palavra', 2) }> }
    token words-noun:sym<Portuguese> { :i 'palavras' | ([\w]+) <?{ $0.Str ne 'palavra' and is-pt-fuzzy-match($0.Str, 'palavras', 2) }> }

    # Directives and phrases
    rule data-frame:sym<Portuguese> {  <data-noun>? <table-noun>  }
    rule data-frames:sym<Portuguese> {  <data-noun>? <tables-noun>  }
    rule time-series-data:sym<Portuguese> {  <time-adjective> <series-noun> <data-noun>?  }
    rule number-of:sym<Portuguese> {  [ <number-noun> | <count-verb> | <counts-noun> ] <of-preposition>?  }

}

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
    token ID-noun:sym<Portuguese> { :i  'id' | 'id' }
    token IDENTIFIER-adjective:sym<Portuguese> { :i  'identificador' | 'id' | 'id' | 'id'  }
    token IDENTIFIER-noun:sym<Portuguese> { :i  'identificador' | 'identificador'  }
    token MODULE-noun:sym<Portuguese> { :i  'módulo' | 'módulo'  }
    token TARGET-noun:sym<Portuguese> { :i  'meta' | 'propósito'  }
    token USER-noun:sym<Portuguese> { :i  'usuário' | 'usuário'  }
    token a-determiner:sym<Portuguese> { :i 'um' }
    token add-verb:sym<Portuguese> { :i  'recuperado de' | 'acrescentar'  }
    token adhere-verb:sym<Portuguese> { :i  'guarda' | 'de acordo com'  }
    token adjacency-noun:sym<Portuguese> { :i 'ajudante' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'ajudante', 2) }> }
    token adjacent-adjective:sym<Portuguese> { :i  'ajudante' | 'ajudante'  }
    token algorithm-noun:sym<Portuguese> { :i 'algoritmo' | ([\w]+) <?{ $0.Str ne 'algoritmos' and is-fuzzy-match($0.Str, 'algoritmo', 2) }> }
    token algorithms-noun:sym<Portuguese> { :i 'algoritmos' | ([\w]+) <?{ $0.Str ne 'algoritmo' and is-fuzzy-match($0.Str, 'algoritmos', 2) }> }
    token all-determiner:sym<Portuguese> { :i  'cada' | 'todos'  }
    token and-conjunction:sym<Portuguese> { :i 'и' }
    token annex-verb:sym<Portuguese> { :i 'junte-se a' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'junte-se a', 2) }> }
    token append-verb:sym<Portuguese> { :i 'acrescentar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'acrescentar', 2) }> }
    token apply-verb:sym<Portuguese> { :i 'anexar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'anexar', 2) }> }
    token are-verb:sym<Portuguese> { :i 'são' | ([\w]+) <?{ $0.Str !(elem) <ser do sem não> and is-fuzzy-match($0.Str, 'são', 1) }> }
    token array-noun:sym<Portuguese> { :i 'matriz' | ([\w]+) <?{ $0.Str ne 'matrizes' and is-fuzzy-match($0.Str, 'matriz', 2) }> }
    token arrays-noun:sym<Portuguese> { :i 'arrays' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'arrays', 2) }> }
    token as-preposition:sym<Portuguese> { :i 'como' | ([\w]+) <?{ $0.Str !(elem) <caso nome> and is-fuzzy-match($0.Str, 'como', 2) }> }
    token assign-verb:sym<Portuguese> { :i 'atribuir' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'atribuir', 2) }> }
    token at-preposition:sym<Portuguese> { :i 'então' | ([\w]+) <?{ $0.Str ne 'não' and is-fuzzy-match($0.Str, 'então', 2) }> }
    token automatic:sym<Portuguese> { :i  'automático' | 'automático' | 'automaticamente' | 'automático'   }
    token away-adverb:sym<Portuguese> { :i 'fora' | ([\w]+) <?{ $0.Str !(elem) <para hora> and is-fuzzy-match($0.Str, 'fora', 2) }> }
    token axes-noun:sym<Portuguese> { :i 'eixos' | ([\w]+) <?{ $0.Str !(elem) <eixo tipos> and is-fuzzy-match($0.Str, 'eixos', 2) }> }
    token axis-noun:sym<Portuguese> { :i 'eixo' | ([\w]+) <?{ $0.Str !(elem) <eixos echo tipo> and is-fuzzy-match($0.Str, 'eixo', 2) }> }
    token be-verb:sym<Portuguese> { :i 'ser' | ([\w]+) <?{ $0.Str !(elem) <são de vir sem> and is-fuzzy-match($0.Str, 'ser', 1) }> }
    token both-determiner:sym<Portuguese> { :i  'и'? 'ambos' | 'simultaneamente' | 'juntos'  }
    token bottom-noun:sym<Portuguese> { :i  'fundo' | 'най-ниско'  }
    token broaden-verb:sym<Portuguese> { :i 'expandir' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'expandir', 2) }> }
    token by-preposition:sym<Portuguese> { :i  'a partir de' | 'com' | 'via'  }
    token calculation:sym<Portuguese> { :i 'cálculo' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'cálculo', 2) }> }
    token case-noun:sym<Portuguese> { :i 'caso' | ([\w]+) <?{ $0.Str !(elem) <como casos peso> and is-fuzzy-match($0.Str, 'caso', 2) }> }
    token cases-noun:sym<Portuguese> { :i 'casos' | ([\w]+) <?{ $0.Str !(elem) <caso dados pesos> and is-fuzzy-match($0.Str, 'casos', 2) }> }
    token channel-adjective:sym<Portuguese> { :i  'canal' | 'canal' | 'canal' | 'canal'  }
    token channel-noun:sym<Portuguese> { :i 'canal' | ([\w]+) <?{ $0.Str ne 'casual' and is-fuzzy-match($0.Str, 'canal', 2) }> }
    token chart-noun:sym<Portuguese> { :i  'desenho' | 'gráfico' | 'mapa'  }
    token chart-verb:sym<Portuguese> { :i  'sorteio' | 'sorteio'  }
    token classify-verb:sym<Portuguese> { :i 'classificar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'classificar', 2) }> }
    token clear-verb:sym<Portuguese> { :i  'limpo' | 'claro' | 'limpar'  }
    token cluster:sym<Portuguese> { :i <cluster-noun> }
    token cluster-noun:sym<Portuguese> { :i  'cluster' | 'grupo'  }
    token clusters-noun:sym<Portuguese> { :i  'aglomerados' | 'grupos'  }
    token code-noun:sym<Portuguese> { :i 'código' | ([\w]+) <?{ $0.Str ne 'códigos' and is-fuzzy-match($0.Str, 'código', 2) }> }
    token codes-noun:sym<Portuguese> { :i 'códigos' | ([\w]+) <?{ $0.Str ne 'código' and is-fuzzy-match($0.Str, 'códigos', 2) }> }
    token column-noun:sym<Portuguese> { :i 'coluna' | ([\w]+) <?{ $0.Str ne 'colunas' and is-fuzzy-match($0.Str, 'coluna', 2) }> }
    token columns:sym<Portuguese> { :i <columns-noun> }
    token columns-noun:sym<Portuguese> { :i 'colunas' | ([\w]+) <?{ $0.Str ne 'coluna' and is-fuzzy-match($0.Str, 'colunas', 2) }> }
    token complete-adjective:sym<Portuguese> { :i  'completo' | 'completo'  }
    token compute-directive:sym<Portuguese> { :i  'calcular' | 'encontrar' | 'calcular' | 'calcular'  }
    token config-noun:sym<Portuguese> { :i 'configurar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'configurar', 2) }> }
    token configuration-adjective:sym<Portuguese> { :i  'configuração' | 'configuração' | 'configuração' | 'configuração'  }
    token configuration-noun:sym<Portuguese> { :i 'configuração' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'configuração', 2) }> }
    token connect-verb:sym<Portuguese> { :i  'bind' | 'contacto'  }
    token consider-verb:sym<Portuguese> { :i 'check out' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'check out', 2) }> }
    token context-noun:sym<Portuguese> { :i 'antecedentes' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'antecedentes', 2) }> }
    token contingency-noun:sym<Portuguese> { :i  'contingente' | 'referência cruzada' 'tabling'  }
    token convert-verb:sym<Portuguese> { :i 'converter' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'converter', 2) }> }
    token conveyor-adjective:sym<Portuguese> { :i  'transportador' | 'transportador' | 'transportador' | 'transportador'  }
    token conveyor-noun:sym<Portuguese> { :i 'transportador' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'transportador', 2) }> }
    token count-verb:sym<Portuguese> { :i  'conde' | 'edição' | 'peça' | 'tamanho'  }
    token counts-noun:sym<Portuguese> { :i  'número de' | 'edições' | 'peças' | 'tamanhos'  }
    token create:sym<Portuguese> { :i  'criar' | 'do'  }
    token create-directive:sym<Portuguese> { :i  <create-verb> | 'do'  }
    token create-verb:sym<Portuguese> { :i 'criar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'criar', 2) }> }
    token creation-noun:sym<Portuguese> { :i  'criatura' | 'caso'  }
    token current-adjective:sym<Portuguese> { :i  'actual' | 'actual' | 'actual'  }
    token data-adjective:sym<Portuguese> { :i  'dados' | 'dannova' | 'dannovo' | 'dados'  }
    token data-noun:sym<Portuguese> { :i  'dados' | 'dados' | 'dannova'  }
    token dataset:sym<Portuguese> { :i <dataset-noun> }
    token dataset-noun:sym<Portuguese> { :i  'conjunto de dados' | 'ficha de dados' \h+ 'conjunto' | <array-noun> 'a partir de' <data-noun> | <data-adjective> \h+ <array-noun> }
    token datasets-noun:sym<Portuguese> { :i  'conjuntos de dados' | <arrays-noun> \h+ 'a partir de' \h+ <data-noun> | <data-adjective> \h+ <arrays-noun>  }
    token date-adjective:sym<Portuguese> { :i  'datas' | 'data' | 'data' | 'data'  }
    token date-noun:sym<Portuguese> { :i 'data' | ([\w]+) <?{ $0.Str !(elem) <datas falta para> and is-fuzzy-match($0.Str, 'data', 2) }> }
    token dates-noun:sym<Portuguese> { :i 'datas' | ([\w]+) <?{ $0.Str !(elem) <data dados> and is-fuzzy-match($0.Str, 'datas', 2) }> }
    token datum-noun:sym<Portuguese> { :i 'dados' | ([\w]+) <?{ $0.Str !(elem) <casos datas> and is-fuzzy-match($0.Str, 'dados', 2) }> }
    token default:sym<Portuguese> { :i <default-noun> }
    token default-noun:sym<Portuguese> { :i  'por' 'predefinição' | 'implicado' \h+ 'obter'  }
    token delete-directive:sym<Portuguese> { :i  'eliminar' | 'descarte' | 'remover'  }
    token detect-verb:sym<Portuguese> { :i  'estabelecer' | 'encontrar' | 'detectar'  }
    token diagram:sym<Portuguese> { :i <diagram-synonyms> }
    token diagram-noun:sym<Portuguese> { :i 'gráfico' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'gráfico', 2) }> }
    token diagram-synonyms:sym<Portuguese> { :i  <diagram-noun> | <plot-noun> | <plots-noun> | <graph-noun> | <chart-noun>  }
    token dictionary-noun:sym<Portuguese> { :i 'dicionário' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'dicionário', 2) }> }
    token difference:sym<Portuguese> { :i 'diferença' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'diferença', 2) }> }
    token dimension-noun:sym<Portuguese> { :i 'tamanho' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'tamanho', 2) }> }
    token dimensions-noun:sym<Portuguese> { :i 'dimensões' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'dimensões', 2) }> }
    token directly-adverb:sym<Portuguese> { :i 'directamente' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'directamente', 2) }> }
    token display-directive:sym<Portuguese> { :i  <display-verb> | 'mostrar' | 'echo'  }
    token display-verb:sym<Portuguese> { :i 'mostrar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'mostrar', 2) }> }
    token distance-noun:sym<Portuguese> { :i 'off' | ([\w]+) <?{ $0.Str ne 'ou' and is-fuzzy-match($0.Str, 'off', 1) }> }
    token do-verb:sym<Portuguese> { :i 'faz' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'faz', 1) }> }
    token document-noun:sym<Portuguese> { :i 'documento' | ([\w]+) <?{ $0.Str ne 'documentos' and is-fuzzy-match($0.Str, 'documento', 2) }> }
    token documents-noun:sym<Portuguese> { :i 'documentos' | ([\w]+) <?{ $0.Str ne 'documento' and is-fuzzy-match($0.Str, 'documentos', 2) }> }
    token domain-noun:sym<Portuguese> { :i  'domínio' | 'área'  }
    token drop-verb:sym<Portuguese> { :i  'descarte' | 'esqueça' | 'descarte'  }
    token during-preposition:sym<Portuguese> { :i  'enquanto' | 'via'  }
    token each-determiner:sym<Portuguese> { :i  'cada' | 'cada' | 'cada'  }
    token echo-verb:sym<Portuguese> { :i 'echo' | ([\w]+) <?{ $0.Str ne 'eixo' and is-fuzzy-match($0.Str, 'echo', 2) }> }
    token element:sym<Portuguese> { :i <element-noun> }
    token element-noun:sym<Portuguese> { :i 'elemento' | ([\w]+) <?{ $0.Str ne 'elementos' and is-fuzzy-match($0.Str, 'elemento', 2) }> }
    token elements:sym<Portuguese> { :i <elements-noun> }
    token elements-noun:sym<Portuguese> { :i 'elementos' | ([\w]+) <?{ $0.Str ne 'elemento' and is-fuzzy-match($0.Str, 'elementos', 2) }> }
    token empty-noun:sym<Portuguese> { :i  'em branco' | 'vacuidade'  }
    token empty-verb:sym<Portuguese> { :i  'vazio' | <empty-noun>  }
    token every-determiner:sym<Portuguese> { :i  'cada' | 'cada' | 'cada'  }
    token extend-verb:sym<Portuguese> { :i 'expandir' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'expandir', 2) }> }
    token extract-directive:sym<Portuguese> { :i  'recuperado de' | 'recuperado de' | 'minha'  }
    token filter:sym<Portuguese> { :i <filter-verb> }
    token filter-noun:sym<Portuguese> { :i <filter-verb> }
    token filter-verb:sym<Portuguese> { :i  'filtro' | 'filtro'  }
    token find-verb:sym<Portuguese> { :i  'pesquisa' | 'encontrar'  }
    token first-adjective:sym<Portuguese> { :i  'primeiro' | 'primeiros'  }
    token for-preposition:sym<Portuguese> { :i  'para' | 'com' | 'em'  }
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
    token head-noun:sym<Portuguese> { :i  'testa' | 'dirigido a'  }
    token high-adjective:sym<Portuguese> { :i 'alto' | ([\w]+) <?{ $0.Str ne 'falta' and is-fuzzy-match($0.Str, 'alto', 2) }> }
    token higher-adjective:sym<Portuguese> { :i 'по-висок' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'по-висок', 2) }> }
    token histogram:sym<Portuguese> { :i 'histograma' | ([\w]+) <?{ $0.Str ne 'histogramas' and is-fuzzy-match($0.Str, 'histograma', 2) }> }
    token histograms:sym<Portuguese> { :i 'histogramas' | ([\w]+) <?{ $0.Str ne 'histograma' and is-fuzzy-match($0.Str, 'histogramas', 2) }> }
    token how-adverb:sym<Portuguese> { :i 'como' | ([\w]+) <?{ $0.Str !(elem) <caso nome> and is-fuzzy-match($0.Str, 'como', 2) }> }
    token id-noun:sym<Portuguese> { :i 'vir' | ([\w]+) <?{ $0.Str ne 'ser' and is-fuzzy-match($0.Str, 'vir', 1) }> }
    token identifier-adjective:sym<Portuguese> { :i <IDENTIFIER-adjective> }
    token identifier-noun:sym<Portuguese> { :i <IDENTIFIER-noun> }
    token in-preposition:sym<Portuguese> { :i  'em' | 'no'  }
    token include-verb:sym<Portuguese> { :i  'incluir' | 'incluir'  }
    token ingest-verb:sym<Portuguese> { :i 'leia mais' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'leia mais', 2) }> }
    token interpreter-noun:sym<Portuguese> { :i  'intérprete' | 'tradutora'  }
    token interpreting-adjective:sym<Portuguese> { :i  'intérprete' | 'interpretando'  }
    token into-preposition:sym<Portuguese> { :i  'в' | 'em'  }
    token is-verb:sym<Portuguese> { :i 'е' }
    token it-pronoun:sym<Portuguese> { :i  'isto' | 'que'  }
    token iterations:sym<Portuguese> { :i 'iterações' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'iterações', 2) }> }
    token join-verb:sym<Portuguese> { :i 'composto' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'composto', 2) }> }
    token join-noun:sym<Portuguese> { :i  'ligação' | 'composto'  }
    token language-noun:sym<Portuguese> { :i 'língua' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'língua', 2) }> }
    token largest-adjective:sym<Portuguese> { :i 'най-голям' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'най-голям', 2) }> }
    token last-adjective:sym<Portuguese> { :i  'último' | 'últimos' | 'o mais recente'  }
    token left-adjective:sym<Portuguese> { :i  'esquerda' | 'esquerda'  | 'esquerda' | 'esquerda'  }
    token left-noun:sym<Portuguese> { :i 'esquerda' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'esquerda', 2) }> }
    token link-noun:sym<Portuguese> { :i 'ligação' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'ligação', 2) }> }
    token list-noun:sym<Portuguese> { :i 'lista' | ([\w]+) <?{ $0.Str ne 'linha' and is-fuzzy-match($0.Str, 'lista', 2) }> }
    token load-verb:sym<Portuguese> { :i  'carga' | 'carregar'  }
    token locate-verb:sym<Portuguese> { :i  'encontrar' | 'localizar'  }
    token low-adjective:sym<Portuguese> { :i  'fundo' | 'baixo'  }
    token lower-adjective:sym<Portuguese> { :i  'по-долен' | 'fundo'  }
    token make-noun:sym<Portuguese> { :i 'do' }
    token making-noun:sym<Portuguese> { :i 'fazendo' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'fazendo', 2) }> }
    token manner:sym<Portuguese> { :i  'caminho' | 'à maneira'  }
    token matrices-noun:sym<Portuguese> { :i 'matrizes' | ([\w]+) <?{ $0.Str ne 'matriz' and is-fuzzy-match($0.Str, 'matrizes', 2) }> }
    token matrix-noun:sym<Portuguese> { :i 'matriz' | ([\w]+) <?{ $0.Str ne 'matrizes' and is-fuzzy-match($0.Str, 'matriz', 2) }> }
    token matrixes-noun:sym<Portuguese> { :i 'matrizes' | ([\w]+) <?{ $0.Str ne 'matriz' and is-fuzzy-match($0.Str, 'matrizes', 2) }> }
    token maximum:sym<Portuguese> { :i  'max' | 'máximo' | 'máximo'  }
    token message-noun:sym<Portuguese> { :i 'mensagem' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'mensagem', 2) }> }
    token method-adjective:sym<Portuguese> { :i  'método' | 'método' | 'metodicamente' | 'metódico'  }
    token method-noun:sym<Portuguese> { :i 'método' | ([\w]+) <?{ $0.Str ne 'métodos' and is-fuzzy-match($0.Str, 'método', 2) }> }
    token methods-noun:sym<Portuguese> { :i 'métodos' | ([\w]+) <?{ $0.Str ne 'método' and is-fuzzy-match($0.Str, 'métodos', 2) }> }
    token minimum:sym<Portuguese> { :i  'minha' | 'mínimo' | 'mínimo'  }
    token missing-adjective:sym<Portuguese> { :i 'falta' | ([\w]+) <?{ $0.Str !(elem) <data alto> and is-fuzzy-match($0.Str, 'falta', 2) }> }
    token model-noun:sym<Portuguese> { :i 'modelo' | ([\w]+) <?{ $0.Str ne 'módulo' and is-fuzzy-match($0.Str, 'modelo', 2) }> }
    token module-noun:sym<Portuguese> { :i 'módulo' | ([\w]+) <?{ $0.Str ne 'modelo' and is-fuzzy-match($0.Str, 'módulo', 2) }> }
    token my-determiner:sym<Portuguese> { :i  'o meu' | 'o meu' | 'o meu'  }
    token name-noun:sym<Portuguese> { :i 'nome' | ([\w]+) <?{ $0.Str !(elem) <como nomes> and is-fuzzy-match($0.Str, 'nome', 2) }> }
    token names-noun:sym<Portuguese> { :i 'nomes' | ([\w]+) <?{ $0.Str ne 'nome' and is-fuzzy-match($0.Str, 'nomes', 2) }> }
    token nearest-adjective:sym<Portuguese> { :i  'най-близък' | 'най-близки'  }
    token neighbors-noun:sym<Portuguese> { :i  'vizinhos' | 'vizinhos'  }
    token no-determiner:sym<Portuguese> { :i 'sem' | ([\w]+) <?{ $0.Str !(elem) <um são ser de> and is-fuzzy-match($0.Str, 'sem', 1) }> }
    token non-prefix:sym<Portuguese> { :i 'não' | ([\w]+) <?{ $0.Str !(elem) <são então do> and is-fuzzy-match($0.Str, 'não', 1) }> }
    token number-noun:sym<Portuguese> { :i 'número' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'número', 2) }> }
    token object-noun:sym<Portuguese> { :i 'sítio' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'sítio', 2) }> }
    token obtain-verb:sym<Portuguese> { :i  'recuperado de' | 'minha'  }
    token of-preposition:sym<Portuguese> { :i  'para' | 'em' | 'de'  }
    token off-adverb:sym<Portuguese> { :i 'sem' | ([\w]+) <?{ $0.Str !(elem) <um são ser de> and is-fuzzy-match($0.Str, 'sem', 1) }> }
    token on-preposition:sym<Portuguese> { :i  'em' | 'por'  }
    token one-pronoun:sym<Portuguese> { :i  'um' | 'primeiro' | 'coisa'  }
    token ones-pronoun:sym<Portuguese> { :i  'primeiro' | 'coisas'  }
    token or-conjunction:sym<Portuguese> { :i 'ou' }
    token our-determiner:sym<Portuguese> { :i  'o nosso' | 'o nosso' | 'o nosso'  }
    token out-adverb:sym<Portuguese> { :i  'fora' | 'fora'   }
    token outlier-adjective:sym<Portuguese> { :i  'extraordinário' | 'extraordinário' | 'extraordinário' | 'extraordinário'  }
    token outlier-noun:sym<Portuguese> { :i  'emergência' | 'extraordinário' 'valor'  }
    token outliers-noun:sym<Portuguese> { :i  'extraordinário' | 'extraordinário' 'valores'  }
    token over-preposition:sym<Portuguese> { :i  'via' | 'via' | 'por'  }
    token parameter-noun:sym<Portuguese> { :i 'parâmetro' | ([\w]+) <?{ $0.Str ne 'parâmetros' and is-fuzzy-match($0.Str, 'parâmetro', 2) }> }
    token parameters-noun:sym<Portuguese> { :i 'parâmetros' | ([\w]+) <?{ $0.Str ne 'parâmetro' and is-fuzzy-match($0.Str, 'parâmetros', 2) }> }
    token part-noun:sym<Portuguese> { :i 'parte' | ([\w]+) <?{ $0.Str ne 'para' and is-fuzzy-match($0.Str, 'parte', 2) }> }
    token pattern-noun:sym<Portuguese> { :i 'template' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'template', 2) }> }
    token per-preposition:sym<Portuguese> { :i 'para' | ([\w]+) <?{ $0.Str !(elem) <fora data parte hora> and is-fuzzy-match($0.Str, 'para', 2) }> }
    token pipeline-adjective:sym<Portuguese> { :i  <tape-adjective> | <conveyor-adjective> | <channel-adjective>  }
    token pipeline-noun:sym<Portuguese> { :i  <tape-noun> | <conveyor-noun> | <channel-noun> | 'streaming' \h+ 'linha'  }
    token plot-noun:sym<Portuguese> { :i  'desenho' | 'gráfico'  }
    token plots-noun:sym<Portuguese> { :i  'desenhos' | 'gráficos'  }
    token position-noun:sym<Portuguese> { :i 'posição' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'posição', 2) }> }
    token pull-noun:sym<Portuguese> { :i  'recuperado de' | 'puxar'  }
    token pull-verb:sym<Portuguese> { :i  'recuperado de' | 'puxar para cima'  }
    token random-adjective:sym<Portuguese> { :i 'casual' | ([\w]+) <?{ $0.Str ne 'canal' and is-fuzzy-match($0.Str, 'casual', 2) }> }
    token records:sym<Portuguese> { :i 'registos' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'registos', 2) }> }
    token reduce-verb:sym<Portuguese> { :i 'reduzir' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'reduzir', 2) }> }
    token remove-verb:sym<Portuguese> { :i  'remover' | 'eliminar'   }
    token replace-verb:sym<Portuguese> { :i  'substituir' | 'substituir'  }
    token represent-directive:sym<Portuguese> { :i  <represent-verb> | 'sorteio' | 'reflectir'  }
    token represent-verb:sym<Portuguese> { :i 'apresentado por' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'apresentado por', 2) }> }
    token rest-noun:sym<Portuguese> { :i 'remanescente' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'remanescente', 2) }> }
    token result-noun:sym<Portuguese> { :i 'resultado' | ([\w]+) <?{ $0.Str ne 'resultados' and is-fuzzy-match($0.Str, 'resultado', 2) }> }
    token results:sym<Portuguese> { :i <results-noun> }
    token results-noun:sym<Portuguese> { :i 'resultados' | ([\w]+) <?{ $0.Str ne 'resultado' and is-fuzzy-match($0.Str, 'resultados', 2) }> }
    token reverse-adjective:sym<Portuguese> { :i  'reverso' | 'rodar'  }
    token right-adjective:sym<Portuguese> { :i  'direita' | 'certo' | 'certo' | 'certo'  }
    token right-noun:sym<Portuguese> { :i 'direita' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'direita', 2) }> }
    token row-noun:sym<Portuguese> { :i 'linha' | ([\w]+) <?{ $0.Str ne 'lista' and is-fuzzy-match($0.Str, 'linha', 2) }> }
    token rows:sym<Portuguese> { :i <rows-noun> }
    token rows-noun:sym<Portuguese> { :i 'filas' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'filas', 2) }> }
    token run-verb:sym<Portuguese> { :i  'correr' | 'corre'  }
    token running-verb:sym<Portuguese> { :i 'em funcionamento' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'em funcionamento', 2) }> }
    token separate-verb:sym<Portuguese> { :i 'tabs' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'tabs', 2) }> }
    token series-noun:sym<Portuguese> { :i  'série' | 'linha' | 'uma série de'  }
    token set-directive:sym<Portuguese> { :i 'atribuir' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'atribuir', 2) }> }
    token set-noun:sym<Portuguese> { :i 'muitos' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'muitos', 2) }> }
    token setup-adjective:sym<Portuguese> { :i  'sintonizar' | 'afinação' | 'sintonizar' | 'afinação' | 'inicialização' | 'inicialização' | 'inicialização' | 'inicialização'  }
    token setup-noun:sym<Portuguese> { :i  'atitude' | 'sintonizar' | 'inicialização' | 'preparação' | 'potpourri'  }
    token shape-noun:sym<Portuguese> { :i 'formulário' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'formulário', 2) }> }
    token show-verb:sym<Portuguese> { :i  'mostrar' | 'mostrar'  }
    token simple:sym<Portuguese> { :i  'simples' | 'directo'  }
    token simply-adverb:sym<Portuguese> { :i 'apenas' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'apenas', 2) }> }
    token simulate:sym<Portuguese> { :i 'simular' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'simular', 2) }> }
    token simulate-directive:sym<Portuguese> { :i <simulate> }
    token simulation:sym<Portuguese> { :i 'simulação' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'simulação', 2) }> }
    token single-adjective:sym<Portuguese> { :i  'único' | 'um'  }
    token site-noun:sym<Portuguese> { :i  'localização' | 'posição'  }
    token smallest:sym<Portuguese> { :i  'най-малък' | 'най-малки'  }
    token smallest-adjective:sym<Portuguese> { :i  'най-малък' | 'най-малки'   }
    token some-determiner:sym<Portuguese> { :i  'alguém' | 'cerca de'  }
    token sparse-adjective:sym<Portuguese> { :i 'diluído' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'diluído', 2) }> }
    token specific-adjective:sym<Portuguese> { :i 'específico' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'específico', 2) }> }
    token split-verb:sym<Portuguese> { :i 'tabs' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'tabs', 2) }> }
    token spot-verb:sym<Portuguese> { :i 'encontrar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'encontrar', 2) }> }
    token spread-verb:sym<Portuguese> { :i 'espalhar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'espalhar', 2) }> }
    token statistical:sym<Portuguese> { :i <statistical-adjective> }
    token statistical-adjective:sym<Portuguese> { :i 'estatisticamente' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'estatisticamente', 2) }> }
    token statistics-noun:sym<Portuguese> { :i 'estatísticas' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'estatísticas', 2) }> }
    token stats-noun:sym<Portuguese> { :i 'estatísticas' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'estatísticas', 2) }> }
    token step-noun:sym<Portuguese> { :i  'etapa' | 'passo'  }
    token steps-noun:sym<Portuguese> { :i  'etapas' | 'passos'  }
    token string-noun:sym<Portuguese> { :i 'fundo' | ([\w]+) <?{ $0.Str ne 'quando' and is-fuzzy-match($0.Str, 'fundo', 2) }> }
    token sub-prefix:sym<Portuguese> { :i  'sábado' | 'em'  }
    token summaries:sym<Portuguese> { :i <summaries-noun> }
    token summaries-noun:sym<Portuguese> { :i  'recapitula' | 'sumários'  }
    token summarize-directive:sym<Portuguese> { :i  'recapitulação' | 'resumir'  }
    token summary:sym<Portuguese> { :i <summary-noun> }
    token summary-noun:sym<Portuguese> { :i  'recapitulação' | 'resumo'  }
    token system-noun:sym<Portuguese> { :i 'sistema' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'sistema', 2) }> }
    token table-noun:sym<Portuguese> { :i 'quadro' | ([\w]+) <?{ $0.Str !(elem) <quadros quando> and is-fuzzy-match($0.Str, 'quadro', 2) }> }
    token tables-noun:sym<Portuguese> { :i 'quadros' | ([\w]+) <?{ $0.Str ne 'quadro' and is-fuzzy-match($0.Str, 'quadros', 2) }> }
    token tabular-adjective:sym<Portuguese> { :i 'tabular' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'tabular', 2) }> }
    token take-verb:sym<Portuguese> { :i  'obter' | 'tomar' | 'levar' | 'pegue'  }
    token tape-adjective:sym<Portuguese> { :i  'cassetes' | 'cassete' | 'fitas' | 'fitas'   }
    token tape-noun:sym<Portuguese> { :i 'cassete' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'cassete', 2) }> }
    token target-noun:sym<Portuguese> { :i 'finalidade' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'finalidade', 2) }> }
    token text-adjective:sym<Portuguese> { :i  <text-noun> | <textual-adjective>  }
    token text-noun:sym<Portuguese> { :i 'texto' | ([\w]+) <?{ $0.Str ne 'textos' and is-fuzzy-match($0.Str, 'texto', 2) }> }
    token texts-noun:sym<Portuguese> { :i 'textos' | ([\w]+) <?{ $0.Str ne 'texto' and is-fuzzy-match($0.Str, 'textos', 2) }> }
    token textual-adjective:sym<Portuguese> { :i  'textos' | 'texto' | 'texto' | 'texto'  }
    token that-pronoun:sym<Portuguese> { :i  'esses' | 'que'  }
    token the-determiner:sym<Portuguese> { :i  'o' | 'a'  }
    token them-pronoun:sym<Portuguese> { :i 'eles' | ([\w]+) <?{ $0.Str ne 'vezes' and is-fuzzy-match($0.Str, 'eles', 2) }> }
    token this-pronoun:sym<Portuguese> { :i  'este' | 'isto'  }
    token threshold-adjective:sym<Portuguese> { :i  'limiar' | 'limiar' | 'limiar' | 'limiares'  }
    token threshold-noun:sym<Portuguese> { :i 'limiar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'limiar', 2) }> }
    token time-adjective:sym<Portuguese> { :i  'hora' | 'hora'  }
    token time-noun:sym<Portuguese> { :i 'hora' | ([\w]+) <?{ $0.Str !(elem) <fora para> and is-fuzzy-match($0.Str, 'hora', 2) }> }
    token timeline-noun:sym<Portuguese> { :i  <time-adjective> 'linha'  }
    token times-noun:sym<Portuguese> { :i 'vezes' | ([\w]+) <?{ $0.Str ne 'eles' and is-fuzzy-match($0.Str, 'vezes', 2) }> }
    token to-preposition:sym<Portuguese> { :i  'para' | 'em' | 'para' | 'a'  }
    token top-adjective:sym<Portuguese> { :i  'início' | 'topo' | 'topo' | 'início'  }
    token top-noun:sym<Portuguese> { :i 'início' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'início', 2) }> }
    token transform-verb:sym<Portuguese> { :i 'transformar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'transformar', 2) }> }
    token translation-noun:sym<Portuguese> { :i 'tradução' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'tradução', 2) }> }
    token type-noun:sym<Portuguese> { :i 'tipo' | ([\w]+) <?{ $0.Str !(elem) <eixo tipos> and is-fuzzy-match($0.Str, 'tipo', 2) }> }
    token types-noun:sym<Portuguese> { :i 'tipos' | ([\w]+) <?{ $0.Str !(elem) <eixos tipo> and is-fuzzy-match($0.Str, 'tipos', 2) }> }
    token up-adverb:sym<Portuguese> { :i  'acima' | 'subir'  }
    token use-verb:sym<Portuguese> { :i  'utilização' | 'utilização'  }
    token used-verb:sym<Portuguese> { :i  'recuperado de' | 'usado'  }
    token using-preposition:sym<Portuguese> { :i  'via' | 'с' | 'com'  }
    token value-noun:sym<Portuguese> { :i 'valor' | ([\w]+) <?{ $0.Str ne 'valores' and is-fuzzy-match($0.Str, 'valor', 2) }> }
    token values-noun:sym<Portuguese> { :i 'valores' | ([\w]+) <?{ $0.Str ne 'valor' and is-fuzzy-match($0.Str, 'valores', 2) }> }
    token variable-noun:sym<Portuguese> { :i 'variável' | ([\w]+) <?{ $0.Str ne 'variáveis' and is-fuzzy-match($0.Str, 'variável', 2) }> }
    token variables-noun:sym<Portuguese> { :i 'variáveis' | ([\w]+) <?{ $0.Str ne 'variável' and is-fuzzy-match($0.Str, 'variáveis', 2) }> }
    token versus-preposition:sym<Portuguese> { :i  'vs.' | 'ср.' | 'vs.'  }
    token way-noun:sym<Portuguese> { :i  'estrada' | 'caminho'  }
    token weight:sym<Portuguese> { :i <weight-noun> }
    token weight-noun:sym<Portuguese> { :i 'peso' | ([\w]+) <?{ $0.Str !(elem) <caso pesos> and is-fuzzy-match($0.Str, 'peso', 2) }> }
    token weights:sym<Portuguese> { :i <weights-noun> }
    token weights-noun:sym<Portuguese> { :i 'pesos' | ([\w]+) <?{ $0.Str !(elem) <casos peso> and is-fuzzy-match($0.Str, 'pesos', 2) }> }
    token what-pronoun:sym<Portuguese> { :i  'o que' | 'que'  }
    token when-pronoun:sym<Portuguese> { :i 'quando' | ([\w]+) <?{ $0.Str !(elem) <fundo quadro> and is-fuzzy-match($0.Str, 'quando', 2) }> }
    token which-determiner:sym<Portuguese> { :i  'quem' | 'que'  }
    token with-preposition:sym<Portuguese> { :i  'via' | 'с' | 'com' | 'no' | 'por'  }
    token without-preposition:sym<Portuguese> { :i 'sem' | ([\w]+) <?{ $0.Str !(elem) <um são ser de> and is-fuzzy-match($0.Str, 'sem', 1) }> }
    token word-noun:sym<Portuguese> { :i 'palavra' | ([\w]+) <?{ $0.Str ne 'palavras' and is-fuzzy-match($0.Str, 'palavra', 2) }> }
    token words-noun:sym<Portuguese> { :i 'palavras' | ([\w]+) <?{ $0.Str ne 'palavra' and is-fuzzy-match($0.Str, 'palavras', 2) }> }

    # Directives and phrases
    rule data-frame:sym<Portuguese> {  <data-noun>? <table-noun>  }
    rule data-frames:sym<Portuguese> {  <data-noun>? <tables-noun>  }
    rule time-series-data:sym<Portuguese> {  <time-adjective> <series-noun> <data-noun>?  }
    rule number-of:sym<Portuguese> {  [ <number-noun> | <count-verb> | <counts-noun> ] <of-preposition>?  }

}

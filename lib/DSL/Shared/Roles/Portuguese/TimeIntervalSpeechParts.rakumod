# I am not sure should we have these time interval speech parts separated from the CommonSpeechParts.rakumod.
# One advantage of combining the files is that the finding the nearest neighbors is very direct
# and straightforward with the CLI add-token-fuzzy-matching.

use v6.d;
use DSL::Shared::Utilities::DeterminedWordsMatching;

role DSL::Shared::Roles::Portuguese::TimeIntervalSpeechParts {

  token after-time-spec-word:sym<Portuguese> { :i  'depois' \h* 'de'?  }
  token ago-time-spec-word:sym<Portuguese> { :i 'atrás' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'atrás', 2) }> }
  token am-time-spec-word:sym<Portuguese> { :i 'am' }
  token apr-time-spec-word:sym<Portuguese> { :i 'abr' | ([\w]+) <?{ $0.Str !(elem) <am abril ago mar sab ano> and is-pt-fuzzy-match($0.Str, 'abr', 1) }> }
  token april-time-spec-word:sym<Portuguese> { :i 'abril' | ([\w]+) <?{ $0.Str ne 'abr' and is-pt-fuzzy-match($0.Str, 'abril', 2) }> }
  token aug-time-spec-word:sym<Portuguese> { :i 'ago' | ([\w]+) <?{ $0.Str !(elem) <am abr maio agora ano anos> and is-pt-fuzzy-match($0.Str, 'ago', 1) }> }
  token august-time-spec-word:sym<Portuguese> { :i 'agosto' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'agosto', 2) }> }
  token before-time-spec-word:sym<Portuguese> { :i  'antes' \h* 'de'  }
  token beginning-time-spec-word:sym<Portuguese> { :i 'início' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'início', 2) }> }
  token between-time-spec-word:sym<Portuguese> { :i 'entre' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'entre', 2) }> }
  token century-time-spec-word:sym<Portuguese> { :i 'século' | ([\w]+) <?{ $0.Str ne 'séculos' and is-pt-fuzzy-match($0.Str, 'século', 2) }> }
  token centuries-time-spec-word:sym<Portuguese> { :i 'séculos' | ([\w]+) <?{ $0.Str ne 'século' and is-pt-fuzzy-match($0.Str, 'séculos', 2) }> }
  token christmas-time-spec-word:sym<Portuguese> { :i  ['o' \h*]? 'natal'  }
  token coming-time-spec-word { 'próxima' | 'próximo'};
  token day-time-spec-word:sym<Portuguese> { :i 'dia' | ([\w]+) <?{ $0.Str !(elem) <dias dez fim de> and is-pt-fuzzy-match($0.Str, 'dia', 1) }> }
  token days-time-spec-word:sym<Portuguese> { :i 'dias' | ([\w]+) <?{ $0.Str ne 'dia' and is-pt-fuzzy-match($0.Str, 'dias', 2) }> }
  token dec-time-spec-word:sym<Portuguese> { :i 'dez' | ([\w]+) <?{ $0.Str !(elem) <dia fev de set em> and is-pt-fuzzy-match($0.Str, 'dez', 1) }> }
  token decade-time-spec-word:sym<Portuguese> { :i 'década' | ([\w]+) <?{ $0.Str ne 'décadas' and is-pt-fuzzy-match($0.Str, 'década', 2) }> }
  token decades-time-spec-word:sym<Portuguese> { :i 'décadas' | ([\w]+) <?{ $0.Str ne 'década' and is-pt-fuzzy-match($0.Str, 'décadas', 2) }> }
  token december-time-spec-word:sym<Portuguese> { :i 'dezembro' | ([\w]+) <?{ $0.Str ne 'setembro' and is-pt-fuzzy-match($0.Str, 'dezembro', 2) }> }
  token during-time-spec-word:sym<Portuguese> { :i 'durante' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'durante', 2) }> }
  token end-time-spec-word:sym<Portuguese> { :i 'fim' | ([\w]+) <?{ $0.Str !(elem) <am dia fev um pm em> and is-pt-fuzzy-match($0.Str, 'fim', 1) }> }
  token ending-time-spec-word:sym<Portuguese> { :i 'final' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'final', 2) }> }
  token feb-time-spec-word:sym<Portuguese> { :i 'fev' | ([\w]+) <?{ $0.Str !(elem) <dez fim nov de set em> and is-pt-fuzzy-match($0.Str, 'fev', 1) }> }
  token february-time-spec-word:sym<Portuguese> { :i 'fevereiro' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'fevereiro', 2) }> }
  token few-time-spec-word:sym<Portuguese> { :i 'poucos' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'poucos', 2) }> }
  token fri-time-spec-word:sym<Portuguese> { :i 'sexta' | ([\w]+) <?{ $0.Str ne 'set' and is-pt-fuzzy-match($0.Str, 'sexta', 2) }> }
  token friday-time-spec-word:sym<Portuguese> { :i  'sexta-feira' | 'sexta' \h+ 'feira'  }
  token fridays-time-spec-word { 'sextas-feiras', 'sextas' };
  token hour-time-spec-word:sym<Portuguese> { :i 'hora' | ([\w]+) <?{ $0.Str !(elem) <horas agora hoje> and is-pt-fuzzy-match($0.Str, 'hora', 2) }> }
  token hours-time-spec-word:sym<Portuguese> { :i 'horas' | ([\w]+) <?{ $0.Str ne 'hora' and is-pt-fuzzy-match($0.Str, 'horas', 2) }> }
  token jan-time-spec-word:sym<Portuguese> { :i 'jan' | ([\w]+) <?{ $0.Str !(elem) <am jul jun mar sab ano> and is-pt-fuzzy-match($0.Str, 'jan', 1) }> }
  token january-time-spec-word:sym<Portuguese> { :i 'janeiro' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'janeiro', 2) }> }
  token jul-time-spec-word:sym<Portuguese> { :i 'jul' | ([\w]+) <?{ $0.Str !(elem) <jan julho jun out um sol> and is-pt-fuzzy-match($0.Str, 'jul', 1) }> }
  token july-time-spec-word:sym<Portuguese> { :i 'julho' | ([\w]+) <?{ $0.Str !(elem) <jul junho> and is-pt-fuzzy-match($0.Str, 'julho', 2) }> }
  token jun-time-spec-word:sym<Portuguese> { :i 'jun' | ([\w]+) <?{ $0.Str !(elem) <jan jul junho out um> and is-pt-fuzzy-match($0.Str, 'jun', 1) }> }
  token june-time-spec-word:sym<Portuguese> { :i 'junho' | ([\w]+) <?{ $0.Str !(elem) <julho jun> and is-pt-fuzzy-match($0.Str, 'junho', 2) }> }
  token just-time-spec-word:sym<Portuguese> { :i 'apenas' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'apenas', 2) }> }
  token last-time-spec-word:sym<Portuguese> { :i 'último' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'último', 2) }> | 'passado' | ([\w]+) <?{ $0.Str ne 'passada' and is-pt-fuzzy-match($0.Str, 'passado', 2) }> | 'passada' | ([\w]+) <?{ $0.Str ne 'passado' and is-pt-fuzzy-match($0.Str, 'passada', 2) }> }
  token lifetime-time-spec-word:sym<Portuguese> { :i  'vida' | 'tempo' \h+ 'de' \h+ 'vida'  }
  token lifetimes-time-spec-word:sym<Portuguese> { :i  'vidas' | 'tempo' \h+ 'de' \h+ 'vidas'  }
  token lincoln-time-spec-word:sym<Portuguese> { :i 'lincoln' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'lincoln', 2) }> }
  token mar-time-spec-word:sym<Portuguese> { :i 'mar' | ([\w]+) <?{ $0.Str !(elem) <am abr jan março maio mês mãe sab> and is-pt-fuzzy-match($0.Str, 'mar', 1) }> }
  token march-time-spec-word:sym<Portuguese> { :i 'março' | ([\w]+) <?{ $0.Str !(elem) <mar maio> and is-pt-fuzzy-match($0.Str, 'março', 2) }> }
  token may-time-spec-word:sym<Portuguese> { :i 'maio' | ([\w]+) <?{ $0.Str !(elem) <ago mar março ano> and is-pt-fuzzy-match($0.Str, 'maio', 2) }> }
  token memorial-time-spec-word:sym<Portuguese> { :i 'memorial' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'memorial', 2) }> }
  token millennium-time-spec-word:sym<Portuguese> { :i 'milênio' | ([\w]+) <?{ $0.Str ne 'milênios' and is-pt-fuzzy-match($0.Str, 'milênio', 2) }> | 'milenar' | ([\w]+) <?{ $0.Str ne 'milenares' and is-pt-fuzzy-match($0.Str, 'milenar', 2) }> }
  token millenniums-time-spec-word:sym<Portuguese> { :i 'milênios' | ([\w]+) <?{ $0.Str ne 'milênio' and is-pt-fuzzy-match($0.Str, 'milênios', 2) }> | 'milenares' | ([\w]+) <?{ $0.Str ne 'milenar' and is-pt-fuzzy-match($0.Str, 'milenares', 2) }> }
  token mon-time-spec-word:sym<Portuguese> { :i 'segunda' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'segunda', 2) }> }
  token monday-time-spec-word:sym<Portuguese> { :i 'segunda-feira' | ([\w]+) <?{ $0.Str ne 'segundas-feiras' and is-pt-fuzzy-match($0.Str, 'segunda-feira', 2) }> }
  token mondays-time-spec-word:sym<Portuguese> { :i 'segundas-feiras' | ([\w]+) <?{ $0.Str ne 'segunda-feira' and is-pt-fuzzy-match($0.Str, 'segundas-feiras', 2) }> }
  token month-time-spec-word:sym<Portuguese> { :i 'mês' | ([\w]+) <?{ $0.Str !(elem) <mar mãe> and is-pt-fuzzy-match($0.Str, 'mês', 1) }> }
  token months-time-spec-word:sym<Portuguese> { :i 'meses' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'meses', 2) }> }
  token mother-time-spec-word:sym<Portuguese> { :i 'mãe' | ([\w]+) <?{ $0.Str !(elem) <mar mês de> and is-pt-fuzzy-match($0.Str, 'mãe', 1) }> }
  token new-time-spec-word:sym<Portuguese> { :i 'novo' | ([\w]+) <?{ $0.Str ne 'nov' and is-pt-fuzzy-match($0.Str, 'novo', 2) }> }
  token next-time-spec-word:sym<Portuguese> { :i 'próximo' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'próximo', 2) }> }
  token nov-time-spec-word:sym<Portuguese> { :i 'nov' | ([\w]+) <?{ $0.Str !(elem) <fev novo sol ano anos> and is-pt-fuzzy-match($0.Str, 'nov', 1) }> }
  token november-time-spec-word:sym<Portuguese> { :i 'novembro' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'novembro', 2) }> }
  token now-time-spec-word:sym<Portuguese> { :i 'agora' | ([\w]+) <?{ $0.Str !(elem) <ago hora> and is-pt-fuzzy-match($0.Str, 'agora', 2) }> }
  token oct-time-spec-word:sym<Portuguese> { :i 'out' | ([\w]+) <?{ $0.Str !(elem) <jul jun um set> and is-pt-fuzzy-match($0.Str, 'out', 1) }> }
  token october-time-spec-word:sym<Portuguese> { :i 'outubro' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'outubro', 2) }> }
  token of-time-spec-word:sym<Portuguese> { :i 'de' }
  token one-time-spec-word:sym<Portuguese> { :i 'um' }
  token past-time-spec-word:sym<Portuguese> { :i 'passado' | ([\w]+) <?{ $0.Str ne 'passada' and is-pt-fuzzy-match($0.Str, 'passado', 2) }> | 'passada' | ([\w]+) <?{ $0.Str ne 'passado' and is-pt-fuzzy-match($0.Str, 'passada', 2) }> }
  token penultimate-time-spec-word:sym<Portuguese> { :i 'penúltima' | ([\w]+) <?{ $0.Str ne 'penúltimо' and is-pt-fuzzy-match($0.Str, 'penúltima', 2) }> | 'penúltimо' | ([\w]+) <?{ $0.Str ne 'penúltima' and is-pt-fuzzy-match($0.Str, 'penúltimо', 2) }> }
  token pm-time-spec-word:sym<Portuguese> { :i 'pm' }
  token ramadan-time-spec-word:sym<Portuguese> { :i  ['o' \h*]? 'ramadan'  }
  token right-time-spec-word:sym<Portuguese> { :i 'direita' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'direita', 2) }> }
  token sat-time-spec-word:sym<Portuguese> { :i 'sab' | ([\w]+) <?{ $0.Str !(elem) <am abr jan mar set sol> and is-pt-fuzzy-match($0.Str, 'sab', 1) }> }
  token saturday-time-spec-word:sym<Portuguese> { :i 'sábado' | ([\w]+) <?{ $0.Str ne 'sábados' and is-pt-fuzzy-match($0.Str, 'sábado', 2) }> }
  token saturdays-time-spec-word:sym<Portuguese> { :i 'sábados' | ([\w]+) <?{ $0.Str ne 'sábado' and is-pt-fuzzy-match($0.Str, 'sábados', 2) }> }
  token sep-time-spec-word:sym<Portuguese> { :i 'set' }
  token september-time-spec-word:sym<Portuguese> { :i 'setembro' | ([\w]+) <?{ $0.Str ne 'dezembro' and is-pt-fuzzy-match($0.Str, 'setembro', 2) }> }
  token start-time-spec-word:sym<Portuguese> { :i 'início' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'início', 2) }> }
  token sun-time-spec-word:sym<Portuguese> { :i 'sol' | ([\w]+) <?{ $0.Str !(elem) <jul nov sab set> and is-pt-fuzzy-match($0.Str, 'sol', 1) }> }
  token sunday-time-spec-word:sym<Portuguese> { :i 'domingo' | ([\w]+) <?{ $0.Str ne 'domingos' and is-pt-fuzzy-match($0.Str, 'domingo', 2) }> }
  token sundays-time-spec-word:sym<Portuguese> { :i 'domingos' | ([\w]+) <?{ $0.Str ne 'domingo' and is-pt-fuzzy-match($0.Str, 'domingos', 2) }> }
  token thanksgiving-time-spec-word:sym<Portuguese> { :i  'ação' \h+ 'de' \h+ 'graças'  }
  token thu-time-spec-word:sym<Portuguese> { :i 'quinta' | ([\w]+) <?{ $0.Str ne 'quarta' and is-pt-fuzzy-match($0.Str, 'quinta', 2) }> }
  token thursday-time-spec-word:sym<Portuguese> { :i 'quinta-feira' | ([\w]+) <?{ $0.Str ne 'quintas-feiras' and is-pt-fuzzy-match($0.Str, 'quinta-feira', 2) }> }
  token thursdays-time-spec-word:sym<Portuguese> { :i 'quintas-feiras' | ([\w]+) <?{ $0.Str !(elem) <quinta-feira quartas-feiras> and is-pt-fuzzy-match($0.Str, 'quintas-feiras', 2) }> }
  token today-time-spec-word:sym<Portuguese> { :i 'hoje' | ([\w]+) <?{ $0.Str ne 'hora' and is-pt-fuzzy-match($0.Str, 'hoje', 2) }> }
  token tomorrow-time-spec-word:sym<Portuguese> { :i 'amanhã' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'amanhã', 2) }> }
  token tue-time-spec-word:sym<Portuguese> { :i 'terça' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'terça', 2) }> }
  token tuesday-time-spec-word:sym<Portuguese> { :i 'terça-feira' | ([\w]+) <?{ $0.Str ne 'terças-feiras' and is-pt-fuzzy-match($0.Str, 'terça-feira', 2) }> }
  token tuesdays-time-spec-word:sym<Portuguese> { :i 'terças-feiras' | ([\w]+) <?{ $0.Str ne 'terça-feira' and is-pt-fuzzy-match($0.Str, 'terças-feiras', 2) }> }
  token wed-time-spec-word:sym<Portuguese> { :i 'quarta' | ([\w]+) <?{ $0.Str ne 'quinta' and is-pt-fuzzy-match($0.Str, 'quarta', 2) }> }
  token wednesday-time-spec-word:sym<Portuguese> { :i  'quarta-feira' | 'quarta' \h+ 'feira' | 'quarta'  }
  token wednesdays-time-spec-word:sym<Portuguese> { :i 'quartas-feiras' | ([\w]+) <?{ $0.Str ne 'quintas-feiras' and is-pt-fuzzy-match($0.Str, 'quartas-feiras', 2) }> }
  token week-time-spec-word:sym<Portuguese> { :i 'semana' | ([\w]+) <?{ $0.Str ne 'semanas' and is-pt-fuzzy-match($0.Str, 'semana', 2) }> }
  token weekend-time-spec-word:sym<Portuguese> { :i  'fim' \h+ 'de' \h+ <week-time-spec-word>  }
  token weekends-time-spec-word:sym<Portuguese> { :i  'fims' \h+ 'de' \h+ <weeks-time-spec-word>  }
  token weeks-time-spec-word:sym<Portuguese> { :i 'semanas' | ([\w]+) <?{ $0.Str ne 'semana' and is-pt-fuzzy-match($0.Str, 'semanas', 2) }> }
  token within-time-spec-word:sym<Portuguese> { :i 'em' }
  token year-time-spec-word:sym<Portuguese> { :i 'ano' | ([\w]+) <?{ $0.Str !(elem) <am abr ago jan maio nov anos> and is-pt-fuzzy-match($0.Str, 'ano', 1) }> }
  token years-time-spec-word:sym<Portuguese> { :i 'anos' | ([\w]+) <?{ $0.Str !(elem) <ago nov ano> and is-pt-fuzzy-match($0.Str, 'anos', 2) }> }
  token yesterday-time-spec-word:sym<Portuguese> { :i 'ontem' | ([\w]+) <?{ is-pt-fuzzy-match($0.Str, 'ontem', 2) }> }

}

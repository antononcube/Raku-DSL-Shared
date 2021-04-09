use v6;

role DSL::Shared::Roles::Bulgarian::WordedNumberSpec {

  rule bg-worded-number-spec { <bg_worded_number_up_to_tril> }

  regex bg_worded_number_100s     { <bg_name_2_to_9> <bg_suffix_for_100> | <bg_name_of_100> }
  regex bg_worded_number_1000s    { <bg_worded_number_up_to_1000>    \h+ <bg_name_of_1000> }
  regex bg_worded_number_1000000s { <bg_worded_number_up_to_1000000> \h+ <bg_name_of_1000000> }
  regex bg_worded_number_bils     { <bg_worded_number_up_to_bil>     \h+ <bg_name_of_bil> }

  regex bg_worded_number_up_to_100     { <bg_name_of_10s>             [ [ [ \h+ <.bg-and-conjunction> \h+ ] | \h+ ]?               <bg_name_1_to_10> ]?                || <bg_name_up_to_19> }
  regex bg_worded_number_up_to_1000    { <bg_worded_number_100s>      [ [ [ \h+ <.bg-and-conjunction> \h+ ] | \h* ',' \h+ | \h+ ]? <bg_worded_number_up_to_100> ]?     || <bg_worded_number_up_to_100> }
  regex bg_worded_number_up_to_1000000 { <bg_worded_number_1000s>     [ [ [ \h+ <.bg-and-conjunction> \h+ ] | \h* ',' \h+ | \h+ ]? <bg_worded_number_up_to_1000> ]?    || <bg_worded_number_up_to_1000> }
  regex bg_worded_number_up_to_bil     { <bg_worded_number_1000000s>  [ [ [ \h+ <.bg-and-conjunction> \h+ ] | \h* ',' \h+ | \h+ ]? <bg_worded_number_up_to_1000000> ]? || <bg_worded_number_up_to_1000000> }
  regex bg_worded_number_up_to_tril    { <bg_worded_number_bils>      [ [ [ \h+ <.bg-and-conjunction> \h+ ] | \h* ',' \h+ | \h+ ]? <bg_worded_number_up_to_bil> ]?     || <bg_worded_number_up_to_bil> }

  token bg_name_1_to_10 { <bg_name_of_1> | <bg_name_of_2> | <bg_name_of_3> | <bg_name_of_4> | <bg_name_of_5> | <bg_name_of_6> | <bg_name_of_7> | <bg_name_of_8> | <bg_name_of_9> | <bg_name_of_10> }
  token bg_name_2_to_9  {                  <bg_name_of_2> | <bg_name_of_3> | <bg_name_of_4> | <bg_name_of_5> | <bg_name_of_6> | <bg_name_of_7> | <bg_name_of_8> | <bg_name_of_9> }
  token bg_name_1_to_19 {
    <bg_name_of_1> | <bg_name_of_2> | <bg_name_of_3> | <bg_name_of_4> | <bg_name_of_5> | <bg_name_of_6> | <bg_name_of_7> | <bg_name_of_8> | <bg_name_of_9> | <bg_name_of_10> |
    <bg_name_of_11> | <bg_name_of_12> | <bg_name_of_13> | <bg_name_of_14> | <bg_name_of_15> | <bg_name_of_16> | <bg_name_of_17> | <bg_name_of_18> | <bg_name_of_19> }
  token bg_name_up_to_19 { <bg_name_of_0> | <bg_name_1_to_19> }

  token bg_name_of_10s { <bg_name_of_20> | <bg_name_of_30> | <bg_name_of_40> | <bg_name_of_50> | <bg_name_of_60> | <bg_name_of_70> | <bg_name_of_80> | <bg_name_of_90> }
  token bg_name_of_0  {'нула'}
  token bg_name_of_1  {'едно' | 'един'}
  token bg_name_of_2  {'две' | 'два'}
  token bg_name_of_3  {'три'}
  token bg_name_of_4  {'четири'}
  token bg_name_of_5  {'пет'}
  token bg_name_of_6  {'шест'}
  token bg_name_of_7  {'седем'}
  token bg_name_of_8  {'осем'}
  token bg_name_of_9  {'девет'}
  token bg_name_of_10 {'десет'}
  token bg_name_of_11 {'единадесет'    | 'единайсе'    | 'единайсет'}
  token bg_name_of_12 {'дванадесет'    | 'дванайсе'    | 'дванайсет'}
  token bg_name_of_13 {'тринадесет'    | 'тринайсе'    | 'тринайсет'}
  token bg_name_of_14 {'четиринадесет' | 'четиринайсе' | 'четиринайсет'}
  token bg_name_of_15 {'петнадесет'    | 'петнайсе'    | 'петнайсет'}
  token bg_name_of_16 {'шестнадесет'   | 'шеснайсе'    | 'шестнайсет'}
  token bg_name_of_17 {'седемнадесет'  | 'седемнайсе'  | 'седемнайсет' }
  token bg_name_of_18 {'осемнадесет'   | 'осемнайсе'   | 'осемнайсет'}
  token bg_name_of_19 {'деветнадесет'  | 'деветнайсе'  | 'деветнайсет'}
  token bg_name_of_20 {'двадесет'      | 'двайсе'      | 'двайсет'}
  token bg_name_of_30 {'тридесет'      | 'трийсе'      | 'трийсет'}
  token bg_name_of_40 {'четиридесет'   | 'четирсе'     | 'четирсет' | 'четирийсет'}
  token bg_name_of_50 {'петдесет'      | 'петдесе'}
  token bg_name_of_60 {'шестдесет'     | 'шейсе'       | 'шейсет'}
  token bg_name_of_70 {'седемдесет'    | 'седемдесе'}
  token bg_name_of_80 {'осемдесет'     | 'осемдесе'}
  token bg_name_of_90 {'деветдесет'    | 'деведесе'    | 'деведесет'}
  token bg_name_of_100 {'сто'}
  token bg_suffix_for_100 {'ста' | 'стотин'}
  token bg_name_of_1000 {'хиляда' | 'хиляди'}
  token bg_name_of_1000000 {'милион' | 'милиона'}
  token bg_name_of_bil {'милиард' | 'милиарда'}
  token bg-hyphen-symbol { '-' | '‐' }
  token bg-and-conjunction { 'и' }
}
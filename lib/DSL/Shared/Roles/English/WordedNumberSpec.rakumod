use v6;

# The first version of this role/grammar was made in 2018 using Mathematica and ENBF.
# See this file:
#   https://github.com/antononcube/ConversationalAgents/blob/master/EBNF/English/Mathematica/WordedNumbersGrammar.m

role DSL::Shared::Roles::English::WordedNumberSpec {

  rule worded-number-spec { <worded_number_up_to_tril> }

  regex worded_number_100s     { <name_1_to_19>                \h+ <name_of_100> | <name_of_100> }
  regex worded_number_1000s    { <worded_number_up_to_1000>    \h+ <name_of_1000> }
  regex worded_number_1000000s { <worded_number_up_to_1000000> \h+ <name_of_1000000> }
  regex worded_number_bils     { <worded_number_up_to_bil>     \h+ <name_of_bil> }

  regex worded_number_up_to_100     { <name_of_10s>             [ [ \h* <.hyphen-symbol> \h* | \h+ ]?                     <name_1_to_10> ]?                || <name_up_to_19> }
  regex worded_number_up_to_1000    { <worded_number_100s>      [ [ [ \h+ <.and-conjunction> \h+ ] | \h* ',' \h+ | \h+ ]? <worded_number_up_to_100> ]?     || <worded_number_up_to_100> }
  regex worded_number_up_to_1000000 { <worded_number_1000s>     [ [ [ \h+ <.and-conjunction> \h+ ] | \h* ',' \h+ | \h+ ]? <worded_number_up_to_1000> ]?    || <worded_number_up_to_1000> }
  regex worded_number_up_to_bil     { <worded_number_1000000s>  [ [ [ \h+ <.and-conjunction> \h+ ] | \h* ',' \h+ | \h+ ]? <worded_number_up_to_1000000> ]? || <worded_number_up_to_1000000> }
  regex worded_number_up_to_tril    { <worded_number_bils>      [ [ [ \h+ <.and-conjunction> \h+ ] | \h* ',' \h+ | \h+ ]? <worded_number_up_to_bil> ]?     || <worded_number_up_to_bil> }

  token name_1_to_10 { <name_of_1> | <name_of_2> | <name_of_3> | <name_of_4> | <name_of_5> | <name_of_6> | <name_of_7> | <name_of_8> | <name_of_9> | <name_of_10> }
  token name_1_to_19 {
    <name_of_1> | <name_of_2> | <name_of_3> | <name_of_4> | <name_of_5> | <name_of_6> | <name_of_7> | <name_of_8> | <name_of_9> | <name_of_10> |
    <name_of_11> | <name_of_12> | <name_of_13> | <name_of_14> | <name_of_15> | <name_of_16> | <name_of_17> | <name_of_18> | <name_of_19> }
  token name_up_to_19 { <name_of_0> | <name_1_to_19> }

  token name_of_10s { <name_of_20> | <name_of_30> | <name_of_40> | <name_of_50> | <name_of_60> | <name_of_70> | <name_of_80> | <name_of_90> }
  token name_of_0  {'zero'}
  token name_of_1  {'one'}
  token name_of_2  {'two'}
  token name_of_3  {'three'}
  token name_of_4  {'four'}
  token name_of_5  {'five'}
  token name_of_6  {'six'}
  token name_of_7  {'seven'}
  token name_of_8  {'eight'}
  token name_of_9  {'nine'}
  token name_of_10 {'ten'}
  token name_of_11 {'eleven'}
  token name_of_12 {'twelve'}
  token name_of_13 {'thirteen'}
  token name_of_14 {'fourteen'}
  token name_of_15 {'fifteen'}
  token name_of_16 {'sixteen'}
  token name_of_17 {'seventeen'}
  token name_of_18 {'eighteen'}
  token name_of_19 {'nineteen'}
  token name_of_20 {'twenty'}
  token name_of_30 {'thirty'}
  token name_of_40 {'forty'}
  token name_of_50 {'fifty'}
  token name_of_60 {'sixty'}
  token name_of_70 {'seventy'}
  token name_of_80 {'eighty'}
  token name_of_90 {'ninety'}
  token name_of_100 {'hundred' | 'hundreds'}
  token name_of_1000 {'thousand' | 'thousands' }
  token name_of_1000000 {'million' | 'millions'}
  token name_of_bil {'billion' | 'billions'}
  token hyphen-symbol { '-' | '‐' }
}
use v6;

class DSL::Shared::Actions::English::WordedNumberSpec {

  method numeric-word-form($/)     { make $/.values[0].made; }

  method worded_number_100s($/)     { make ( $<name_1_to_19>.made.Int * 100 ).Str }
  method worded_number_1000s($/)    { make ( $<worded_number_up_to_1000>.made.Int * 1_000 ).Str }
  method worded_number_1000000s($/) { make ( $<worded_number_up_to_1000000>.made.Int * 1_000_000 ).Str }
  method worded_number_bils($/)     { make ( $<worded_number_up_to_bil>.made.Int * 1_000_000_000 ).Str }

  method worded_number_up_to_100($/) {
      if $<name_of_10s> and $<name_1_to_10> {
          make ( $<name_of_10s>.made.Int + $<name_1_to_10>.made.Int ).Str
      } elsif $<name_of_10s> {
          make $<name_of_10s>.made
      } else {
          make $<name_up_to_19>.made
      }
  }

  method worded_number_up_to_1000($/) {
      if $<worded_number_100s> and $<worded_number_up_to_100> {
          make ( $<worded_number_100s>.made.Int + $<worded_number_up_to_100>.made.Int ).Str
      } elsif $<worded_number_100s> {
          make $<worded_number_100s>.made
      } else {
          make $<worded_number_up_to_100>.made
      }
  }

  method worded_number_up_to_1000000($/) {
      if $<worded_number_1000s> and $<worded_number_up_to_1000> {
          make ( $<worded_number_1000s>.made.Int + $<worded_number_up_to_1000>.made.Int ).Str
      } elsif $<worded_number_1000s> {
          make $<worded_number_1000s>.made
      } else {
          make $<worded_number_up_to_1000>.made
      }
  }

  method worded_number_up_to_bil($/) {
      if $<worded_number_1000000s> and $<worded_number_up_to_1000000> {
          make ( $<worded_number_1000000s>.made.Int + $<worded_number_up_to_1000000>.made.Int ).Str
      } elsif $<worded_number_1000000s> {
          make $<worded_number_1000000s>.made
      } else {
          make $<worded_number_up_to_1000000>.made
      }
  }

  method worded_number_up_to_tril($/) {
      if $<worded_number_bils> and $<worded_number_up_to_bil> {
          make ( $<worded_number_bils>.made.Int + $<worded_number_up_to_bil>.made.Int ).Str
      } elsif $<worded_number_bils> {
          make $<worded_number_bils>.made
      } else {
          make $<worded_number_up_to_bil>.made
      }
  }

  method name_1_to_10($/)  { make $/.values[0].made }
  method name_1_to_19($/)  { make $/.values[0].made }
  method name_up_to_19($/) { make $/.values[0].made }

  method name_of_10s($/)   { make $/.values[0].made }
  method name_of_0($/)  { make '0'}
  method name_of_1($/)  { make '1'}
  method name_of_2($/)  { make '2'}
  method name_of_3($/)  { make '3'}
  method name_of_4($/)  { make '4'}
  method name_of_5($/)  { make '5'}
  method name_of_6($/)  { make '6'}
  method name_of_7($/)  { make '7'}
  method name_of_8($/)  { make '8'}
  method name_of_9($/)  { make '9'}
  method name_of_10($/) { make '10'}
  method name_of_11($/) { make '11'}
  method name_of_12($/) { make '12'}
  method name_of_13($/) { make '13'}
  method name_of_14($/) { make '14'}
  method name_of_15($/) { make '15'}
  method name_of_16($/) { make '16'}
  method name_of_17($/) { make '17'}
  method name_of_18($/) { make '18'}
  method name_of_19($/) { make '19'}
  method name_of_20($/) { make '20'}
  method name_of_30($/) { make '30'}
  method name_of_40($/) { make '40'}
  method name_of_50($/) { make '50'}
  method name_of_60($/) { make '60'}
  method name_of_70($/) { make '70'}
  method name_of_80($/) { make '80'}
  method name_of_90($/) { make '90'}
  method name_of_100($/) { make '100'}
  method name_of_1000($/) { make '1000'}
  method name_of_1000000($/) { make '1000000'}
  method name_of_bil($/) { make '1000000000'}
}

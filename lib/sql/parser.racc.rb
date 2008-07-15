#
# DO NOT MODIFY!!!!
# This file is automatically generated by racc 1.4.5
# from racc grammer file "lib/sql/parser.racc".
#

require 'racc/parser'


require File.dirname(__FILE__) + '/parser.rex.rb'

module SQL

  class Parser < Racc::Parser

##### racc 1.4.5 generates ###

racc_reduce_table = [
 0, 0, :racc_error,
 1, 10, :_reduce_none,
 1, 10, :_reduce_none,
 1, 12, :_reduce_3,
 1, 12, :_reduce_none,
 1, 13, :_reduce_none,
 2, 14, :_reduce_6,
 2, 11, :_reduce_7,
 2, 11, :_reduce_8,
 1, 11, :_reduce_none,
 3, 15, :_reduce_10,
 2, 15, :_reduce_11,
 2, 15, :_reduce_12,
 1, 15, :_reduce_13 ]

racc_reduce_n = 14

racc_shift_n = 21

racc_action_table = [
     4,     5,    16,     8,     9,    10,    11,    10,    11,    10,
    11,    13,    17,    18,    19,    20 ]

racc_action_check = [
     0,     0,    10,     0,     0,     0,     0,     9,     9,     8,
     8,     5,    11,    12,    16,    18 ]

racc_action_pointer = [
    -2,   nil,   nil,   nil,   nil,     7,   nil,   nil,     2,     0,
    -6,     5,    13,   nil,   nil,   nil,     7,   nil,    15,   nil,
   nil ]

racc_action_default = [
   -14,    -1,    -2,    -4,    -3,   -14,    -5,    -9,   -14,   -14,
   -13,   -14,   -14,    -6,    -7,    -8,   -11,   -12,   -14,   -10,
    21 ]

racc_goto_table = [
     7,     3,     2,     1,     6,    12,   nil,   nil,    14,    15 ]

racc_goto_check = [
     6,     4,     3,     2,     5,     1,   nil,   nil,     6,     6 ]

racc_goto_pointer = [
   nil,     5,     3,     2,     1,     4,     0 ]

racc_goto_default = [
   nil,   nil,   nil,   nil,   nil,   nil,   nil ]

racc_token_table = {
 false => 0,
 Object.new => 1,
 :character_string_literal => 2,
 :DATE => 3,
 :date_string => 4,
 :plus_sign => 5,
 :minus_sign => 6,
 :unsigned_integer => 7,
 :period => 8 }

racc_use_result_var = true

racc_nt_base = 9

Racc_arg = [
 racc_action_table,
 racc_action_check,
 racc_action_default,
 racc_action_pointer,
 racc_goto_table,
 racc_goto_check,
 racc_goto_default,
 racc_goto_pointer,
 racc_nt_base,
 racc_reduce_table,
 racc_token_table,
 racc_shift_n,
 racc_reduce_n,
 racc_use_result_var ]

Racc_token_to_s_table = [
'$end',
'error',
'character_string_literal',
'DATE',
'date_string',
'plus_sign',
'minus_sign',
'unsigned_integer',
'period',
'$start',
'literal',
'signed_numeric_literal',
'general_literal',
'datetime_literal',
'date_literal',
'exact_numeric_literal']

Racc_debug_parser = false

##### racc system variables end #####

 # reduce 0 omitted

 # reduce 1 omitted

 # reduce 2 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 8
  def _reduce_3( val, _values, result )
 result = SQL::Statement::String.new(val[0])
   result
  end
.,.,

 # reduce 4 omitted

 # reduce 5 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 15
  def _reduce_6( val, _values, result )
 result = SQL::Statement::Date.new(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 18
  def _reduce_7( val, _values, result )
 result = SQL::Statement::UnaryPlus.new(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 19
  def _reduce_8( val, _values, result )
 result = SQL::Statement::UnaryMinus.new(val[1])
   result
  end
.,.,

 # reduce 9 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 23
  def _reduce_10( val, _values, result )
 result = SQL::Statement::Float.new("#{val[0]}.#{val[2]}".to_f)
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 24
  def _reduce_11( val, _values, result )
 result = SQL::Statement::Float.new(val[0])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 25
  def _reduce_12( val, _values, result )
 result = SQL::Statement::Float.new("0.#{val[1]}".to_f)
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 26
  def _reduce_13( val, _values, result )
 result = SQL::Statement::Integer.new(val[0])
   result
  end
.,.,

 def _reduce_none( val, _values, result )
  result
 end

  end   # class Parser

end   # module SQL

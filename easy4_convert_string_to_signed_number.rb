# UNDERSTANDING THE PROBLEM - write a method
# Input
# - string of digits
# Output
# - signed number as an integer
# Rules
# - cannot use #to_i or Integer()
# - string may have leading + or - sign, method should return a;
#   positive number is leading sign is +
#   negative number is leading sign is -
#   positive number is there's no leading sign
# - don't worry invalid characters and assume all characters will be numeric
# - 

# EXAMPLES / TEST CASES
# See below

# DATA STRUCTURE
# Input: String
# Rules as data: hash of strings integers pointing to their integer equivalent

# ALGORITHM
# - create a constant called DIGITS that will hold the string to integer conversion values
#   i.e. '0' => 0, '1' => 1, 2' => 2, etc to '9' => 9
#   include signs '+' => '+' and '-' => '-'
# - given a string of digits
# - iterate through the string using #map, store return value in variable called 'digits'
#     use local #map variable as a key to reference the corresponding value in DIGITS
#     and return it as the block's value
# - if first element of 'digits' array is '+' remove with .shift
# - if second element of 'digits' array is '-' remove and turn all remaining elements negative
#   with #map!

# CODE
require 'pry'
DIGITS = { 
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  '+' => '+', '-' => '-'
}

def string_to_signed_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  case digits[0]
  when '+'
    digits.shift
  when '-'
    digits.shift
    digits.map! {|e| -e}
  end
  
  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100

# FURTHER EXPLORATION
# In our solution, we call string[1..-1] twice, and call 
# string_to_integer three times. This is somewhat repetitive. 
# Refactor our solution so it only makes these two calls once each.

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end
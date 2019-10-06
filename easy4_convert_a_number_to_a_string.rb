# Understand The Problem
# Input
# - integer
# Output
# - stringed version of given integer
# Rules
# - convert integer to it's string equivalent w/o using #to_s, String() or
#   Kernal#format

# Examples / Test Cases
# See Below

# Data Structure
# Input
# - integer
# Rules as Data
# - hash containing conversion of integer to strings of numbers 0 to 9

# Algorithm
# - create a hash called 'STRINGS' 0 => '0', 1 => '1', etc. up to 9
# - iterate through integer and transform each digit into a string w/ #map
#   - store #map return value in a variable called 'string'
# - if 'string' array size > 1 join otherwise return it

#CODE
require 'pry'
STRINGS = { 
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(integer)
  string = integer.digits.reverse.map {|num| [STRINGS[num]]}.flatten
  string.size > 1 ? string.join : string[0]
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
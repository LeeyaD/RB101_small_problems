# UNDERSTANDING THE PROBLEM - write a method
# Input
# - string of digits
# Output
# - number as an integer
# Rules
# - cannot use #to_i or Integer()
# - don't worry about + or - signs or invalid characters
# - assume all characters will be numeric

# EXAMPLES / TEST CASES
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

# DATA STRUCTURE
# Input: String
# Rules as data: hash of strings integers pointing to their integer equivalent

# ALGORITHM
# - create a constant called DIGITS that will hold the string to integer conversion values
#   i.e. '0' => 0, '1' => 1, 2' => 2, etc to '9' => 9
# - given a string of digits
# - **iterate through the string**, comparing each char to the hashes keys to find the matching value
#   initialize an empty array called 'converted_string'
#   initialize a counter equal to 0
#   loop through the given string of digits, breaking if counter is >= string.size
#   use counter as a string index reference and store current element of iteration in variable called 
#     'current_value'
#   store DIGITS keys using #keys in a variable called 'digits_keys'
#   IF digits_keys include 'current_value'
#     shovel DIGITS[current_value] into 'converted_string'
#   END
# - increment counter by 1
# - save return value of 'converted_string' with #each called on it to a variable called 'converted_digits'
#   print each value of the array
# - call 


# CODE
require 'pry'
DIGITS = { 
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

 
puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570

# FURTHER EXPLORATION
# Write a hexadecimal_to_integer method that converts 
# a string representing a hexadecimal number to its integer value.
DIGIT = { 
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 
  'E' => 14, 'F' => 15
}

def hexadecimal_to_integer(string)
  digits = string.chars.map do |char| 
    if (0..9).include?(DIGIT[char])
      DIGIT[char]
    else 
      DIGIT[char.upcase]
    end
  end
  
  value = 0
  digits.each { |digit| value = 16 * value + digit }
  value
end

puts hexadecimal_to_integer('4D9f') == 19871
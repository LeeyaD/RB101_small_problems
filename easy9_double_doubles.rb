# A double number is a number with an even number of digits whose left-side digits are exactly the same as
# its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument, unless the argument is a double number;
# double numbers should be returned as-is.

# Note: underscores are used for clarity above. Ruby lets you use underscores when writing long numbers; however,
# it does not print the underscores when printing long numbers. Don't be alarmed if you don't see the underscores
# when running your tests.

# Input: Integer
# Output: Integer
# Rules: 
# - Double Number
#   - even number of digits whose left-side digits are exactly the same as its right-side digits
# - Output as-is IF...
#   - integer is a double number
# - Output 2 times the number given (* 2)
#   - for all else
# ALGO
# - create a helper method, #double_number?, that checks if the Integer is a double number
# - create the method #twice to
#   - double the Integer given is #double_number? returns false
# - #double_number? checks that the given number...
#   - is even AND that the left-side digits are exactly the same as its right-side digit
#     - compare the left-side digits to the right-side digits (1st half to the 2nd half)
#     - determining what's in the 1st & 2nd half...
#     - convert given integer to_s, then divide the String#size by 2 to give us # of digits on each side
#     - 
require 'pry'
def double_number?(number)
  string_num = number.to_s
  num_of_digits = string_num.size/2
  
  if string_num.size.even?
    left_side = string_num.slice!(0,num_of_digits)
    left_side == string_num
  else
    return false
  end
end

def twice(number)
  if double_number?(number)
    number
  else
    number * 2
  end
end

# p double_number?(37) == false
# p double_number?(44) == true
# p double_number?(103103) == true
# p double_number?(3333) == true 
# p double_number?(7676) == true
# p double_number?(123_456_789_123_456_789) == true

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333 #
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
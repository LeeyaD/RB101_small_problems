# UNDERSTAND THE PROBLEM
#  Input
#   -a positive integer of any length (i.e 7 or 7000)
#  Output
#   -an array of a list of digits in the number (i.e. [7], [7, 0, 0])

# EXAMPLES / TEST CASES
#  puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
#  puts digit_list(12) == [1, 2]                 # => true
#  puts digit_list(1) == [1]                     # => true
#  puts digit_list(989) == [9, 8, 9]             # => true

# DATA STRUCTURE
# -number

# ALGORITHM
#  -create a method that takes in a number and...separates it digit by digit in an array...
#  -take a number, converts it to a string which is then split
#  -the split string is now an array that I'll iterate over converting each element back into an integer

def digit_list(digits)
  split_digits = digits.to_s.split("")
  list_of_digits = split_digits.map {|n| n.to_i}
  list_of_digits
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(12) == [1, 2]                 # => true
puts digit_list(1) == [1]                     # => true
puts digit_list(989) == [9, 8, 9]             # => true

# def digit_list(number)
#   number.to_s.chars.map(&:to_i)
# end

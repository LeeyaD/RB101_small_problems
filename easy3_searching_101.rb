# UNDERSTAND THE PROBLEM
#  Input
#  - string, 6 separate numbers from user
#  Output
#  - string, a message stating whether or not 6th number was one of the first five
#  Rules
#  - Digits aren't separated

# EXAMPLES / TEST CASES
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].
# The number 18 does not appear in [25, 15, 20, 17, 23].

# DATA STRUCTURE
#  Input: string
#  Rules/Requirements as Data: Array

# ALGORITHM
# - Prompt user to input a number SUBPROCESS "get input 6 times"
# - SUB: 
#    SET a variable 'field' equal to an empty array 
#    SET a variable 'num' equal to nil
#    Insert each input into array except for the last one for a total of 5 times
#    Use #times to get input > 6.times 
# - SUBPROCESS "load input (first 5 numbers) into an array
# - SUBPROCESS "see if 6th number is in array"
# - SUBPROCESS "message user whether or not 6th number is in array"

array = []
puts "==> Enter the 1st number:"
array << gets.chomp

puts "==> Enter the 2nd number:"
array << gets.chomp

puts "==> Enter the 3rd number:"
array << gets.chomp

puts "==> Enter the 4th number:"
array << gets.chomp

puts "==> Enter the 5th number:"
array << gets.chomp

puts "==> Enter the last number:"
last_number = gets.chomp

if array.include?(last_number)
  puts "The number #{last_number} appears in #{array.map(&:to_i)}."
else 
  puts "The number #{last_number} does not appear in #{array.map(&:to_i)}."
end
# UNDERSTANDING THE PROBLEM - write a method
# Input
# - Integer
# Output
# - Boolean value
# Rules
# - Palindromic reads the same forwards and backwards

# EXAMPLES / TEST CASES
# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true

# DATA STRUCTURE
# Input: number
# Rules as data: 

# ALGORITHM
# - convert input (integer) to string, reverse it and convert it back to an integer
# compare it to input converted to a string

def palindromic_number?(number)
  number.to_s.reverse == number.to_s
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
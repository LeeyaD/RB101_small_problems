# UNDERSTANDING THE PROBLEM - write a method
# Input
# - string
# Output
# - Boolean value: TRUE if string is a palindrome, otherwise FALSE
# Rules
# - A palindrome reads the same forwards and backwards

# EXAMPLES / TEST CASES
# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

# DATA STRUCTURE
# Input: string
# Rules as data: an array b/c we want separate the string into individual characters

# ALGORITHM
# Determine is the given string is a palindrome (punctuation and all)
# SUBPROCESS "separate string into individual characters"
# - call #split on input => NEW_array of characters
# SUBPROCESS "reverse the order of those characters"
# - call #reverse on NEW_array of characters
# SUBPROCESS "compare reversed order to original order"
# - evaluate equality between NEW_array and input.split
# IF NEW_array AND input.split are the same return TRUE
# otherwise false

def palindrome?(string)
  true if string.split.reverse == string.split
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
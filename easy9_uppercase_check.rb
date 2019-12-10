# Write a method that takes a string argument, and returns true if all of the alphabetic characters inside
# the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.

# Input: a String
# Output: a Boolean
# Rules:
# - => true if ALL of the alphabetic characters are uppercase
# - => false otherwise
# - Ignore non-alphabetic characters

# ALGO
# check that each character in string is uppercase
# walk through and compare the char to itself.upcased

def uppercase?(string)
  string.chars.all? do |char|
    char == char.upcase
  end
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
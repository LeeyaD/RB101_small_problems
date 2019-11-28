# UNDERSTAND THE PROBLEM
# Input
# - a string of words
# Output
# - return the second to last word in given string
# Rules
# - can assume that the input String will always contain at least two words
# - words are any sequence of non-blank characters

# EXAMPLES / TEST CASES
# penultimate('last word') == 'last'
# penultimate('Launch School is great!') == 'is'

# ALGO
# - split string argument on " " using String#split
# - use elemental reference on the array to return the second to last element -2

def penultimate(string)
  string.split(" ")[-2]
end

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'

# FURTHER EXPLORATION - return the middle word of phrase, and handle edge cases;
#  strings that contain one word or no words
# Qs
# - what is string has an even number of words?
# - what should return is a string is empty? a message? an empty string?

def penultimate(string)
  if string.size == 0 || string.split.size == 1
    string
  elsif string.split.size == 2
    string.split[-2]
  else
    string.split[((string.split.size/2))]
  end
end

puts penultimate('last word') == 'last'
puts penultimate('Launch School greeeeaaat!') == 'School'
puts penultimate('') == ''
puts penultimate('last') == 'last'
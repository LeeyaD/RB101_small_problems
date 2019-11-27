# UNDERSTAND THE PROBLEM
# Input
# - a string
# Output
# - a NEW string w/ every uppercase letter replaced by its lowercase version & vice versa
# Rules
# - Cannot use String#swapcase, create your own!
# - Ignore non-letter characters

# EXAMPLES / TEST CASES
# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# DATA STRUCTURE
# Input: a string
# Rules rep as data: Hash w/ uppercase letters as keys, lowercase as values

# ALGORITHM
# - convert the string into an array, separating every character w/ String#chars
# - walk through the array, to look at each char w/ Array#map 
#   store return value in variable called 'swapped_cases'
# - IF the letter is uppercase, we want it downcased #downcase!
#     check if it matches regex for uppercase letters from A-Z /([A-Z])/
# - IF the letter is lowercase, we want it upcased #upcase!
#     same check as above but swap the cases
#   IF the character is neither, we want it left alone
# - return joined array - swapped_cases.join

# CODE

def swapcase(string)
  characters = string.chars

  characters.map do |char|
    if char.match? /[A-Z]/
      char.downcase
    elsif char.match? /[a-z]/
      char.upcase
    else 
      char
    end
  end.join
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
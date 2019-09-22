#UNDERSTAND THE PROBLEM - method
#Some questions you might have?
# 1. How should I handle 2 strings of the same length? N/A
# 2. Should I account for non-word characters? If so, should they be removed?
#Input: 2 strings of different length
#Output: a concatenation of the short string, long string, and short string again
#Rules:
# Explicit requirements:
#  - output will be a new string
# Implicit requirements:
#  - empty strings 


#EXAMPLES / TEST CASES
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

#DATA STRUCTURE
#Input: 2 strings
#Rules rep as data: strings

#ALGORITHM
# Determine which of the two strings is longest, then concatenate them together short, long, and short again
#   ordered_length method
#  ==============
#  - compare the length of the strings to each other using the Array#sort_by method
#  - in this method we will .sort_by(String#length) and return a 2-element Array, with the first element
#  - being the shortest of the two strings

#CODE
require 'pry'
def order_by_length(string1, string2)
  [string1, string2].sort_by {|s| s.length}
end

def short_long_short(string1, string2)
  short, long = order_by_length(string1, string2)
  short + long + short
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
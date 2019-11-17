# UNDERSTAND THE PROBLEM - write a METHOD
# Input
#  a string of words separated by spaces
# Output
#  a string of words with the first and last letters of every word swapped
# Rules
#  can assume that...
#   every word has at least 1 letter
#   the string will always contain at least 1 word
#   each string only contains words and spaces
#  if word only has 1 character, nothing happens

# EXAMPLES / CASE TESTS
#  See Below

# DATA STRUCTURE
#  Input: string
#  Rules as Data: Array

# ALGORITHM
# 1. isolate each word in the given string using String#split and an empty space as the delimiter
# 2. walk through each word in the array using Array#map for transformation, swap the first and 
#    last letter if there's more than 1 character
#      IF word.length > 1
#        SUBPROCESS swap first and last letter of word
#        word[0], word[-1] = word[-1], word[0]
#      ELSE
#        next
#      END
# 3. return the transformed array, joined back together with an empty space as the delimiter 
#    using Array#join(' ')

def swap(string)
  words = string.split(" ")
  swapped = words.each do |word|
              if word.length > 1
                word[0], word[-1] = word[-1], word[0]
              end
            end
  swapped.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
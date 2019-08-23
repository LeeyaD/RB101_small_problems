# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

#UNDERSTAND THE PROBLEM
# Input
# -string
#  -lowercase & uppercase
# Output
# -string
# Rules
# -reverse the WORD order but not the words themselves
# -return a NEW string

#EXAMPLES / TEST CASES
# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# The tests above should print true.

#DATA STRUCTURE
# -string

#ALGORITHM
# -set a variable to > split string by space, reverse array, then join back together

def reverse_sentence(sentence)
  reverse = sentence.split(" ").reverse.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
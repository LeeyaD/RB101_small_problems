# UNDERSTAND THE PROBLEM
# Input
# - a string
# Output
# - new string w/ values of the orig. string but first char of every word is capitalized
# Rules
# - Can assume that words are any sequence of non-blank characters
 
# DATA STRUCTURE
# Input
# - string
# Rules rep as data
# - array so we can walk thru the collection and modify the elements

# ALGORITHM
# convert string to an array, separated on each blank space using String#split
# walk thru array w/ map, capitalizing each element destructively w/ String#capitalize!
# join array back together w/ a space btwn each element using Aray#join(" ")

# CODE

def word_cap(string)
  string.split.map(&:capitalize).join(" ")
end

# puts word_cap('four score and seven') == 'Four Score And Seven'
# puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
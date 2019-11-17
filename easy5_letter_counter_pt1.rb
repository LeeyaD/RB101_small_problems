# UNDERSTAND THE PROBLEM
# Input
# - a string w/ 1 or more space separated words
# Output
# - a hash with word lengths as keys and # of occurances as values
# Rules
# - words are any string of characters that do not include a space
# Questions
# - is it case-sensitive?
# - an empty string should return an empty hash

# EXAMPLES / TEST CASES
# See Below

# DATA STRUCTURES
# Input: string
# Rules as Data: Array

# ALGORITHM
# - Use String#gsub to replace anything that's not alphabetic into a space
# - Convert string into an array with String#split
# - SUBPROCESS? Remove whitespace
# - Iterate through array, add word to hash as a key w/ a value of 0, 
#   if it already exists increase it's value by 1
# - return hash

# CODE

def word_sizes(words) 
  arr_words = words.split
  hash = {}
  
  arr_words.each do |word|
    if hash.has_key?(word.size)
      hash[word.size] += 1
    else
      hash[word.size] = 1
    end
  end

  hash
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}
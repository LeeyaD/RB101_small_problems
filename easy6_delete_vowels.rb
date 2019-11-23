# UNDERSTAND THE PROBLEM
# Input
# - an array of strings
# Output
# - an array of the SAME string value but w/ all the vowels removed [a,e,i,o,u]
# Rules
# - strings in array can be varying lengths, i.e. individual letters to whole words
# - output should be the same array and strings
# - vowels are case insensitive

# EXAMPLES / TEST CASES

# DATA STRUCTURE
# Input: string
# Rules rep as data: Code

# ALGORITHM
# 1. Walk through array and change each element by removing the vowels but don't return a new string
# 2. Walk thru Array w/ #map since we're transforming and use String#delete "aeiuoAEIUO"

# CODE

def remove_vowels(array)
  array.map {|str| str.delete "aeiuoAEIOU"}
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

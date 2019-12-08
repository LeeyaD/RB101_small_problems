# => a list of all substrings of a string that are palindromic. That is, 
# each substring must consist of the same sequence of characters forwards as it does backwards. 
# => value should be arranged in the same sequence as the substrings appear in the string. 
# Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case; that is, 
# "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters 
# are not palindromes.

# ALGO
# - Use #substrings to find all the substrings of the given string, store => in a variable called 
#   'all_substrings'
# - **may need to remove the spaces...
# - iterate thru 'all_substrings' selecting only the palindromic ones
#   - string.reverse == string < #select's block return
# - 
require 'pry'
def substrings_at_start(string)
  counter = 0
  substrings = []
  
  loop do
    break if counter >= string.size
      substrings << string[0, (counter+1)]
    counter += 1
  end
  substrings
end

def substrings(string)
  all_substrings = []

  until string.size < 1 do
    all_substrings << substrings_at_start(string)
    string.slice!(0)
  end
  all_substrings.flatten
end

def palindromes(string)
  all_substrings = substrings(string)
  all_substrings.select do |substring|
    substring.reverse == substring && substring.size > 1
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
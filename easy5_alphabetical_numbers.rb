# UNDERSTAND THE PROBLEM
# Input
# - an Array of Integers between 0 and 19
# Output
# - an Array of those Integers sorted based on the English words for each number

# EXAMPLES / TEST CASES
# see below

# DATA STRUCTURE
# Input: an Array of Integers
# Rules as Data: Hash

# ALGORITHM
# - initialize a hash CONSTANT called ALPHABETICAL_NUMBERS
#   - keys: integers
#   - values: English words for each number
# - initialize empty array, bind to var called 'english_words'
# - initialize empty array, bind to var called 'sorted_numbers'
# - SUBPROCESS transform given array, numbers, into English word values of matching hash keys
#    interate thru numbers w/ #each
#     - then hash CONSTANT w/ #each
#       - if current array element is equal to the current constant key
#         shovel current hash value into english_words array
# - Sort english_words array alphabetically using #sort & store results in 'sorted_english_words'
# - SUBPROCESS transform sorted_english_words into their equivalent numbers based on hash CONSTANT
#     interate thru sorted_english_words w/ #each
#     - then hash CONSTANT w/ #each
#       - if current array element is equal to the current constant value
#         shovel current hash key into sorted_numbers
# - return keys in same order as sorted words

# CODE
require 'pry'
ALPHABETICAL_NUMBERS = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 
                         5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 
                         10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 
                         14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 
                         18 => 'eighteen', 19 => 'nineteen'
                       }

def alphabetic_number_sort(numbers)
  english_words = []
  sorted_numbers = []

  numbers.each do |num|
    ALPHABETICAL_NUMBERS.each do |k, v|
      english_words << v if num == k
    end
  end

  english_words.sort.each do |word|
    ALPHABETICAL_NUMBERS.each do |k, v|
      sorted_numbers << k if word == v
    end
  end
    
  sorted_numbers
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
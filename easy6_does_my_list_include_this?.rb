# UNDERSTAND THE PROBLEM
# Input
# - two arguments
#   1. an array
#   2. a search value
# Output
# - boolean object
# Rules
# - Returns TRUE if search value is in array
# - Returns FALSE otherwise

# EXAMPLES / TEST CASES
# See below

# DATA STRUCTURE
# Input
# - an array & an object
# Rules rep as data

# ALGORITHM

# CODE
def include?(array, search_value)
  idx = array.find_index(search_value)
  idx ? true : false
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false
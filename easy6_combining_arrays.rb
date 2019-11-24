# UNDERSTAND THE PROBLEM
# Input
# - 2 arrays
# Output
# - 1 array containing all the values from the argument arrays
# Rules
# - No duplication of values in the returned Array, even if there are duplicates in the original Arrays.

# EXAMPLES / TEST CASES
# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# DATA STRUCTURE
# Input
# - array
# Rules rep as data
# - No dups means calling .uniq at some point
# - array

# ALGORITHM
# Skipped this step

# CODE
require 'pry'
def merge(array1, array2)
  array1.concat(array2).uniq!
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
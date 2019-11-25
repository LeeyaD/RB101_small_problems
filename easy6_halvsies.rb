# UNDERSTAND THE PROBLEM
# Input
# - an array
# Output
# - two arrays (as 2 nested arrays) that contain the 1st half and 2nd half of the orig. array, respectively. 
# Rules
# - If the original array has an odd number of elements, the middle element should go in the 1st half array.

# EXAMPLES / TEST CASES
# See below

# DATA STRUCTURE
# Input
# - array
# Rules represented as data
# - code

# ALGORITHM
# 1. Determine if length of arg Array is even or odd
# 2. IF length is odd, using Array#slice method,
#    move 1st half of arg array into 'array1' & the 2nd hald into 'array2'
#    index will start at 0 and range will be until half the length of the arg array plus 1
# EX. Array#slice(0, (arg.array.length/2) + 1)
# 3. IF length is even, using Array#slice method,
#    move 1st half of arg array into 'array1' & the 2nd hald into 'array2'
#    index will start at 0 and range will be until half the length of the arg array
# EX. Array#slice(0, arg.array.length/2)

# CODE
require 'pry'
def halvsies(array)
  new_array = []

  if array.size.odd?
    array1 = array.slice!(0, (array.size/2) + 1)
  else 
    array1 = array.slice!(0, array.size/2)
  end

  new_array.push(array1).push(array)
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
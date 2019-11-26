# UNDERSTAND THE PROBLEM
# Input
# - 2 arrays
# Output
# - a NEW array w/ all the elements from original 2 arrays, taken in alternation
# Rules
# - NEW array has alternating elemtents from original 2 arrays
# - can assume 2 arg arrays are non-empty
# - can assume 2 arg arrays are of equal size

# EXAMPLES / TEST CASES
# See below

# DATA STRUCTURE
# Input
# - 2 arrays
# Rules rep as data
# - code

# ALGORITHM


# CODE

def interleave(array1, array2)
  array1.zip(array2).flatten
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
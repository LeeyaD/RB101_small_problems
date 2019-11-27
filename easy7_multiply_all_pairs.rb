# UNDERSTAND THE PROBLEM
# Input
# - two Array argumentsm each containing a list of numbers
# Output
# - a new Array containing the product of every pair of numbers that can be formed 
#   btwn the elements of the two Arrays. The results sorted by increasing value.
# Rules
# - You may assume that neither argument is an empty Array.

# Examples:

# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# EDGE CASES

# ALGO
# walk thru array1 using Array#each and for each element, multiply it by each element in array2
# store the return value in a variable called 'multiplied pairs'

def multiply_all_pairs(array1, array2)
  multiplied_pairs = array1.map do |num1|
    array2.map do |num2|
      num1 * num2
    end
  end
  
  multiplied_pairs.flatten.sort
end
  
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
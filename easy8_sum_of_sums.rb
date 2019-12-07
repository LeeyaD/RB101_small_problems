# Takes an Array of numbers and => the sum of the sums of each leading subsequence for that Array.
# You may assume that the Array always contains at least one number.

# Input: an array of integers
# Output: an Integer
# ALGO
# - walk thru array, w/ #reduce/#inject to keep a running total
# - running total plus always increasing elements in array

require 'pry'
def sum_of_sums(array)
  running_total = 0
  counter = 0
  
  loop do
    break if counter >= array.size

    running_total += array[0, (counter+1)].sum
    counter += 1
  end

  running_total
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
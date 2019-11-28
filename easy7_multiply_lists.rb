# UNDERSTAND THE PROBLEM
# Input
# - two Array args in which each Array contains a list of numbers
# Output
# - a new Array containing the product of each pair of #s from the args that have the same index 
# Rules
# - Can assume the args have the same number of elements

# EXAMPLES / TEST CASES
# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# EDGE CASES
# - what if you had uneven arrays?

# ALGO
# - initialize a counter = 0 and an empty array called 'multiplied_list'
# - loop thru array 1, breaking it if the counter is more/equal to the array.size
# - on each iteration multiply array[counter1] by array2[counter] and shovel the 
#   answer into 'multiplied_list'
# - increase counter by 1
# - call 'multiplied_list' on the last line of method

# def multiply_list(array1, array2)
#   multiplied_list = []
#   counter = 0

#   loop do
#     break if counter >= array1.size
#     multiplied_list << array1[counter] * array2[counter]
#     counter += 1
#   end

#   multiplied_list
# end

# puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
# puts multiply_list([2, 4, 10], [3, 30, 50]) == [6, 120, 500]
# puts multiply_list([0, 5, 5], [9, 0, 11]) == [0, 0, 55]

# FURTHER EXPLANATION - use Array#zip for 1 line code
def multiply_list(array1, array2)
  array1.zip(array2).map {|arr| arr.reduce(:*)}
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
puts multiply_list([2, 4, 10], [3, 30, 50]) == [6, 120, 500]
puts multiply_list([0, 5, 5], [9, 0, 11]) == [0, 0, 55]
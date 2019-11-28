# UNDERSTAND THE PROBLEM
# Input
# - an Array of integers as input
# Output
# - print the result (average) rounded to 3 decimal places
# Rules
# - multiply all the numbers together, then divide the result by the number of entries in the Array

# EXAMPLES / TEST CASES
# - can assume the array is non-empty
# show_multiplicative_average([3, 5])
# The result is 7.500

# show_multiplicative_average([6])
# The result is 6.000

# show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667

# EDGE CASES 
# Handle floating numbers?

# ALGO
# - multiply all the numbers in the given array by each other
#     initialize 'running_total' = 1 and a 'counter' = 0
#     loop thru array, breaking the loop is 'counter' is more/eql to array.size
#     re-assign 'running_total' *= the current_value of array[counter]
#     increase counter by 1
# - divide the result by the number of elements in the array
#     divide 'running_total' by array.size making sure to surround it w/ ()
#     to call #round(3) on
# - result should be rounded to 3 decimal places
# - print result as a string, interpolate number, "The result is #{}"

def show_multiplicative_average(array)
  running_total = 1
  counter = 0

  loop do
    break if counter >= array.size
    running_total *= array[counter]
    counter += 1
  end

  result = ((running_total.to_f) / array.size)
  
  p "The result is #{format("%.03f", result)}"
end

puts show_multiplicative_average([3, 5]) == "The result is 7.500"

puts show_multiplicative_average([6]) == "The result is 6.000"

puts show_multiplicative_average([2, 5, 7, 11, 13, 17]) == "The result is 28361.667"
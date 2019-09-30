# UNDERSTANDING THE PROBLEM - write a method
# Input
# - Array (of Integers)
# Output
# - Array w/ same num of elements as original
# Rules
# - New Array must have the same number of elements as original
# - New Array's elements but be a running total of original's elements

# EXAMPLES / TEST CASES
# See below
# If orig. array is empty, a new empty array is returned


# DATA STRUCTURE
# Input: Array of numbers
# Rules as data: logic/code

# ALGORITHM
# - Create a new array w/ each element a running total from original array
# - Use #map to create a new array w/ transformed data from original
#  - **Outside of #map method, iniitalize 'sum' variable to equal nil
#  - iterate over original array, #map calling the current element 'current_value'
#  - reassign 'sum' to += current_value and call 'sum' on last line of block


# CODE
# def running_total(array)
#   sum = 0
#   array.map! do |current_value|
#     sum += current_value
#     sum
#   end
# end

# FURTHER EXPLORATION
def running_total(array)
  sum = 0
  array.each_with_object([]) do |value, array|
    array << sum += value
  end
end


puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
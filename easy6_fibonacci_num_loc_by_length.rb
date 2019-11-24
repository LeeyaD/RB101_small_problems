# UNDERSTAND THE PROBLEM
# Input: number representing a length
# Output: the index of the first Fibonacci # that has the length of the input #
# Rules
# - Can assume the arg will always be 2 or more
# - The first Fibonacci # has index 1
# Questions
# - What is a Fibonacci series? 
#   a series of numbers such that the first 2 #s are 1 by definition, and each 
#   subsequent # is the sum of the two previous numbers

# EXAMPLES / TEST CASES
# See below

# DATA STRUCTURE
# Input
# - Integer
# Rules rep as data
# - Array, we want to keep an ordered list of the series of numbers
#   and access them by index

# ALGORITHM
#  Write a method that calculates and returns the index of the first Fibonacci # 
#  that has the # of digits specified as an argument.
# **Initialize:
#   - 'counter' = 3, 'fibonacci' = [1, 1], fibonacci_index = nil
# 1. Create a Fibonacci number; do/while loop
#    - curr_value =  last element in array + the second to last element
#    - curr_value gets added to end array
#    - way to increase counter: counter += 1
#    - way to exit loop: break if input equals curr_value.length
#    - 

# CODE

def find_fibonacci_index_by_length(input)
  fibonacci = [1, 1]

  loop do
    curr_value = fibonacci[-1] + fibonacci[-2]
    fibonacci << curr_value
    
    break if curr_value.to_s.length >= input
  end

  (fibonacci.index(fibonacci[-1]) + 1)
end


puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
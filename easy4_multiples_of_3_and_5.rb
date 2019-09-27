# UNDERSTAND THE PROBLEM - Write a method
# Input
# - Integer number greater than 1 (assumed no need to validate)
# Output
# - Sum of all multiples of 3 and 5 from 1 upto passed in Integer number
# Rules
#  Explicit req.
#  - Multiples can only be of 3 and 5
#  - Integer number given is greater than 1
#  Implicit req.
#  - (based on examples) multiples go upto and include given number


# EXAMPLES / TEST CASES
#  - See below

# DATA STRUCTURE
# Input
# - Intgeger number
# Rules as data
# - data or logic/code? 
#  - data: array to store our collection of multiples to add

# ALGORITHM
# - initialize an empty array at the top of the method called 'multiples_of_3_and_5'
# - call Integer#upto on 1 and pass in the given Integer number as the argument so that it serves as 
#   the limit, so we'll be itereating from 1 up to and including, the Integer number.
#   - in #upto's block shovel into arr, the current value 'i' if it can be evenly divisible by 3 and 5
# - after iteration, call arr and chain Array#sum to it so that our return value for it, as well as the 
#   method, is the sum of all the multiples of 3 and 5 from 1 upto (and including) the passed in Integer
#   number

# CODE
require 'pry'
def multiples_of_3_or_5(num)
  num % 3 == 0 || num % 5 == 0
end

def multisum(number)
  arr = []
  1.upto(number) do |i| 
    arr << i if multiples_of_3_or_5(i)
  end
  arr.sum
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
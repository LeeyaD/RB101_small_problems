#UNDERSTANDING A PROBLEM
# Input
# - string, 1 digit
# Output
# - input squared
# Rules
# - use #multiply method from previous exercise

#EXAMPLES / TEST CASES
# square(5) == 25
# square(-8) == 64

#DATA STRUCTURE
# Input: string
# Req. As Data: Number b/c we're doing math

# ALGORITHM
# - using #multiply, make num2 optional
# - IF num2
#     num1 * num2
# - ELSE
#     num1 * num1
# - END
# Rename method multiply_or_square
# * ALTERNATIVE
# * Using #multiply, remove num2
# * Change body to num1 * num1
require 'pry'
def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

puts square(5) == 25
puts square(-8) == 64
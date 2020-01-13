# UNDERSTAND THE PROBLEM
# Input
#  -one integer; can be positive, negative or 0
# Output
#  -a boolean value of true if the interger's absolute value is odd
# Rules
#  -can't use #odd? or #even? methods
#  -can assume argument is a valid integer value
# Important terms / concepts
#  -absolute value: distance from 0
#     -7 = absolute value of 7
#      7 = absolute value of 7

# EXAMPLES / TEST CASES
# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false

# DATA STRUCTURE
# -number

# ALGORITHM
# -method takes an integer argument and convert to it's absolute value
# -check if absolute value is odd by using modulo operator on it; 
#    -if it's equal to 0 it's even and method output should be false
#    -if it's not equal to 0 it's odd and method output should be true
# START
#  GET integer argument
#  SET abs_value = user_input converted to it's absolute value
#  IF abs_value % 2 != 0
#   OUTPUT true
#  ELSE
#   OUTPUT false
#  END
# END

def is_odd?(number)
  abs_value = number.abs
  abs_value % 2 != 0
end

is_odd?(-1642)

# SOLUTION
# def is_odd?(number)
# number % 2 == 1
# end
# see notes, pg. 4, for the diff btwn. mod & rem

# RE-WRITE w/ #remainder
def is_odd?(number)
  abs_value = number.abs
  abs_value.remainder(2) != 0
end

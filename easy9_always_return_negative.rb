# Write a method that takes a number as an argument. If the argument is a positive number, 
# return the negative of that number. If the number is 0 or negative, return the original number.

# Input: a positive or negative number
# Output: a negative of that number, unless input is a negative # or 0
# Edge Cases:
# - what about floats?

# ALGO
# - IF input, 'number' is == to 0 or || number.negative?
#     number
#   ELSE
#     -(number)
#   END

def negative(number)
  if number == 0 || number.negative?
    number
  else 
    -(number)
  end
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
# UNDERSTAND THE PROBLEM
#  Input
#   -2 args
#    > a positive integer
#    > a boolean
#  Output
#   - Bonus for a given salary, rep. by an integer
#  Rules
#   - if boolean is true, bonus is half of salary
#   - if boolean is false, bonus is 0

# EXAMPLES / TEST CASES
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000
# tests above should print TRUE

# DATA STRUCTURE
#  integer b/c we'll be doing math

# ALGORITHM
# - if boolean is true, SUBPROCESS "calculate bonus"
#   - SUBPROCESS: Bonus is half the given salar
# - if boolean is false, bonus is 0

def calculate_bonus(num, boolean)
  if boolean == true
    num / 2
  else
    0
  end
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

# UNDERSTAND THE PROBLEM - write a method
# Input
# - integer (a year)
# Output
# - boolean value; true or false
# Rules
# - Explicit requirements
#  - leap years ARE evenly divisible by 4 UNLESS it's also evenly divisible by 100
#  - a year evenly disisible by 100 isnt a leap year unless it's ALSO evenly divisible by 400: AND
#  - input must be greater than 0
# - Implicit requirements

# EXAMPLES / TEST CASES
# See below

# DATA STRUCTURE
# Input
# - integer
# Rules represented as data
# - as data or logic/code?
#   - logic/code: if statement

# ALGORITHM

# CODE
def leap_year?(year)
  (year % 4) == 0 && (year % 100) != 0 || (year % 400) == 0
end


puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true
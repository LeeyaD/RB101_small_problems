# Understand the Problem - write a method
# Input
#  - a string
# Output
#  - ASCII value of string
# Rules
#  - ASCII string value is the sum of all the indiv. ascii char values
#  - can use String#ord to determine the value of each car

# Examples / Test Problems
# See below

# Data Structure
# Input: a string of numbers
# Rule rep.: an array 

# Algorithm
# 1. convert given string into an array of characters, using #split
# 2. transform each element in array into it's ascii value
# 3. sum up all element values in array

# Code
require 'pry'
def ascii_value(string)
  string.split("").map(&:ord).sum
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0

# Further Exploration

char.ord.mystery == char
# .mystery is String#chr
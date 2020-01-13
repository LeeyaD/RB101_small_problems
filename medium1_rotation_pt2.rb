require 'pry'
require 'pry-byebug'
# Write a method that can rotate the last n digits of a number. 

# Note that rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if you want. (Recommended!)

# You may assume that n is always a positive integer.

# THE PROBLEM
# Input: 2 arguments;
#  1. a number to be rotated
#  2. a number that determines how many digits are rotated in the first argument
# Output: a number
# Rules:
# -Implicit:
# 1. 
# -Explicit:
# - can use #rotate_array from previous problem
# - n is always a positive #
# 3. rotating just 1 digit returns the original # given
# Questions:
# 1. What is 2nd arg is more than the # of digits in 1st arg?
# 2. 

# EDGE CASES
# 1. n may be large than digits in given number (i.e. 1st arg)

# DATA STRUCTURE
# Input: Integer
# Rules rep.: REVIEW

# ALGO
# rotate the last n digits of the given number (1st arg)
# n being the integer passed in as the 2nd arg
# starting from the last digit in arg #1, select n number of digits (as per arg#2) and rotate using #rotate_array
# if n is 1, array[-1]
# if n is 2, array[-2..-1]
# if n is 3, array[-3..-1]

def rotate_array(array)
  array[1..-1] << array[0]
end

def rotate_numbers(num)
  rotate_array(num.to_s.chars).join.to_i
end

def rotate_rightmost_digits(digits, num_of_digits)
  string_digits = digits.to_s
  to_rotate = string_digits.slice!(-num_of_digits, num_of_digits)
  rotated_digits = rotate_array(to_rotate.chars)
  (string_digits + rotated_digits.join).to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
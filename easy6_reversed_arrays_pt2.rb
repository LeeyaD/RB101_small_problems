# UNDERSTAND THE PROBLEM
# Input
# - an array object
# Output
# - new array object w/ the elements reversed
# Rules
# - Can't use Array#reverse, Array#reverse, nor method from previous problem
# - Only reverse Array elements, not the elements themselves

# EXAMPLES / TEST CASES
# See below

# DATA STRUCTURE
# Input
# - An array
# Rules represented as data
# - Array

# ALGORITHM
#  Take array given as argument, reverse it's elements and return a new Array object

# CODE

def reverse(list)
  new_list = []

  list.each do |e|
    new_list.unshift(e)
  end

  new_list
end

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true
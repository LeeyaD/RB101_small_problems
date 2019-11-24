# UNDERSTAND THE PROBLEM
# Input
# - an array object
# Output
# - same array object w/ it's elements reversed
# Rules
# - Can't use Array#reverse or Array#reverse!
# - Only reverse Array elements, not the elements themselves

# EXAMPLES / TEST CASES
# See below

# DATA STRUCTURE
# Input
# - An array
# Rules represented as data
# - Array

# ALGORITHM
#  Take array given as argument, reverse it's elements and return same Array object
#  1. Walk through Array using Array#map! to transform it
#     1st idx, 0, reassign to last idx, -1 > -(0)-1
#     2nd idx, 1, reassign to 2nd to last idx, -2 >> -(1)-1
#     3rd idx, 2, reassign to 3rd to last idx, -3 >> -(2)-1
#     and so on

# CODE

def reverse(list)
  copy = list[0, list.size]
  
  list.map! do |e|
    e = copy[-(copy.index(e)) - 1]
  end

  list
end

list = [1,2,3,4]
result = reverse!(list)
puts result == [4, 3, 2, 1]
puts list == [4, 3, 2, 1]
puts list.object_id == result.object_id

list = %w(a b e d c)
puts reverse!(list) == ["c", "d", "e", "b", "a"]
puts list == ["c", "d", "e", "b", "a"]

list = ['abc']
puts reverse!(list) == ["abc"]
puts list == ["abc"]

list = []
puts reverse!(list) == []
puts list == []
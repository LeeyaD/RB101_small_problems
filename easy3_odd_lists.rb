# UNDERSTANDING THE PROBLEM - write a method
# Input
# - an Array of numbers
# Return
# - an Array of every other element of Array that is passed in as an argument
# Rules
# - values returned should be those that are in the 1st, 3rd, 5th, etc. place

# EXAMPLES / TEST CASES
# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []

# DATA STRUCTURE
# Input: Array
# Rules as data: Array b/c we need to walk through it

# ALGORITHM
# Given an Array of elements, pick out every other element starting with the first and return them in a new Array
#  walk through the given array, selecting every other element (i.e. at index 0, 2, 4, etc)
#  iterate through passed in Array, selecting only the even indexed element and return them in a new Array

def oddities(array) # first solution
  new_array = []
  array.each_with_index do |e, i|
    new_array << e if i.even?
  end
  new_array
end

def oddities(array)  # second solution
  new_array = []
  index = 0
  while array[index] != nil
    new_array << array[index]
    index += 2
  end
  new_array
end

def oddities(array)  # third solution
  array.select.with_index {|e, i| i.even?}
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

def evens(array)  # flipped method
  new_array = []
  array.each_with_index do |e, i|
    new_array << e if i.odd?
  end
  new_array
end

puts evens([2, 3, 4, 5, 6]) == [3, 5]
puts evens([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
puts evens(['abc', 'def']) == ['def']
puts evens([123]) == []
puts evens([]) == []
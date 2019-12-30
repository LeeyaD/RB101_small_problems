# THE PROBLEM

# Input: an array
# Output: a new 'rotated' array
# Rules
# - explicit:
#   - 'rotated': moving the first element to the end of the array
#   - can't use the method Array#rotate or Array#rotate!
#   - original array should not be modified
# - implicit:
# Questions:
# - how to handle an empty array?
# - if dealing w/ a nested array, only rotate elements in top-most level?

# EDGE CASES
# none that I can think of...

# DATA STRUCTURE
# Input: an array
# Rules Rep.: array, no logic needed

# ALGO
# clone given array to the variable 'new_array'
# remove first element of 'new_array' with #delete_at(0), assigning the return to the variable 'rotated_element'
# add 'rotated_element' to the end of 'new_array' w/ the shovel method, <<

def rotate_array(array)
  new_array = array.clone
  rotated_element = new_array.delete_at(0)
  new_array << rotated_element
end


p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# FURTHER EXPLORATION
# rotate strings & numbers

def rotate_strings(string)
  rotate_array(string.chars).join
end

p rotate_strings('apple') == 'pplea'
p rotate_strings('ba') == 'ab'
p rotate_strings('p') == 'p'


def rotate_numbers(num)
  rotate_array(num.to_s.chars).join.to_i
end

p rotate_numbers(12345) == 23451
p rotate_numbers(23) == 32
p rotate_numbers(5) == 5
# Write a method that takes a non-empty string argument, and returns the middle character or characters of the
# argument. If the argument has an odd length, you should return exactly one character. If the argument has an
# even length, you should return exactly two characters.

# ALGO
# - divide the size of the string by 2 and bind to var 'middle_num'
# - determine if the size of the string is even or odd
# - if the string size is even
#     return the char at index 'middle_num' and the next one
# - if the string size is odd
#     return the char at index 'middle_num' + 1
require 'pry'
def center_of(string)
  middle_idx = string.size / 2

  if string.size.even?
    string[(middle_idx - 1), 2]
  else
    string[middle_idx]
  end 
end
p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
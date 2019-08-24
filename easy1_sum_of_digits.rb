=begin
UNDERSTAND THE PROBLEM
  Input
  -one arg, a positive integer
  Output
    -sum of its digits
  Rules
    **try writing w/o basic looping constructs

EXAMPLES / TEST CASES
  sum(23) == 5
  sum(496) == 19
  sum(123_456_789) == 45
*tests should print TRUE

DATA STRUCTURE
  numbers

ALGORITHM
  add and output digits of given number
  convert number to a string
  separate digits with #char and add together elements in array w/ #sum
=end

def sum(number)
  number.to_s.chars.map {|n| n.to_i}.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
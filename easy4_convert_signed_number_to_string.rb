require 'pry'

STRINGS = { 
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(integer)
  string = integer.digits.reverse.map {|num| [STRINGS[num]]}.flatten
  string.size > 1 ? string.join : string[0]
end

def signed_integer_to_string(integer)
  if integer > 0
    "+#{integer_to_string(integer)}"
  else integer <= 0 
    "#{integer}"
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
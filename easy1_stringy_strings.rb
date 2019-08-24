#UNDERSTAND THE PROBLEM
# Input
# -a positive number
# Output
# -a string of alternating 1's and 0's
# Rule(s)
# -output must always start with a 1
# -length of string should match given integer
# Questions
# -if number isn't positive, return an error?

#EXAMPLES / TEST CASES
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
#the above tests should evaluate to TRUE

#DATA STRUCTURE
# Input
# -a positive number
# DS: integer


#ALGORITHM
# START
#  SET num = argument (positive number)
#  SET iteration = 1
#  SET string = "1"
#  UNTIL iteration == num
#   -string.chars.last == "1"? string + "0" : string + "1"
#   -iteration += 1
# END
#  -if the last character of the string is "1", add a "0"
#  -if the last character of the string is "0", add a "1"
# -increase iteration by 1
# -loop breaks when iteration == given number

def stringy(number)
  iteration = 1
  string = "1"

  until iteration == number
    string.chars.last == "1" ? string += "0" : string += "1"
    iteration += 1
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

#FURTHER EXPLORATION
# Modify stringy so it takes an optional argument that defaults to 1. 
# If the method is called with this argument set to 0, the method should return a String of alternating 
# 0s and 1s, but starting with 0 instead of 1.

def stringy(number, start=1)
  iteration = 1
  start == 1 ? string = "1" : string = "0"
  # binding.pry
  until iteration == number
    if string.chars.last == "1"
      string += "0"
    else
      string += "1"
    end
    iteration += 1
  end
  string
end

puts stringy(6) == '101010'
puts stringy(3, 0) == '010'
puts stringy(4, 0) == '0101'
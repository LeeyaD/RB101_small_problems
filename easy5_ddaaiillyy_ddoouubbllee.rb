# UNDERSTAND THE PROBLEM
# Input
# - a string
# Output
# - a new string w/ value of orig. string but w/ all consecutive duplicate
#   characters collapsed into a single character
#Rules
# - Cannot use String#squeeze nor String#squeeze!

# EXAMPLES / TEST CASES
# see below

# DATA STRUCTURE
# Input: a string
# Rules rep as data: Array

# ALGORITHM
# - initialize an empty string called daily_double
# - split given string into an Array & walk thru it chaining String#chars & Enumerable#each
# - shovel currrent character into 'daily_double' if it equates to daily_double#end_with?
# - return 'daily_double'

# CODE
require 'Pry'

def crunch(string)
  daily_double = ""
  string.chars.each do |char|
    #daily_double << char unless daily_double.end_with?(char)
    daily_double << char unless char == /#{char}/
  end

  daily_double
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
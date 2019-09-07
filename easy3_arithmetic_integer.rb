# UNDERSTAND THE PROBLEM
# Input
# - integers, two positive numbers
# Output
# - results of a list of operations on the two numbers given
# Rules
# - don't worry about validating the input

# EXAMPLES / TEST CASES
# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103

# DATA STRUCTURE
# Input: string
# Rules/Requirements as Data: array

# ALGORITHM
# - SET constant, OPERATORS, equal to an array of numeric operators as the elements
# - prompt user for input, saving it to 'first' and 'second' variable respectively
# - create a method that, takes in 2 arguments; first & second, and...
#   - walks thru OPERATORS passing each element, 'op', to #send as the first argument
#   - calculates result of current 'op' and puts out "#{first} #{op} #{second} = #{result}"

OPERATORS = [:+, :-, :*, :/, :%, :**]

puts "==> Enter the first number:"
first = gets.chomp.to_i

puts "==> Enter the second number:"
second = gets.chomp.to_i

OPERATORS.each do |op|
  result = first.send(op, second)
  puts "#{first} #{op} #{second} = #{result}"
end

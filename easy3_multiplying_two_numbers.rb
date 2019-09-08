#UNDERSTAND THE PROBLEM
# Input
# - strings, 2 numbers
# Output
# - the result of multiplying two numbers
# Rules
# - 2 numbers passed into method will be multiplied with each other

#EXAMPLES / TEST CASES
# multiply(5, 3) == 15



#DATA STRUCTURES
# Input: string
# Requirements as Data: numbers b/c we're doing math

#ALGORITHM
# - definte #multiply w/ 2 parameters 'num1' and 'num2'
# - multiply them with each other, puts'ing out the answer

def multiply(num1, num2)
  num1 * num2
end

puts multiply(5, 3) == 15
puts multiply([1, 2, 3], 3)
puts multiply("hi", 3)
#puts multiply(3, "hi") => String can't be coerced into Integer (TypeError)
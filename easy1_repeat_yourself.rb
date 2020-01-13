#UNDERSTAND THE PROBLEM:
# Input
#  - 2 arguements
#   - 1 string 
#   - 1 positive integer (meaning above zero)
# Output
#  - the string outputted as many times as the integer given
# Example
#  repeat('Hello', 3) => Hello\n Hello\n Hello\n
# Questions
#  -what about an empty string?
#  -raise an error if user supplies an invalid number?

# EXAMPLES / TEST CASES
# repeat('Hi', 3)
# repeat(' ', 3)
# repeat('Hello', -5)

# DATA STRUCTURE
#  -string & integer

# ALGORITHM
#  -get string and positive integer from user, aving both to 2 variables (number & string respectively)
#  -call #times on number with a block that outputs string

# def repeat(string, number)
#   number.times do
#     puts string
#   end
# end

# loop do
#   puts "Repeat Yourself!"
#   puts "Think of a word or sentence and think of the number of times you'd like to see that word or sentence!"
#    puts "What word or sentence are you thinking about?"
#   string = gets.chomp

#   puts "How many times would you like to see it?"
#   number = gets.chomp.to_i

#   if number > 0 && string.strip.length > 0
#     repeat(string, number)
#     break
#   elsif string.strip.length == 0
#     puts "You must enter a word or sentence."
#   else 
#     puts "You must choose a positive number."
#   end
# end



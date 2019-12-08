# Write a method that takes two arguments: the first is the starting number, and the second is the ending number. 
# Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", 
# if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

# ALGO
# - assign 2 arg to local variables 'start_num' and 'end_num' respectively
# - Using #upto method... do |num|
#   IF num % 3 == 0 && num % 5 == 0
#     p "FizzBuzz"

def fizzbuzz(start_num, end_num)
  start_num.upto(end_num) do |num|
    if num % 3 == 0 && num % 5 == 0
      p "FizzBuzz"
    elsif num % 3 == 0
      p "Fizz"
    elsif num % 5 == 0
      p "Buzz"
    else
      p num
    end
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
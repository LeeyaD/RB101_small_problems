# UNDERSTAND THE PROBLEM
# Input
# - a number > 0
# Output
# - the sum or product of the integers between 1 and the number given
# Rules
# - 's' computes the sum
# - 'p' computes the product
# Questions
# - are floats allowed?

# EXAMPLES / TEST CASES
# 5, s > 15
# 6, p > 720

# DATA STRUCTURE
# integers b/c we'll be doing math

# ALGORITHM
# - GET number > 0 from user and SET 'number' equal to it
# -- number must be a valid number AND above 0
# - GET 's' or 's' from user to compute the sum or product of
#   consecutive #'s from 1 to 'number'
# - SUBPROCESS 'compute sum'
# -- create a range from 1 to 'number', turn into an array and walk thru data
# -- SET 'num' equal to 0 outside of iterator
# -- interatating > re-assign 'num' += to each consecutive element
# -- return'num'
# - SUBPROCESS 'comput product'

def valid_number?(number)
  number.to_i.to_s == number && number.to_i > 0
end

def rec_number
  loop do
    puts ">> Please enter an integer greater than 0:"
    number = gets.chomp
    return number if valid_number?(number)
    puts "That's not a valid number, try again."
  end
end

def sum_or_product
  loop do
    puts ">> Enter 's' to compute the sum, 'p' to compute the product."
    compute = gets.chomp.downcase
    return compute if %w(s p).include?(compute)
    puts "That's not a valid option, try again"
  end
end

def computation(compute, number)
  range = (1..number.to_i).to_a
  case compute
  when 'p'
    [product(range), 'product']
  when 's'
    [sum(range), 'sum']
  end
end

def product(range)
  range.inject { |org, i| org *= i }
end

def sum(range)
  range.inject { |org, i| org += i }
end

number = rec_number

total = computation(sum_or_product, number)

puts "The #{total[1]} of the integers between 1 and #{number} is #{total[0]}."

# UNDERSTAND THE PROBLEM
# Input
#  bill amount > integer < input from user when prompted
#  tip rate > percentage > integer < input from user when prompted
# Output
#  tip amount > float
#  total bill amount > float
# Rules
#  integer multiplied by 0.01 equals percentage
# Questions
#  Can tip be 0?

# EXAMPLES / TEST CASES
# puts tip_calculator(200, 15) ==  The tip is $30.0 / The total is $230.0
# puts tip_calculator(124, 0) ==  The tip is $0.0 / The total is $124.0
# puts tip_calculator(50, 13) ==  The tip is $6.5 / The total is $56.5
# puts tip_calculator(75, 1) ==  The tip is $0.75 / The total is $75.75

# DATA STRUCTURE
#  number b/c we need to do math

# ALGORITHM
#  prompt for bill and tip amount -- don't worry about validation for now...
#  set variable tip_rate equal to SUBPROCESS "turn integer into a percentage"
#  - SUBPROCESS integer times 0.01 equals percentage
#  multiply bill and tip_rate, set value equal to tip_amount variable
#  set variable, total_bill equal to bill plus tip_amount
#  interpolate tip_amount and total_bill in their respective strings to output

def tip_calculator(bill, tip)
  tip_rate = tip * 0.01
  tip_amount = (bill * tip_rate).round(2)
  total_bill = (bill + tip_amount).round(2)
  puts "The tip is $#{format('%.02f', tip_amount)}"
  puts "The total is $#{format('%.02f', total_bill)}"
end
# format('pad float 2 decimal spaces AFTER decimal point',
# arg needing formatting)
puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip = gets.chomp.to_f

tip_calculator(bill, tip)

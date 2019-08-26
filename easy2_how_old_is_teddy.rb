# UNDERSTAND THE PROBLEM
#  Input
#   -none
#  Output
#   -a random number interpolated in a string
#  Rules
#   -number must be BETWEEN 20 and 200
#  Questions
#   -between as in NOT including 20 or 200?

# EXAMPLES / TEST CASES (EXPECTED OUTPUT)
# Teddy is 69 years old!

# DATA STRUCTURE
# range for age and integer to insert into string

# ALGORITHM
# - generate a random number between 20 to 200

def teddys_age
  puts "Teddy is #{(20...200).to_a.sample} years old!"
end

teddys_age

# create a PROGRAM not just a method!
age = rand(20..200)
puts "Teddy is #{age} years old!"
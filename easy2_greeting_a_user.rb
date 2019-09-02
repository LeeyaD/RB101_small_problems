#UNDERSTAND THE PROBLEM
# Input
# - string, user's name
# Output
# - greeting w/ user's name
# Rules
# - if user's input includes an '!', greeting will be in ALL CAPS

#EXAMPLES / TEST CASES
# puts greeting("Leeya") == "Hello Leeya."
# puts greeting("LEEYA") == "Hello Leeya."
# puts greeting("Leeya!") == "HELLO LEEYA!"
# puts greeting("leeya!") == "HELLO LEEYA!"

#DATA STRUCTURE
# string

#ALGORITHM
# - prompt user for their name
# - if name includes '!'
#  - greet in ALLCAPS w/ '!'
#  - otherwise, greet normally w/ '.'
# START
# GET name from user and SET it equal to 'name'
# IF name includes '!'
# OUTPUT allcaps greeting
# ELSE
# OUTPUT regular greeting

def greeting(name)
  if name.include?("!") 
    "HELLO #{name.upcase}"
  else 
    "Hello #{name}."
  end 
end

puts "What's your name? "
name = gets.chomp
puts greeting(name)

puts greeting("Leeya") == "Hello Leeya."
puts greeting("LEEYA") == "Hello LEEYA."
puts greeting("Leeya!") == "HELLO LEEYA!"
puts greeting("leeya!") == "HELLO LEEYA!"


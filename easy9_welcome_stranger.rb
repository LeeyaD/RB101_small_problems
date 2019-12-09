# Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, 
# when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title 
# and :occupation, and the appropriate values. Your method should return a greeting that uses the person's 
# full name, and mentions the person's title and occupation.

# Input: 2 arg; an array and a hash
# Output: a String
# ALGO
# - combine elemtns in array with a space in between bind to var 'name'
# - interpolate name and two values of hash into the string
require 'pry'
def greetings(array, hash)
  name = array.join(" ")
  "Hello, #{name}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) #== "=> Hello, John Q Doe! Nice to have a Master Plumber around."
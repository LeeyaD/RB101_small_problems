# UNDERSTANDING THE PROBLEM - write a method
# Input
# - String
# Output
# - Boolean value: TRUE if string is a palindrome, otherwise FALSE
# Rules
# - Same as before BUT it's case doesn't matter and it should ignore non-alphanumeric characters
# - can call previous method if it helps

# EXAMPLES / TEST CASES
# palindrome?('madam') == true
# palindrome?('Madam') == true          # (case DOES NOT matters)
# palindrome?("madam i'm adam") == true # (ONLY alphanumeric characters matter)
# palindrome?('356653') == true

# DATA STRUCTURE
# Input: string
# Rules as data: 

# ALGORITHM
# Determine is the given string is a palindrome (ignoring case & non-alphanumeric characters)
# Downcase input and SUBPROCESS remove non-word characters
require 'pry'
def palindrome?(string)
  string.reverse == string
end

def palindromic?(string)
  bare_string = string.downcase.gsub(/\W/, "")
  palindrome?(bare_string)
end

puts palindromic?('madam') == true
puts palindromic?('Madam') == true          # (case DOES NOT matters)
puts palindromic?("madam i'm adam") == true # (ONLY alphanumeric characters matter)
puts palindromic?('356653') == true
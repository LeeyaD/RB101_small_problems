# Write a method that takes a string, and returns a new string in which every character is doubled.

# ALGO
# Input: String
# Output: String

# iterate thru each character and double it

def repeater(string)
  doubled = ""
  string.each_char do |char|
    doubled << char * 2
  end
  doubled
end
p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
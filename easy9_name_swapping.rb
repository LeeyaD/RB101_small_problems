# Write a method that takes a first name, a space, and a last name passed as a single String argument,
# and returns a string that contains the last name, a comma, a space, and the first name.

# Input: single String (first name, a space, and a last name)
# Output: String that contains the last name, a comma, a space, and the first name

# ALGO
# split string into an array and reverse it
# join array into a string separate by a comma and space

def swap_name(string)
  string.split.reverse.join(", ")
end
 
p swap_name('Joe Roberts') == 'Roberts, Joe'
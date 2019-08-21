#Write a method that counts the number of occurrences of each element in a given array.

# UNDERSTAND THE PROBLEM
# Input
#  -an array of strings
# Output
#  -a hash where...
#   -keys represent the element in the given array
#   -values represent the number of occurrences of the element in the given array
# Rule
# -elements are case-sensitive, suv != SUV

# EXAMPLES / TEST CASES
vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck','motorcycle', 'motorcycle', 'car', 'truck']
#=> {car => 4, truck => 3, SUV => 1, motorcycle => 2}
cars = ['car', 'car', 'CAR', 'CAR', 'CaR', 'CAr']
#=> {car => 2, CAR => 2, CaR => 1, CAr => 1}

# DATA STRUCTURE
# -array b/c we want to walk through the data as we collect it
# -hash to create and output a look-up table

# ALGORITHM
# -take in argument, 'vehicles' represented by an array of elements
# -initialize an empty hash called 'frequency' at the top of the method
# -using a loop iterate through 'vehicles'
#  -if element doesn't exist in 'frequency' hash as a key; we'll use the bracket equals ([]=) method to 
#   add it as a key and assign it a value of 1
#  -if element already exists as a key in 'frequency' hash; we'll use bracket equals ([]=) method to 
#   increase that key's value by 1
#  -in both cases, the current element in iteration will be removed from the array with #delete()
#  -loop will stop once array.empty? evaluates to true
# -output 'frequency' hash
require 'Pry'
def count_occurrences(vehicles)
  frequency = {}
  until vehicles.empty?
    vehicles.map do |vehicle|
      binding.pry
      if frequency[vehicle].nil?
        frequency[vehicle] = 1
      else 
        frequency[vehicle] += 1
      end
      vehicles.shift
    end
  end
  puts frequency
end

count_occurrences(vehicles)
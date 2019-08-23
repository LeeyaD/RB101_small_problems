#Write a method that counts the number of occurrences of each element in a given array.

# UNDERSTAND THE PROBLEM
# Input
#  -an array of strings
# Output
#  -a hash where...
#   -keys are the element from the given array
#   -values are the number of times the element appeared in the given array
# Rule
# -elements are case-sensitive, i.e. suv != SUV

# EXAMPLES / TEST CASES
vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck','motorcycle', 'motorcycle', 'car', 'truck']
#=> {car => 4, truck => 3, SUV => 1, motorcycle => 2}
cars = ['car', 'car', 'CAR', 'CAR', 'CaR', 'CAr']
#=> {car => 2, CAR => 2, CaR => 1, CAr => 1}

# DATA STRUCTURE
# -array b/c we want to walk through the data as we collect from it
# -hash to create and output a look-up table {element: # of occurrences}

# ALGORITHM
#  START
#    Given 'vehicles' array
#  SET 'frequency' = {}
#
#  Iterate through 'vehicles' array w/ #each
#  IF element isn't in 'frequency' hash as a key
#    Use the bracket equals ([]=) method to add element to hash and give it a value vehicles
#  ELSE (element is already a key)
#    Use bracket equals ([]=) method to increase key's value by 1
#  END
#    Remove element from array with Array#shift
#  END
#  PRINT 'frequency' hash
#  END

require 'Pry'
def count_occurrences(vehicles)
  frequency = {}
    vehicles.each do |vehicle|
      # binding.pry
      if frequency[vehicle].nil?
        frequency[vehicle] = vehicles.count(vehicle)
      end
    end
  puts frequency
end

count_occurrences(vehicles)
count_occurrences(cars)
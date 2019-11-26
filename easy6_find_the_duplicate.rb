# UNDERSTAND THE PROBLEM
# Input
# - an unordered array of numbers
# Output
# - the duplicate value
# Rules
# - exactly 1 value appears twice
# - remaining values appear only once

# EXAMPLES / TEST CASES
# See below

# DATA STRUCTURE
# Input
# - an unordered array of numbers
# Rules rep as data
# - code

# ALGORITHM
# 1. Walk thru array & select the value that appears twice
# 2. Initialize 'current_value' and 'comparison_value' equal to nil, and
#    'counter' equal to 0
# 3. Loop thru array
#      break if counter >= array.size
#      'current_value' equals array[counter]
#      IF 'current_value' == 'comparison_value'
#        return 'current_value'
#      ELSE
#        'comparison_value' = 'current_value'

# CODE

def find_dup(array)
  current_value = nil
  comparison_value = nil
  counter = 0

  array = array.sort

  loop do
    break if counter >= array.size
    current_value = array[counter]
    
    return current_value if current_value == comparison_value
    comparison_value = current_value

    counter += 1
  end
end

puts find_dup([1, 5, 3, 1]) == 1
puts find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
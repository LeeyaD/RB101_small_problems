# UNDERSTAND THE PROBLEM
#  Input
#   -an array of numbers
#  Output
#   -the average of all the numbers in the array

# EXAMPLES / TEST CASES
#  puts average([1, 5, 87, 45, 8, 8]) == 25
#  puts average([9, 47, 23, 95, 16, 52]) == 40
#  tests should print TRUE

# DATA STRUCTURE
#  -array of numbers

# ALGORITHM
#  -add all of the numbers up in an array
#  -divide the sum of all the elements by how many elements exists
#  -output result

#   FORMAL PSEUDO-CODE
#   SET sum = SUBPROCESS_1 "add all of the numbers up in an array"
#   SET average = SUBPROCESS_2 "divide sum by how many elements exists"
#   PRINT average

#   SUBPROCESSES
#   1) iterate thru array adding each element to the previous until you
#     have a final amount
#     SET sum = 0
#     SET iteration = 0
#     SET final_sum = WHILE iteration <= array.length
#                     -sum += array[iteration]
#                     -iteration += 1
#   2) SET average = final_sum / array.length
#     PRINT AVERAGE

def array_average(array)
  sum = 0
  iteration = 0

  while iteration <= array.length - 1
    sum += array[iteration]
    iteration += 1
  end

  sum / array.length
end

puts array_average([1, 5, 87, 45, 8, 8]) == 25
puts array_average([9, 47, 23, 95, 16, 52]) == 40

# FURTHER EXPLORATION
#  change the return value of 'average' from an Int to a Float

def average(array)
  sum = 0
  iteration = 0

  while iteration <= array.length - 1
    sum += array[iteration]
    iteration += 1
  end

  sum.to_f / array.length
end

puts average([1, 5, 87, 45, 8, 8])

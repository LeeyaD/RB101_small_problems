# Write a method which takes a grocery list (array) of fruits with quantities and converts it into an
# array of the correct number of each fruit.

# Input: 2 dimensional array. An array of fruits and quantities, each in a nested array; fruit the first element, 
# quantity the second element
# Output: an array of the correct number of each fruit

# ALGO
# SET 'list' = []
# Iterate through array to reach sub_array
# loop through and shovel fruit into 'list' x amount of times (based on quantity)

def buy_fruit(array)
  list = []
  array.each do |item|
    item[1].times do
      list << item[0]
    end
  end

  list
end
p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]
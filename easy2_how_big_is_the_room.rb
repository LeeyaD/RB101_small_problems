# UNDERSTAND THE PROBLEM
#  Input
#   - integers (length & width of a room)
#  Output
#   - squared integers and floats (the area of a room in meters & feet)
#  Rules
#   - 1 square meter == 10.7639 square feet
#   - no need to validate 

# EXAMPLES / TEST CASES
# - length: 10, width: 7 => 70.0 square meters (753.47 square feet)
# - length: 0.5, width: 2 => 1.0 square meters (10.76 square feet)
# - length: 15, width 8.7 => 130.5 square meters (1404.69 square feet)

# DATA STRUCTURE
# - floats

# ALGORITHM
# - request length and width of room from user
# - multiply both numbers for square meters & save value to variable
# - multiply variable by 10.7369 for square feet
# - output both results in a string

puts "Let's find out how big your room is!"
puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

sq_meters = length * width
sq_feet = (sq_meters * 10.7639).round(2)

puts "The area of the room is #{sq_meters} square meters (#{sq_feet} square feet)."
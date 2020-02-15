# # Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

# # Input: There are 2, both are Integers
# # 1. Is the bill amount
# # 2. Is the tip rate
# # - is a float valid input? If not, raise an error? Repeat prompt?
# # - what happens if more than 100% is entered? Raise an error? Repeat prompt with additional warning message? Default to 100%?
# # - what if bill is $0? Raise error? Repeat prompt with additional warning message?

# # Output: There are 2, both are Floats
# # 1. Is the tip amount
# # 2. Is the total amount of the bill

# # Rules: 
# # - program should prompt for the inputs first

# # Approach
# # 1. Prompt user for bill amount & tip rate
# # 2. Calculate tip and output results
# # 3. Calculate bill total, tip included, & output results

# =begin
#  ALGO
#  1. Print question "What is the bill?" & use #gets.chomp to receive first input, assign to 'bill' variable
#     Print next question "What is the tip percentage?", use #gets.chomp to receive second arg, assign to 'tip' variable
#  2. Convert 'tip' to a float & divide by 100, then times result by bill amount, save result to 'tip_amount' variable, output result in "The tip is #{}" string
#  3. Convert 'bill' to an Integer, add 'tip_amount' & output result in "The total is #{}" string
# =end

# def tip_calculator(bill, tip)
#   tip _amount = (tip.to_i / 100.0) * bill
#   p tip_amount
# end

# p "What is the bill?"
# bill = gets.chomp

# p "What is the tip percentage?"
# tip = gets.chomp

# tip_calculator(bill, tip)

# # What is the bill? 200
# # What is the tip percentage? 15

# # The tip is $30.0
# # The total is $230.0

# -----------------
# # Task
# # In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.
# # Rules
# # 1.  The input string will always be lower case but maybe empty.
# # 2.  If the character in the string is whitespace then pass over it as if it was an empty seat.
# # Example
# # wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

# =begin
# input = string
# output = array of strings

# Rules: 
# explicit: - input will be lowercase or empty
#           - if character is whitespace, pass over it as if it weren't there
# implicit: - whitespace preserved in output
#           - empty string gives blank array
#           - tabs?

# approach: 
# init a results array
# Split input into array
# Iterate over characters
#   At each char, upcase letter
#   If space, next
#   Create a new string with that char at the position of orig char
#     concatenate indexes up to + e + indexes after
    
#   Append that new string to results array
# Return array
# =end

# def wave(string)
#   results = []
#   string.chars.each_with_index do |e, i|
#     next if e.match?(/\s/)
#     up_letter = e.upcase
#     if i == 0
#       new_str = up_letter + string[(i+1)..-1]
#     else
#       new_str = string[0..(i-1)] + up_letter + string[(i+1)..-1]
#     end
#     results << new_str
#   end
#   results
# end

# p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

# p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]

# p wave("") == [] 

# p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]

# p wave(" gap ") == [" Gap ", " gAp ", " gaP "]

def alphabet_position(string)
  alphabet = ("a".."z").to_a
  clean_string = string.gsub(/\W/, "").downcase.chars
  clean_string.each_with_object("") do |letter, r_string|
    r_string << alphabet.index(letter) + 1
  end
  
end


p alphabet_position("The sunset sets at twelve o' clock.") #== "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
#UNDERSTAND THE PROBLEM
# Input
# -string, 1+ words
# Output
# -string
# Rules
# -words containing 5+ characters are reversed
# -words containing < 5 characters are left as is
# -each string will consist of only letters and spaces
# -spaces should only be included when > 1 word is present 


#EXAMPLES / TEST CASES
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS
# puts reverse_words('Be on the lookout')    # => Be on the tuokool
# puts reverse_words('Launch  ')             # => hcnuaL 

#DATA STRUCTURE
# -array
#  -to walk through sentence

#ALGORITHM
# -given sentence of 1+ words
# -split w/o delimeters (leading & trailing white space automatically removed)
# -set variable to equal = map to iterate through sentence, parameter rep. 'word'
#  -IF word has >= 5 characters, reverse
#  -IF word has < 5 character, leave 

def reverse_words(sentence)
  arr_of_words = sentence.split
  reversed_words = arr_of_words.map do |word|
    if word.length >= 5
      word.reverse 
    else
      word
    end
  end
  reversed_words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
puts reverse_words('Be on the lookout')     # => Be on the tuokool
puts reverse_words('Launch  ')              # => hcnuaL 

# def reverse_words(string)
#   words = [] #not needed if using .map

#   string.split.each do |word|  # chained methods!
#     word.reverse! if word.size >= 5
#     words << word #not needed if using .map
#   end

#   words.join(' ')
# end
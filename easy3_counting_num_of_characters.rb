#UNDERSTAND THE PROBLEM
# Input
# - string, a word or words
# Output
# - string, telling user how many characters are in their input
# Rules
# - whitespace should not be counted
# - all other characters (i.e. '!', ',', etc.) should be counted

#EXAMPLES / TEST CASES
# Input: Please write word or multiple words: walk
# Output: There are 4 characters in "walk".
# Input: Please write word or multiple words: walk, don't run
# Output: There are 13 characters in "walk, don't run".

#DATA STRUCTURE
# Input: string
# Requirements as Data: data structure, string


#ALGORITHM
# - Prompt user for input, GET input & assign to 'answer' variable
# - Remove all whitespace from string with #delete(' ') called on 'answer' variable
# - Count remaining characters with #length < string this method to ^
# - Output message to user incl. # of characters and original input

print "Please write word or multiple words: "
answer = gets.chomp

char_count = answer.delete(' ').length

puts "There are #{char_count} characters in \"#{answer}\"."
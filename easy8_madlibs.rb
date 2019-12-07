# Mad libs are a simple game where you create a story template with blanks for words. 
# You, or another player, then construct a list of words and place them into the story, 
# creating an often silly or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective 
# and injects those into a story that you create.

# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!

p "Enter a noun:"
noun = gets.chomp

p "Enter a verb:"
verb = gets.chomp

p "Enter a adjective:"
adjective = gets.chomp

p "Enter a adverb:"
adverb = gets.chomp

p "How does the #{noun} #{verb} so #{adverb} on such a #{adjective} day?"



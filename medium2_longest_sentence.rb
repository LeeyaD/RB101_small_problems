text = "Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.
Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth."

# Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.

=begin
Input: String
Output: String
- the longest sentence found in input
- the number of words in the longest sentence
Rules:
+ Explicit
  - sentences may end w/ periods (.), exclamation points (!), or question marks (?).
  - any sequence of characters that are not spaces or sentence-ending characters should be treated as a word
  
+ Implicit
  - even -- counts as a word b/c its delimited by spaces and/or sentence-ending characters

+ Vocab
  - sentence-ending character: period (.), explamation (!), or question mark (?)

Approach
1. Define a method called #longest_sentence that takes in 1 arg
2. First FIND longest sentence & save in 'longest_sentence' var
  2a. FIND: look for the longest sentence delimited by a space and/or sentence-ending character (.!?) with ANY other characters in between.
3. Define a helper method called #word_count that takes in 1 arg
4. FIND how many words are in a sentence & save in 'word_count' var
  4a. FIND: count how many sequence of characters are NOT space and/or sentence-ending characters
5. Output 'longest_sentnece' and 'word_count'

ALGO
1. DEF longest_sentence(string)
2. 'longest_sentnece' = string.match(/[.!?].+[.!?])

=end

def longest_sentence(string)
  sentences = string.split(/\.|\?|!/)
  longest = sentences.max_by { |s| s.split.size}
  num_of_words = longest.split.size

  puts "#{longest}"
  puts "Containing #{num_of_words} words."
end

longest_sentence(text)
# The longest sentence in the above text is the last sentence; it is 86 words long. (Note that each -- counts as a word.)
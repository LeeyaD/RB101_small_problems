=begin
A collection of spelling blocks has two letters per block, as shown in this list:

This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

Input: String
* What if input is empty or contains non-alphabetic characters
* Validity needed?
Output: Boolean value
Rules
* If the given string can be spelled with the blocks, where both letters for any given block aren't used (i.e only one), then given string is a block word & method should return true. Otherwise, false
* Case insensitive (i.e. upcased block w/ given word 'jest' returns true)

Approach
1. Create a method that takes in 1 arg, String
2. Make spelling block a nested array
3. Convert given string into an array of letters
4. Walk thru array of letters, checking that each one appears in the spelling block
    * If they do, return true
    * Otherwise, return false
5. Walk thru the spelling block from within the previous walk-thru, checking that all of a block's elements don't appear in the array of letters
    * If they do, return false
    * Otherwise, return true
Algo
1. Define a method that takes in 1 arg, 'string'
2. Init. spelling block as a nested array assign to the constant BLOCK
3. Convert given string into an array, assign to var 'letters_arr'
4. Iterate over 'letters_arr' using #all?, init. param 'letter' to each element
    * If EVERY 'letter' APPEARS IN the spelling block, return TRUE
    * Else return false
5. APPEARS IN - iterate over BLOCK using #each, init. param 'sub_block'

Examples:

=end

BLOCK = [["B", "O"], ["X", "K"], ["D", "Q"], ["C", "P"], ["N", "A"], ["G", "T"], 
         ["R", "E"], ["F", "S"], ["J", "W"], ["H", "U"], ["V", "I"], ["L", "Y"], 
         ["Z", "M"]]

def block_word?(word)
 up_word = word.upcase
 block = nil
 BLOCK.each do |sub_arr|
   if sub_arr.all? { |letter| up_word.include?(letter) }
     block = false
   elsif up_word.chars.all? { |le| BLOCK.flatten.include?(le) }
     block = true
   else
     block = false
   end
 end
 block
end
         
        

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true
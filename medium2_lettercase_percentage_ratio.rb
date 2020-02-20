=begin
In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.

Input: String
- will always contain at least 1 letter
Output: Hash
- containing 3 entries; 
  - % of lowercase letters
  - % of uppercase letters
  - % of non-alphabetic characters (whitespace, numbers, punctuation, etc.)

Approach
1. create a method that takes in 1 arg, a String
2. count the number of lowercase, uppercase, and non-alpha characters
  2a. subtract lower & upper from total # of characters to get total non-alpha character
3. determine the %s from step 2
4. place results from step 3 in a hash to return

Algo
1. define a method called #letter_percentages that takes in 1 arg, 'string'
2. using String#count, count and assign to the following variables
  2a. 'lowercase' = string.count("a-z")
  2b. 'uppercase' = string.count("A-Z")
  2c. 'non_alpha' = string.count - ('lowercase' + 'uppercase)
3. divide each sub-step from Step 2 by the total number of characters in the given string, then times by 100
4. place results from step 3 into a hash to return

=end

def letter_percentages(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }
  
  total = string.size.to_f
  
  lowercase = string.count("a-z")
  uppercase = string.count("A-Z")
  non_alpha = total - (lowercase + uppercase)
  
  counts[:lowercase] = ((lowercase / total) * 100).round(2)
  counts[:uppercase] = ((uppercase / total) * 100).round(2)
  counts[:neither] = ((non_alpha / total) * 100).round(2)
  
  counts
end



p letter_percentages('abcdefGHI') ==  {:lowercase=>66.67, :uppercase=>33.33, :neither=>0.0} #{:lowercase=>66.66666666666666, :uppercase=>33.33333333333333, :neither=>0.0}.
p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
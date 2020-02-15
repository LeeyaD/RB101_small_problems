=begin
A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Issue an error message if there is no next featured number.

Input: Integer
- a random given number
Output: Integer
- a featured number or an error stating a featured number could not be found
Rules
- a featured number is 
  - an odd number
  - a multiple of 7
  - whose digits only occur once

Approach
1. create a method that takes in 1 arg, an Integer
2. increase given input by 1
3. check is given input is a featured number
  3a. is it odd?
  3b. is it a multiple of 7?
  3c. do the digits only appear once?
4. If it is, that is all sub 3's are true, return it
5. If it isn't, repeat Step #3
=end

def featured?(n)
  n.odd? && (n % 7 == 0) && (n.to_s.chars.uniq.size == n.to_s.size)
end


def featured(num)
  return "There is no next featured number" if num.digits.size > 10
  loop do
   num += 1
   break if featured?(num)
  end
  num
end

featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987
#featured(9_999_999_999) == "There is no next featured number"
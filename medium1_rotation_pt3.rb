=begin
If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

Input: Integer
_ validate? 
_ how to handle? (Raise error, return nil)
  _ 0 or nil
Output:
Rules:
_ What does the note mean?
   _ 760408 a number that contains 2 zeros or
   _ 27004 a number that contains 2 consecutive zeros
_ Find the 'max' rotation of the given number
  _max: rotating number, freezing first digit, rotating numbr, freezing 2nd digit, rotating number, freezing 3rd digit, etc. Until the 'end', i e. the last 2 digita are rotated

Examples: see below

DS: Code

Approach
1. Create method that takes in 1 arg, the input number
2. Determine the # of digits in given number
3. Pass given number and # of digits into #rotate_rightmost_digits(number, n), assigning its return value to a variable
4. Remove and save first digit of return value (from Step 3) to a variable
5. Repeat Steps 2-4 until n is less than 2
6. Add last digit left from the given number to the variable (from Step 3)
7. Return variable

Algo



=end
def rotate_array(array)
  array[1..-1] << array[0]
end

def rotate_numbers(num)
  rotate_array(num.to_s.chars).join.to_i
end

def rotate_rightmost_digits(number, n)
  str_num = number.to_s
  to_rotate = str_num.slice!(-n..-1)
  rotated_num = rotate_array(to_rotate.chars)
  (str_num + rotated_num.join).to_i
end

def max_rotation(number)
  counter = number.digits.size
  loop do
    break if counter == 1
    number = rotate_rightmost_digits(number, counter)
    counter -= 1
  end
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

# My approach was too centered on the 'how', I went back and pseudocoded it at a higher level and
# was able to see what needed to be done, it was a simple loop where the n in ##rotate_rightmost_digits
# needed to be reduced but I was trying to modify the collection as I was iterating over it!
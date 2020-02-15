=begin
Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

Input: Number
* rep the range of numbers we're working with
Output: Number
Rules
1. Output is the difference of
    1. The sq of the sum of 1 to [input]
    2. The sum of the sqs of 1 to [input]

Approach
1. Create a method that takes in 1 arg, n
2. Calculate the sq of 1 to n, then sum it
3. Calculate the sum of 1 to n, then sq it
4. Minus sq'd total from sum'd total
=end
def sum(n)
    sum = 0
   1.upto(n) {|num| sum += num**2}
    sum
end

def square(n)
        sum = 0
       1.upto(n) {|num| sum += num}
        sum**2
end

def sum_square_difference(n)
    square(n) - sum(n)
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
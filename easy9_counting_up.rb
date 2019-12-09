# Write a method that takes an integer argument, and returns an Array of all integers, in sequence,
# between 1 and the argument.

# You may assume that the argument will always be a valid integer that is greater than 0.

def sequence(number)
  result = []
  
  if number.positive?
    1.upto(number) do |num| 
      result << num
    end
  else  # FURTHER EXPLORATION: handle negative numbers as well
    0.downto(number) do |num|
      result << num
    end
  end
  
  result
end

p sequence(-3) == [0, -1, -2, -3]
# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]
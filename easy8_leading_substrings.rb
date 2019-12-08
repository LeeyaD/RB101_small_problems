# Write a method that returns a list of all substrings of a string that start at the beginning 
# of the original string. The return value should be arranged in order from shortest to 
# longest substring.

def substrings_at_start(string)
  counter = 0
  substrings = []
  
  loop do
    break if counter >= string.size
      substrings << string[0, (counter+1)]
    counter += 1
  end
  substrings
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

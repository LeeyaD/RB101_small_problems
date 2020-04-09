# You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:
#                                                          O  O  O  O  O
# round 1: every light is turned on                        |  |  |  |  |
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on      |  O  |  O  |
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on  |  O  O  O  |
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on  |  O  O  |  |
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on  |  O  O  |  O
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

# Input: an Integer rep. the number of lights we have
# Output: an array, rep. the switch positions left when we finish toggling them
# Explicit Rules:
# - all switches start in an off, 'O', position
# - in round 1, every switch is turned on, '|'
# - with each round, toggling of the switches starts at that switch location and proceeds to only toggle switches with that multiple
#  i.e. round 2 = starts toggling at the 2nd switch, going on to the 4th, 6th, 8th, 10th, etc.
#  i.e. round 3 = starts toggling at the 3rd switch, going on to the 6th, 9th, etc.
#  i.e. round 4 = starts toggling at the 4th switch, going on to the 8th, etc.
# Implicit Rules:
# - a round is done for every switch
#  1 light = 1 round, 2 lights = 2 rounds, 3 lights = 3 rounds, etc.
# Questions:
# 1. If 0 is given, return a specific method or raise an error?

# ALGO
# define a method that takes in an integer
# + def lights(switches)
# use given number, 'switches', to POPULATE the array, 'lights', with that many lights in the off position 'O'
# + lights = Array.new(switches, 'O')
# walk through 'lights' 'switches' amount of times
# + using Array#each_with_index do |light, idx|
# on the first round (0), toggle them all to the on position '|'
# + #round_one(array), array.map { |light| "|"}, reassign'lights' to the => value
# on each subsequent round (1, 2, 3, etc.), start toggling the lights at that index and only for multiples of that number
require 'pry'
require 'pry-byebug'

def lights(n) # 5
  lights = Array.new(n, true)
  round = 2
  output = []
  loop do
    break if round > n
    
    (round..n).each do |switch|
      idx = switch - 1
      if switch % round == 0
        lights[idx] ? (lights[idx] = false) : (lights[idx] = true)
      end
    end

    round += 1 
  end
  
  lights.each_with_index { |light, idx| output << idx + 1 if light == true } 
  output
end

p lights(3) == [1]
p lights(5) == [1, 4]
p lights(10) == [1, 4, 9]
p lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]
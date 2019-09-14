# UNDERSTAND THE PROBLEM - method
# Input
#   2 conditions passed in as arguments
# Output
#   N/A - TRUE when examples below are run
# Rules
#   Exactly ONE truth for our method to return true
#   2 TRUEs == false
#   2 FALSEs == false

# EXAMPLES / TEST CASES
# All examples below return true
#  'puts xor?(5.even?, 4.even?) == true'
#  'puts xor?(5.odd?, 4.odd?) == true'
#  'puts xor?(5.odd?, 4.even?) == false'
#  'puts xor?(5.even?, 4.odd?) == false'

# DATA STRUCTURE
# Input: conditions that evaluate to true or false 
# Requirements As Data: code

# ALGORITHM
# Evaluate 2 conditions passed in as arguments (parameters: c1, c2) to determine when there's exactly ONE truth
# IF with && they evaluate to false but with | | they evaluate to true, then its true 
require 'pry'

def xor?(c1, c2)
    ((c1 && c2) == false) && ((c1 || c2) == true)
end
  
  puts xor?(5.even?, 4.even?) == true
  puts xor?(5.odd?, 4.odd?) == true
  puts xor?(5.odd?, 4.even?) == false
  puts xor?(5.even?, 4.odd?) == false
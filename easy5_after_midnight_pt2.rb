# UNDERSTAND THE PROBLEM
# Input
#  
# Output
# Rules:

# EXAMPLES / CASE TESTS
#  after_midnight('00:00') == 0
#  before_midnight('00:00') == 0
#  after_midnight('12:34') == 754
#  before_midnight('12:34') == 686
#  after_midnight('24:00') == 0
#  before_midnight('24:00') == 0

# DATA STRUCTURE
#  Input:
#  Rules as Data:

# ALGORITHM
#

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight()

end

def before_midnight()
  
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
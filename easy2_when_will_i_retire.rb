# UNDERSTAND THE PROBLEM
# Input
#  - Integers for current age (CA) and retirement age (RA)
# Output
#  - Integer for current year (CY)
#  - Integer for retirement year (RY)
#  - Integer for years to retirement (Y2R)
# Rules
#  - Y2R = RA - CA
#  - RY = CY + Y2R
# Questions
#  - What if someone uses a float for their age? (e.g. I'm 12 and half > 12.5)
#  - Should I stop the user from geting crazy with their age and/or retirement age?
#  - Account for emptiness?

# EXAMPLES / TEST CASES
# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!
# (CA = 32), (RA = 62), (CY = 2019), (RY = 2049)
# (CA = 47), (RA = 48), (CY = 2019), (RY = 2020)
# (CA = 50), (RA = 50), (CY = 2019), (RY = 2019)

# DATA STRUCTURES
# Input
#  - Integer b/c we need to do math
#  - Code (e.g. if conditionals)

# ALGORITHM
# - GET user's current age and SET it equal to 'current_age' <- ON FIRST LOOP
#   - SUBPROCESS "validate to ensure it's not: a float; empty; stupidly high"
#     - if 'current_age' is a float, emtpy or over 120 (oldest person 116) return false
#       - 'current_age' is a float if there's a decimal & #s behind it "32" =~ /^\d*\.?\d*$/
#       - 'current_age' is empty if it's "" or there's only space (i.e. "  ")
#       - 'current_age' is stupidly high if it's over 120
# - GET user's desired retirement age and SET it equal to 'retirement_age' <- ON SECOND LOOP
#   - SUBPROCESS "validate to ensure it's not: a float; empty; stupidly high"
# - GET for 'current_age' & 'retirement_age' can be extracted to a method
# - use a #date/#time method to GET current year and SET to 'current year'
# - SET 'years_to_retirement' equal to 'retirement_age' minus 'current_ age'
# - SET 'retirement_year' equal to 'current_year' plus 'years_to_retirement'
# - interpolate and output 'current_year', 'retirement_year', and 'years_to_retirement'
# - in sentences like in the example/test case

def valid_age?(age)
  if /^\d*\.[1-9]$/.match?(age)
    puts "Age must be a whole number. Try again."
    return false
  elsif age.to_i >= 130
    puts "Let's not get crazy, even the oldest liviing person isn't that old. Try again."
    return false
  elsif age.strip.length == 0
    puts "You must enter a number. Try again"
    return false
  else 
    return true
  end
end

def set_curr_age
  loop do
    print "How old are you? "
    input = gets.chomp
    return input if valid_age?(input)
  end
end

def set_retire_age
  loop do
    print "At what age would you like to retire? "
    input = gets.chomp
    return input if valid_age?(input)
  end
end


def this_year
  t = Time.now
  t.year
end

def yrs_to_retire(retire_age, curr_age)
  retire_age.to_i - curr_age.to_i
end

def retire_yr(current_year, years_to_retirement)
  current_year + years_to_retirement
end

puts "Let's see when you will retire!"
  
current_age = set_curr_age

retirement_age = set_retire_age

current_year = this_year

years_to_retirement = yrs_to_retire(retirement_age, current_age)

retirement_year = retire_yr(current_year, years_to_retirement)

puts ""
sleep(2)
puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_to_retirement} years of work to go!"
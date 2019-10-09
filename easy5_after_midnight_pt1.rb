# Understand the Problem
# Input
# - integer rep minutes, positive or negative
# Output
# - string rep the time of day in 24hour format (hh:mm)
# Rules
# - if # of minutes is positive, the time is after midnight
# - if # of minutes is negative, the time is before midnight
# - should work w/ any integer input
# - CANNOT use Date / Time classes
# - Disregard Daylight Savings & Standard Time, and other complications

# Examples / Test Cases
# See below

# Data Structure
# Input: signed integer
# Rules rep as data: code, 

# Algorithm
# 1. Determine if input is zero and print corresponding value
# 2. Determine if input is positive or negative
# 3. IF positive AND less than 1440
#    

# Code

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"


['c', 'a', 'e', 'b', 'd'].sort 
# => ['a', 'b', 'c', 'd', 'e']

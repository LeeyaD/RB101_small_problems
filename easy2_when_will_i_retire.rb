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
# - get user's CA and desired RA
#   - validate CA & RA, to ensure it's not: a float; empty; stupidly high
# - SUBPROCESS "figure out CY"
# - SUBPROCESS "figure out RY"
# - SUBPROCESS "figure out Y2R"
# - output CY, RY and Y2R in sentences like in the example
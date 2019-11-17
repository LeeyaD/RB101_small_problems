#UNDERSTAND THE PROBLEM
#Some questions you might have?
# 1.
#Input:
# - Integer (a year)
# - need to validate?
#Output: 
# - String (the century number)
# - ends with st, nd, rd, or th
#Model the problem
#
#Rules:
# Explicit requirements:
#  - New centuries begin in years that end with 01. So, 1901-2000 comprise the 20th century.
# Implicit requirements:
#  - century string number into a string:
#  - 1: st
#  - 2: nd
#  - 3: rd
#  - 4-20: th
#  - 21: st
#  - 22: nd
#  - 23: rd
#  - 24-30: th
#  ...
#  - generalize:
#    - century_number % 10
#      - 1, 2, 3: st, nd, rd
#      - 0, 4-9: th
#    - except for 11, 12, 13



#EXAMPLES / TEST CASES
# century(1) == '1st'
# century(100) == '1st'
# century(101) == '2nd'
# century(133) == '2nd'
# century(245) == '3rd'
# century(1052) == '11th'
# century(1152) == '12th'
# century(1252) == '13th'
# century(2012) == '21st'
# century(2112) == '22nd'
# century(22222) == '233rd'
# century(22512) == '226th'

# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'


#DATA STRUCTURE
#

#ALGORITHM
#

#CODE
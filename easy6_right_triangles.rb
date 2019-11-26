# UNDERSTAND THE PROBLEM
# Input
# - a positive integer (n)
# Output
# - displays a right triangle whose sides each have (n) stars
# Rules
# - diagonal side should run bottom-left to top-right
# - right triangle must have (n) lines of stars on all sides

# EXAMPLES / TEST CASES
# See below

# DATA STRUCTURE
# Input
# - positive number
# Rules rep as data
# - with each line, one * is added to the front of (n)
# - ln.1: 1 star
# - ln.2: 1 + 1 star
# - ln.3: 1 + 1 + 1 star
# - last ln: 1 + prev. stars = (n)
# *we can start with 1 start and loop (n)-1 times

# ALGORITHM
# - start w/ 1 star, right_triangle = "*"
# - using #times, loop around (n)-1 times
#   - add 1 star to the front of 'right_triangle', 'right_triangle'.prepend("*")
#   - puts right_triangle


# CODE

def triangle(num)
  right_triangle = "*"
  
  until right_triangle.size > num
    puts right_triangle.rjust(num)
    right_triangle << "*"
  end
end

def triangle(num) #prints triangle upside down from current orientation
  right_triangle = ("*" * num)
  
  until right_triangle.size < 1
    puts right_triangle.rjust(num)
    right_triangle.slice!(-1,1)
  end
end

def triangle(num) #display triangle w/ right angle at any corner of the grid.
  right_triangle = "*"
  
  until right_triangle.size > num
    puts right_triangle.ljust(num)
    right_triangle << "*"
  end
end

def triangle(num) #display triangle w/ right angle at any corner of the grid.
  right_triangle = ("*" * num)
  
  until right_triangle.size < 1
    puts right_triangle.ljust(num)
    right_triangle.slice!(-1,1)
  end
end

puts triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********
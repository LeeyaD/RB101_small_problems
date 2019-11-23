# UNDERSTAND THE PROBLEM
# Input
# - a string
# Output
# - given string printed inside a box
# Rules
# - can assume input will always fit in terminal window
# - based on examples;
#   - banner may always be 5 lines long vertically
#     - line 3 (the middle) string will always be sandwiched btwn a space & a pipe
#       > "| " + string + " |"
#   - first and last lines of banner are marked by '+' 
# Questions
# - can I assume the string will always only be 1 line?
# - does the banner have to expand with longer strings (i.e. a few lines long)?


#EXAMPLES / TEST CASES
# 1. 46 spaces across & 5 spaces down
# 2. 4 spaces across & 5 spaces down

# DATA STRUCTURE
# Input: a string
# Rules represented as data: code

# ALGORITHM


# CODE
require 'pry'

def vertical_edge(banner_length)
  puts "+" + "-" * (banner_length - 2) + "+"
end

def horizontal_edge(banner_length)
  puts "|" + " " * (banner_length - 2) + "|"
end

def print_in_box(string)
  banner_length = string.size + 4
  vertical_edge(banner_length)
  horizontal_edge(banner_length)
  puts "| " + string + " |"
  horizontal_edge(banner_length)
  vertical_edge(banner_length)
end

print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
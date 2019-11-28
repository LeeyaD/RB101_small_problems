# UNDERSTANDING THE PROBLEM
# Input
# - a string
# Output
# - a NEW string w/ orig. values and every other letter capitalized
# Rules: 
# - Every other letter is capitalized, the rest are lowercase
# - Non-letter characters remain the same but count as characters when switching btwn upper and lower case

# DATA STRUCTURE
# Input
# - a string

# ALGORITHM
# - walk thru string, KEEP TRACK OF ITERATION to determine if case is upper or lower, include option to leave non-words alone
# - KEEP TRACK OF ITERATION
#   - With a counter; 
#    - on even iterations, upcase
#    - on odd iterations, downcast
#    - on both iterations, non-letter characters remain unchanged

require 'pry'
# def staggered_case(string)
#   staggered_caps = []
#   string.chars.each_with_index do |char, idx|
#     if idx.even?
#       staggered_caps << char.upcase
#     elsif idx.odd?
#       staggered_caps << char.downcase
#     else
#       staggered_caps << char
#     end
#   end

#   staggered_caps.join
# end
# puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
# puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# FURTHER EXPLORATION - caller can request the first character be downcased rather than upcased
def staggered_case(string, downcase=nil)
  result = ''
  downcase ? need_upper = true : need_upper = false
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end
puts staggered_case('I Love Launch School!')
puts staggered_case('ALL_CAPS', "down")
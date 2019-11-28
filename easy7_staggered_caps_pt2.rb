# UNDERSTANDING THE PROBLEM
# Input
# - a string
# Output
# - a NEW string w/ orig. values and every other letter capitalized
# Rules: 
# - Every other letter is capitalized, the rest are lowercase
# - Non-letter characters rare ignored and dont count when switching btwn upper and lower case,
#   they still need to be printed though!

# ALGORITHM
# - walk thru string, determine if case should be upper or lower, leave non-words alone
# - loop through string
#   - With a counter; 
#    - on even iterations, upcase
#    - on odd iterations, downcase
#    - on both iterations, non-letter characters remain unchanged

require 'pry'
def staggered_case(string)
  staggered_caps = ""
  needs_upper = true
  
  string.chars.each do |char|
    if char == " " || char =~ /[^A-Za-z]/
      staggered_caps << char
      next
    elsif needs_upper
      staggered_caps << char.upcase
    else 
      staggered_caps << char.downcase
    end
    needs_upper = !needs_upper
  end

  staggered_caps
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
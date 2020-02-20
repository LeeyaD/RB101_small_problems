=begin
Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

Input: Integer
- rep a year greater then 1752 (modern Gregorian calendar)

Output: Integer
- rep the # of Friday the 13ths in the year given

Rules
- input will be greater than 1752, modern gregorian calendar

Approach
1. create a method that takes in 1 arg, 'year'
2. check to month day and day
  2a. if the date is both the 13th and a Friday we count it
  2b. otherwise, we go to the next day
3. repeat step 2 until the year changes to the next year

Algo
1. define a method called #friday_13th, that takes in 1 arg 'year'
2. create a loop
  2a. BREAK CONDITION if 'year' >= 'year + 1
  2b. if 'year'.mday == 13 && 'year'.friday?
    increase results by 1
  2c. else, increase the 'year'.next

Approach/Algorithm
Ruby's Date class may be helpful here.
Look at how to initialize a Date object
Look at the friday? method
=end
require 'date'
def create_date_object(year)
  Date.new(year)
end

def friday_13th(year)
  date_obj = create_date_object(year)
  dup_year = date_obj
  results = 0
  loop do
    break if dup_year >= date_obj.next_year
    if (dup_year.mday == 13) && dup_year.friday?
      results += 1
    end
    dup_year = dup_year.next
  end
  results
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

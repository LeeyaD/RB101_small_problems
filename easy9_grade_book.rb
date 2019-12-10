# Write a method that determines the mean (average) of the three scores passed to it, and returns the letter 
# value associated with that grade.

# Numerical Score Letter	Grade
# 90 <= score <= 100	'A'
# 80 <= score < 90	'B'
# 70 <= score < 80	'C'
# 60 <= score < 70	'D'
# 0 <= score < 60	'F'

# ALGO
# DETERMINE average of the three scores using helper method #average_score? only if it'll make code cleaner
# SET 'average' = all 3 scores added together, then divided by 3
# IF (90..100).include?(average) => "A"
# ELSIF (80..89).include?(average) => "B"
# and so on

GRADE_BOOK = {"A" => 90..100, "B" => 80..89, "C" => 70..79, "D" => 60..69, "F" => 0..59}

def get_grade(score1, score2, score3)
  average = (score1 + score2 + score3) / 3

  GRADE_BOOK.each do |grade, score|
    return grade if score.include?(average)
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
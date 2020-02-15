=begin
A triangle is classified as follows:

right: One angle of the triangle is a right angle (90 degrees)
acute:  All 3 angles of the triangle are less than 90 degrees
obtuse:  One angle is greater than 90 degrees.
To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to worry about floating point errors. You may also assume that the arguments are specified in degrees.

Input: 3 arguments, Integers
- representing the angles of a triangle

Output: a symbol
- representing the type of triangle based on input

Rules:
Triangles are defined as follows
1. right - One angle of the triangle is a right angle (90 degrees)
2. acute - All 3 angles of the triangle are less than 90 degrees
3. obtuse -  One angle is greater than 90 degrees
*A valid triangle -  the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.


Approach
1. create a method that takes in 3 numbers
2. check that the angles made a valid triangle
  2a. all 3 numbers add up to 180? AND all are greater than 0?
3. check that angles make up a right triangle
  3a. is 1 angle exactly 90 degrees?
4. check that the angles make up an acute triangle
  4a. are all angles less than 90 degrees?
5. check that the angles make up an obtuse triangle
  5a. is 1 angle greater than 90 degrees
=end

def valid_triangle?(array)
  array.sum == 180 && !(array.include?(0))
end

def triangle(d1, d2, d3)
  arr = [d1, d2, d3]
  return :invalid if !valid_triangle?(arr)
  
  if arr.include?(90)
    :right
  elsif arr.all? { |n| n < 90 }
    :acute
  elsif arr.any? { |n| n > 90 }
    :obtuse
  end
end


triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid
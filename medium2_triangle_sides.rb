=begin

A triangle is classified as follows:

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.


Input: 3 arguments, Integers
- representing the angles of a triangle

Output: a symbol
- representing the type of triangle based on input

Rules:
Triangles are defined as follows
1. equilateral - All 3 sides are of equal length
2. isosceles - 2 sides are of equal length, while the 3rd is different
3. scalene - All 3 sides are of different length
*A valid triangle - the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.


Approach
1. create a method that takes in 3 numbers
2. check that the lengths make a valid triangle
  2a. the sum of the 2 shortest lengths is greater than the lonest length         AND all sides are greater than 0
3. check that angles make up an equilateral triangle
  3a. all 3 sides are equal length
4. check that the angles make up an isosceles triangle
  4a. 2 sides are equal while the 3rd is different
5. check that the angles make up a scalene triangle
  5a. all 3 sides are of different length
=end

def valid_triangle?(array)
  array[0..1].sum > array[-1] && !(array.include?(0))
end

def triangle(side1, side2, side3)
  arr = [side1, side2, side3].sort
  return :invalid if !valid_triangle?(arr)
  
  case arr.uniq.size
  when 1
    :equilateral
  when 2
    :isosceles
  when 3
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
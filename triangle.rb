# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)

  if a <= 0 || b <= 0 || c <= 0
    raise TriangleError.new("One or more sides is <= 0.")
  elsif a + b <= c || b + c <= a || a + c <= b
    raise TriangleError.new("Side lengths can not create a triangle.")
  end

  triangle_type = :scalene
  if a == b && b == c
    triangle_type = :equilateral
  elsif a == b || b == c || a == c
    triangle_type = :isosceles
  end

  return triangle_type
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

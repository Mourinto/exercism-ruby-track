# Write your code for the 'Triangle' exercise in this file. Make the tests in
# `triangle_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/triangle` directory.
class Triangle
  attr_reader :sides, :uniq_sides

  def initialize(sides)
    @sides = sides
    @uniq_sides = sides.uniq.count
  end

  def equilateral?
    uniq_sides == 1 && valid_triangle?
  end

  def isosceles?
    [1, 2].include?(uniq_sides) && valid_triangle?
  end

  def scalene?
    uniq_sides == 3 && valid_triangle?
  end

  private

  def valid_triangle?
    sides.all? { |side| side < sides.sum - side } && !sides.include?(0)
  end
end
#@sides.permutation(3).all? { |(a, b, c)| a <= b + c }

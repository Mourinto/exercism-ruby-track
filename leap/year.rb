# Write your code for the 'Leap' exercise in this file. Make the tests in
# `leap_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/leap` directory.
module Year
  extend self

  def leap?(year)
    (year % 4).zero? && !(year % 100).zero? || (year % 4).zero? && (year % 100).zero? && (year % 400).zero?
  end
end
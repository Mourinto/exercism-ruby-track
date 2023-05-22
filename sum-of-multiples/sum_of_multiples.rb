# Write your code for the 'Sum Of Multiples' exercise in this file. Make the tests in
# `sum_of_multiples_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/sum-of-multiples` directory.
class SumOfMultiples
  attr_reader :values

  def initialize(*values)
    @values = values
  end

  def to(level)
    sum = []
    @values.map do |value|
      sum << 0 if level < value || value.zero?
      next unless value < level && !value.zero?

      updated_value = value
      while updated_value < level
        sum << updated_value
        updated_value += value
      end
    end
    sum.uniq.sum
  end

end

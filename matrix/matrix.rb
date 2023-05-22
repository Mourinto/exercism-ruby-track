# Write your code for the 'Matrix' exercise in this file. Make the tests in
# `matrix_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/matrix` directory.
class Matrix

  def initialize(str)
    @rows = str.split("\n").map { |row| row.split(' ').map(&:to_i) }
  end

  def row(num)
    @rows[num - 1]
  end

  def column(num)
    @rows.map { |c| c[num - 1] }
  end

end

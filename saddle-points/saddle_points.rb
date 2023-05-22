# Write your code for the 'Saddle Points' exercise in this file. Make the tests in
# `saddle_points_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/saddle-points` directory.
class Grid
  def self.saddle_points(input)
    coordinates = []
    columns_min = input.transpose.map(&:min)
    rows_max = input.map(&:max)
    columns_min.each_with_index do |column_value, column_index|
      rows_max.each_with_index do |row_value, row_index|
        coordinates << { 'row' => row_index + 1, 'column' => column_index + 1 } if column_value == row_value
      end
    end
    coordinates
  end
end

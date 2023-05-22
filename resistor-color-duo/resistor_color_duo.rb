# Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
# `resistor_color_duo_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/resistor-color-duo` directory.
class ResistorColorDuo
  SCHEMA = {
    'Black' => 0,
    'Brown' => 1,
    'Red' => 2,
    'Orange' => 3,
    'Yellow' => 4,
    'Green' => 5,
    'Blue' => 6,
    'Violet' => 7,
    'Grey' => 8,
    'White' => 9
  }.freeze

  def self.value(colors = [])
    colors[0..1].map { |color| SCHEMA[color.capitalize] }.join.to_i
  end
end

# Write your code for the 'Diamond' exercise in this file. Make the tests in
# `diamond_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/diamond` directory.
module Diamond
  extend self

  def make_diamond(letter)
    width = [*'A'..'Z'].index(letter)
    rows = []
    [*'A'..letter].each_with_index do |char, index|
      row = ' ' * (width - index)
      row += char
      row += ' ' * index
      row += "#{row[0..-2].reverse}\n"
      rows << row
    end
    rows << rows[0..-2].reverse
    rows.join
  end

end

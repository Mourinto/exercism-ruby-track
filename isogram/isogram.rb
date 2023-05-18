# Write your code for the 'Isogram' exercise in this file. Make the tests in
# `isogram_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/isogram` directory.
module Isogram
  module_function

  def isogram?(word)
    letters = word.downcase.scan(/\w/)
    letters == letters.uniq
  end

end

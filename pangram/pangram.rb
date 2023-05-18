# Write your code for the 'Pangram' exercise in this file. Make the tests in
# `pangram_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/pangram` directory.
module Pangram
  module_function

  def pangram?(sentence)
    #sentence.downcase.gsub(/[^A-Za-z]/, '').chars.uniq.length == 26
    ([*'a'..'z'] - sentence.downcase.chars).empty?
  end

end

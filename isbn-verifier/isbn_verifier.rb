# Write your code for the 'ISBN Verifier' exercise in this file. Make the tests in
# `isbn_verifier_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/isbn-verifier` directory.
module IsbnVerifier
  extend self

  def valid?(string)
    return false if string.length < 10

    numbers = []
    check_digit = string.chars.last
    string.chars.each do |c|
      if check_digit == 'X'
        break false if c.match?(/[[:alpha:]]/) && c != 'X'

        numbers << c.to_i if c.match?(/[[:digit:]]/)
      else
        break false if c.match?(/[[:alpha:]]/)

        numbers << c.to_i if c.match?(/[[:digit:]]/)
      end
    end
    numbers << 10 if check_digit.match?(/[[:alpha:]]/) && check_digit == 'X'
    return false if numbers.count != 10

    n = 11
    new = []
    numbers.each do |num|
      new << num * (n - 1)
      n -= 1
    end
    (new.sum % 11).zero?
  end

end

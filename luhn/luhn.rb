# Write your code for the 'Luhn' exercise in this file. Make the tests in
# `luhn_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/luhn` directory.
module Luhn
  module_function

  def valid?(number)
    number = number.delete(' ')
    if validate_no_letters(number) && validate_zero_case(number)
      return validate_the_algo(number)
    end

    false
  end

  def validate_no_letters(number)
    number.match(/\A[-+]?\d+\z/)
  end

  def validate_zero_case(number)
    !(number.length == 1 && number.to_i.zero?)
  end

  def validate_the_algo(number)
    updated_num = []
    number.chars.reverse.each_with_index do |element, index|
      updated_num << if index.odd?
                       if (element.to_i * 2) > 9
                         (element.to_i * 2) - 9
                       else
                         (element.to_i * 2)
                       end
                     else
                       element.to_i
                     end
    end
    (updated_num.sum % 10).zero?
  end

end

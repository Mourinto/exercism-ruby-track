# Write your code for the 'Rotational Cipher' exercise in this file. Make the tests in
# `rotational_cipher_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/rotational-cipher` directory.
module RotationalCipher
  LOWER = ('a'..'z').to_a.freeze
  UPPER = ('A'..'Z').to_a.freeze
  ALL_LETTERS = (LOWER + UPPER).join

  module_function

  def rotate(str, key)
    str.tr(ALL_LETTERS, (LOWER.rotate(key) + UPPER.rotate(key)).join)
  end

end



# Write your code for the 'Run Length Encoding' exercise in this file. Make the tests in
# `run_length_encoding_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/run-length-encoding` directory.
class RunLengthEncoding

  def self.encode(input)
    arr = input.split('')
    counter = []
    arr.map do |c|

      c == c.next ? counter[0][0] << c && counter[0][1] << 1 :
    end

    
  end

end

# Write your code for the 'Raindrops' exercise in this file. Make the tests in
# `raindrops_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/raindrops` directory.
module Raindrops
  extend self

  SOUNDS = { 3 => 'Pling',
             5 => 'Plang',
             7 => 'Plong' }.freeze

  def convert(num)
    drops_sound = ''
    SOUNDS.map { |check, sound| drops_sound << sound if (num % check).zero? }
    drops_sound.empty? ? num.to_s : drops_sound
  end

end

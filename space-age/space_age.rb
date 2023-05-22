# Write your code for the 'Space Age' exercise in this file. Make the tests in
# `space_age_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/space-age` directory.
# Mercury: orbital period 0.2408467 Earth years
# Venus: orbital period 0.61519726 Earth years
# Earth: orbital period 1.0 Earth years, 365.25 Earth days, or 31557600 seconds
# Mars: orbital period 1.8808158 Earth years
# Jupiter: orbital period 11.862615 Earth years
# Saturn: orbital period 29.447498 Earth years
# Uranus: orbital period 84.016846 Earth years
# Neptune: orbital period 164.79132 Earth years
class SpaceAge
  YEAR_ON_EARTH = 365.25
  PLANET_ORBITAL = { 'mercury' => 0.2408467,
                     'venus' => 0.61519726,
                     'earth' => 1,
                     'mars' => 1.8808158,
                     'jupiter' => 11.862615,
                     'saturn' => 29.447498,
                     'uranus' => 84.016846,
                     'neptune' => 164.79132 }.freeze

  def initialize(age)
    @age_in_seconds = age
    @years_in_seconds = YEAR_ON_EARTH * 24 * 60 * 60
  end

  PLANET_ORBITAL.map do |planet, orbital|
    define_method("on_#{planet}") do
      @age_in_seconds / (orbital * @years_in_seconds)
    end
  end
end

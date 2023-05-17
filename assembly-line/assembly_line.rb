#1 to 4: 100% success rate.
# 5 to 8: 90% success rate.
# 9: 80% success rate.
# 10: 77% success rate.

class AssemblyLine
  attr_reader :speed

  HOURLY_YIELD = 221

  def initialize(speed)
    @speed = speed
    raise ArgumentError, 'speed must be between 1 and 10' unless speed.between? 1, 10
  end

  def production_rate_per_hour
    default_speed = speed * HOURLY_YIELD
    if speed <= 4
      default_speed
    elsif speed >= 5 && speed <= 8
      default_speed * 0.9
    elsif speed == 9
      default_speed * 0.8
    else
      default_speed * 0.77
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end

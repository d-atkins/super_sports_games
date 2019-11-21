class Event
  attr_reader :ages, :name

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    (@ages.sum.to_f / @ages.length).round(2)
  end

  def standard_deviation_age
  end

end

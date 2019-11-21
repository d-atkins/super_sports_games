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
    sum = 0
    @ages.each do |age|
      sum += age
    end
    length = @ages.length
    quotient = sum.to_f / length

    diff_ages = []
    @ages.each do |age|
      diff_ages << (age - quotient).round(2)
    end

    squared_diffs = []
    diff_ages.each do |age|
      squared_diffs << (age * age).round(2)
    end

    squared_diffs_sum = 0
    squared_diffs.each do |age|
      squared_diffs_sum += age.round(2)
    end

    quotient2 = squared_diffs_sum.round(2) / @ages.length
    standard_deviation = Math.sqrt(quotient2).round(2)
  end

end

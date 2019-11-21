ages = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation
sum = 0
ages.each do |age|
  sum += age
end
length = ages.length
quotient = sum.to_f / length

diff_ages = []
ages.each do |age|
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

quotient2 = squared_diffs_sum.round(2) / ages.length
standard_deviation = Math.sqrt(quotient2).round(2)
# When you find the standard deviation, print it out
puts standard_deviation

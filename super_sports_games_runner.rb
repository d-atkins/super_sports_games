require './lib/games'

print "Enter the year for the games: "
year = gets.chomp
games = Games.new(year.to_i)
require "pry"; binding.pry

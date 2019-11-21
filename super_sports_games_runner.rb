require './lib/games'

print "Enter the year for the games: "
input = gets.chomp
games = Games.new(input.to_i)

while (input != "q")
  puts "------------------------------------------"
  puts ">[A]dd event      >[S]ummary      >[Q]uit"
  input = gets.chomp.downcase
  if input == "a"
    print "Enter name of event: "
    event = gets.chomp
    # while (input != "q")
    #   print "Enter participant age ([Q] to quit): "
    # end
  elsif input == "s"
    puts games.summary
  end
end

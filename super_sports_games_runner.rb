require './lib/games'
require './lib/event'

print "Enter the year for the games: "
input = gets.chomp
games = Games.new(input.to_i)
input = ''

while (input != "q")
  print "------------------------------------------"
  puts "-------------------------------------------"
  puts ">[A]dd event      >[S]ummary      >[Q]uit"
  input = gets.chomp.downcase
  if input == "a"
    print "Enter name of event: "
    event = gets.chomp
    if event.length > 13
      event = event[0,11].strip + "..."
    end
    ages = []
    input = ''
    while (input != "q")
      print "Enter participant age ([Q] to quit, [D] to delete last entry): "
      input = gets.chomp.downcase
      if input == 'q'
        break
      elsif input == 'd'
        ages.pop
      else
        ages << input.to_i
      end
      puts "Current ages: #{ages}"
    end
    event = Event.new(event, ages)
    games.add_event(event)
    input = ''
  elsif input == "s"
    puts ""
    puts games.summary
  end
end

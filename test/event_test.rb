require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'

class EventTest < Minitest::Test

  def test_it_exists
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_instance_of Event, event
  end

  def test_name_is_correct
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal "Curling", event.name
  end

  def test_event_is_correct
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    expected = [24, 30, 18, 20, 41]
    assert_equal expected, event.ages
  end


end

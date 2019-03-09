require("Minitest/autorun")
require("minitest/rg")
require_relative("../rooms.rb")
require_relative("../guests.rb")
require_relative("../songs.rb")
require_relative("../room_service.rb")

class TestRooms < MiniTest::Test

  def setup
    @song1 = Song.new("Sweet Caroline", "Neil Diamond")
    @song2 = Song.new("Song 2", "Blur")
    @song3 = Song.new("Bohemian Rhapsody", "Queen")
    @song4 = Song.new("I Would Do Anything For Love", "Meatloaf")
    @song5 = Song.new("Delilah", "Tom Jones")
    @song6 = Song.new("My Way", "Frank Sinatra")
    @guest1 = Guest.new("Francis", "My Way", 50)
    @guest2 = Guest.new("Mark", "Lust For Life", 20)
    @guest3 = Guest.new("Simon", "Delilah", 150)
    @guest4 = Guest.new("Danny", "I Would Do Anything For Love", 10)
    @guest5 = Guest.new("Johnny", "Sweet Caroline", 200)
    @guest6 = Guest.new("Tommy", "Bohemian Rhapsody", 100)
    @room1 = Room.new(3, 30)
    @room2 = Room.new(2, 20)
  end

  def test_price_to_pay
    assert_equal(30, @room1.room_hire_cost)
  end

  def test_playlist_default
    assert_equal(0, @room1.library.length)
  end

  def test_count_checked_in_guests
    result = count_checked_in_guests(@room1)
    assert_equal(0, result)
  end

  def test_checking_guest_in
    add_guest_to_room(@room1, @guest1)
    result = count_checked_in_guests(@room1)
    assert_equal(1, result)
  end

  def test_checking_guest_out
    add_guest_to_room(@room1, @guest1)
    result1 = count_checked_in_guests(@room1)
    assert_equal(1, result1)
    remove_guest_from_room(@room1, @guest1)
    result2 = count_checked_in_guests(@room1)
    assert_equal(0, result2)
  end

  def test_count_still_to_pay
    add_guest_to_room(@room1, @guest1)
    result1 = count_checked_in_guests(@room1)
    assert_equal(1, result1)
    remove_guest_from_room(@room1, @guest1)
    result2 = count_still_to_pay()
    assert_equal(1, result2)
  end

  def test_count_songs_in_library
    result = count_songs_in_library()
    assert_equal(0, result)
  end

  def test_add_songs_to_library()
    songlist = [@song1, @song2, @song3, @song4, @song5, @song6]
    add_songs_to_library(songlist)
    result = count_songs_in_library()
    assert_equal(6, result)
  end

  def test_room_overflow
    queue = [@guest1, @guest2, @guest3, @guest4, @guest5, @guest6]
    cap1 = @room1.capacity
    cap2 = @room2.capacity
    result = room_overflow(queue, cap1, cap2)
    assert_equal(3, count_checked_in_guests(@room1))
    assert_equal(2, count_checked_in_guests(@room2))
    assert_equal("Fully Booked", result)
  end

  def test_room_charge
    add_guest_to_room(@room1, @guest1)
    add_guest_to_room(@room1, @guest5)
    room_charge(@room1, @guest1)
    result = @guest1.bill_to_pay
    assert_equal(15, result)
  end

end

require("Minitest/autorun")
require("minitest/rg")
require_relative("../rooms.rb")
require_relative("../guests.rb")
require_relative("../songs.rb")

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
    @room1 = Room.new(3, 0)

  end

  def test_price_to_pay
    assert_equal(0, @room1.price_to_pay)
  end

  def test_playlist_default
    assert_equal(0, @room1.playlist.length)
  end

  def test_count_checked_in_guests
    result = count_checked_in_guests()
    assert_equal(0, result)
  end



  def test_checking_guest_in
    add_guest_to_room
    result = count_checked_in_guests()
    assert_equal(1, result)
  end

  def test_checking_guest_out
    add_guest_to_room
    result1 = count_checked_in_guests()
    assert_equal(1, result1)
    remove_guest_from_room
    result2 = count_checked_in_guests()
    assert_equal(0, result2)
  end

  def test_count_still_to_pay
    add_guest_to_room
    result1 = count_checked_in_guests()
    assert_equal(1, result1)
    remove_guest_from_room
    result2 = count_still_to_pay()
    assert_equal(1, result2)
  end

end

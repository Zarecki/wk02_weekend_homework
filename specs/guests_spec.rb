require("Minitest/autorun")
require("minitest/rg")
require_relative("../rooms.rb")
require_relative("../guests.rb")
require_relative("../songs.rb")
require_relative("../room_service.rb")

class TestGuests < MiniTest::Test

  def setup
    @guest1 = Guest.new("Francis", "My Way", 50)
    @item1 = Roomservice.new("Beer", 5)
    @song6 = Song.new("My Way", "Frank Sinatra")
  end

def test_guest_name
  assert_equal("Francis", @guest1.name)
end

def test_guest_favourite_song
  assert_equal("My Way", @guest1.favourite_song)
end

def test_guest_wallet
  assert_equal(50, @guest1.wallet)
end

def test_favourite_song_cheer__true
  assert_equal("Here, that's ma tune!", favourite_song_cheer(@guest1, @song6))
end

def test_consume_item
  consume_item(@guest1, @item1)
  result = @guest1.consumed.length
  assert_equal(1, result)
end

end

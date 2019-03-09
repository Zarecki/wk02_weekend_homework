require("Minitest/autorun")
require("minitest/rg")
require_relative("../rooms.rb")
require_relative("../guests.rb")
require_relative("../songs.rb")

class TestGuests < MiniTest::Test

  def setup
    @guest1 = Guest.new("Francis", "My Way", 50)
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

end

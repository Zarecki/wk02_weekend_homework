require("Minitest/autorun")
require("minitest/rg")
require_relative("../rooms.rb")
require_relative("../guests.rb")
require_relative("../songs.rb")
require_relative("../room_service.rb")

class TestSongs < MiniTest::Test

  def setup
    @song1 = Song.new("Sweet Caroline", "Neil Diamond")
    @song2 = Song.new("Song 2", "Blur")
    @song3 = Song.new("Bohemian Rhapsody", "Queen")
    @song4 = Song.new("I Would Do Anything For Love", "Meatloaf")
    @song5 = Song.new("Delilah", "Tom Jones")
    @song6 = Song.new("My Way", "Frank Sinatra")
  end

def test_song_title
  assert_equal("Delilah", @song5.title)
end

def test_song_artist
  assert_equal("Blur", @song2.artist)
end





end

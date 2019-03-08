require("Minitest/autorun")
require("minitest/rg")
require_relative("../rooms.rb")
require_relative("../guests.rb")
require_relative("../songs.rb")

class TestGuests < MiniTest::Test

  def setup
    @person1 = Person.new("Francis", "My Way", 50)
  end

#test name
#test favourite songs
#test wallet

end

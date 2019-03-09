require("Minitest/autorun")
require("minitest/rg")
require_relative("../rooms.rb")
require_relative("../guests.rb")
require_relative("../songs.rb")
require_relative("../room_service.rb")

class TestRoomService < MiniTest::Test

  def setup
    @item1 = Roomservice.new("Beer", 5)
  end

def test_item_name
  assert_equal("Beer", @item1.name)
end

def test_item_price
  assert_equal(5, @item1.price)
end

end

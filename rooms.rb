class Room

attr_reader :price_to_pay, :playlist
attr_accessor :checked_in_guests

  def initialize(capacity, price_to_pay)
    @capacity = capacity
    @price_to_pay = 0
    @playlist = []
    @room_hire = 5
    @checked_in_guests = []
  end
end

def count_checked_in_guests
  return @room1.checked_in_guests.length
end

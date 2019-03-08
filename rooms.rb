class Room

attr_reader :price_to_pay, :playlist, :checked_in_guests

  def initialize(capacity, price_to_pay)
    @capacity = capacity
    @price_to_pay = 0
    @playlist = []
    @room_hire = 20
    @checked_in_guests = []
  end
end

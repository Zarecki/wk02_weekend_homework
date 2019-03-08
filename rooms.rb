class Room

attr_reader :price_to_pay, :playlist
attr_accessor :checked_in_guests, :still_to_pay, :library

  def initialize(capacity, price_to_pay)
    @capacity = capacity
    @price_to_pay = 0
    @library = []
    @room_hire = 5
    @checked_in_guests = []
    @still_to_pay = []
  end
end

  def count_checked_in_guests
    return @room1.checked_in_guests.length
  end

  def add_guest_to_room
    @room1.checked_in_guests << @guest1
  end

  def remove_guest_from_room
    @room1.checked_in_guests.delete(@guest1)
    @room1.still_to_pay << @guest1
  end

  def count_still_to_pay
    return @room1.still_to_pay.length
  end

  def count_songs_in_library
    return @room1.library.length
  end

  def add_songs_to_library(songlist)
    for song in songlist
      @room1.library << song
    end
  end

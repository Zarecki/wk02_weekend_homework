class Room

attr_reader :room_hire_cost, :playlist, :capacity
attr_accessor :checked_in_guests, :still_to_pay, :library

  def initialize(capacity, room_hire_cost)
    @capacity = capacity
    @library = []
    @room_hire_cost = room_hire_cost
    @checked_in_guests = []
    @still_to_pay = []
  end
end

  def count_checked_in_guests(room)
    return room.checked_in_guests.length
  end

  def add_guest_to_room(room, guest)
    room.checked_in_guests << guest
  end

  def remove_guest_from_room(room, guest)
    room.checked_in_guests.delete(guest)
    room.still_to_pay << guest
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

  def room_overflow(queue, cap1, cap2)
    for guest in queue
      if
        count_checked_in_guests(@room1) < cap1
        add_guest_to_room(@room1, guest)
      elsif
        count_checked_in_guests(@room1) >= cap1 && count_checked_in_guests(@room2) < cap2
        add_guest_to_room(@room2, guest)
      elsif
        count_checked_in_guests(@room1) >= cap1 && count_checked_in_guests(@room2) >= cap2
      end
    end
    return "Fully Booked"
  end

  def room_charge(room, guest)
    guest.bill_to_pay += (room.room_hire_cost / count_checked_in_guests(room))
  end

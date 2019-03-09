class Guest

attr_reader :name, :favourite_song, :wallet
attr_accessor :bill_to_pay, :consumed

  def initialize(name, favourite_song, wallet)
    @name = name
    @favourite_song = favourite_song
    @wallet = wallet
    @bill_to_pay = 0
    @consumed = []
  end
end

  def favourite_song_cheer(guest, song)
    return "Here, that's ma tune!" if guest.favourite_song == song.title
  end

  def consume_item(guest, item)
    guest.consumed << item
  end

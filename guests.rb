class Guest

attr_reader :name, :favourite_song, :wallet
attr_accessor :bill_to_pay

  def initialize(name, favourite_song, wallet)
    @name = name
    @favourite_song = favourite_song
    @wallet = wallet
    @bill_to_pay = 0
  end


end

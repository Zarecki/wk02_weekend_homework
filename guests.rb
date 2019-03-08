class Guest

attr_reader :favourite_song, :wallet

def initialize(name, favourite_song, wallet)
  @name = name
  @favourite_song = favourite_song
  @wallet = wallet
end


end

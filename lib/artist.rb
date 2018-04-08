class Artist
  attr_accessor :name, :songs, :genres

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song_instance)
    song_instance.artist = self
    @genres << song_instance.genre
    @songs << song_instance
  end


end

class Genre
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_instance)
    @songs << song_instance
  end

  def artists
    @songs.map do |song_instance|
      song_instance.artist
    end
  end
end

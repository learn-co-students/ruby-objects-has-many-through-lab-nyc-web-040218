class Genre

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def songs
    @songs
  end

  def artists
    self.songs.map do |song|
      song.artist
    end
  end 

end

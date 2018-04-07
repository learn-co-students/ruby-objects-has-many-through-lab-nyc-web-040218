require 'pry'
class Artist
  attr_reader :name, :songs
  # attr_accessor :songs
  def initialize(name)
    @name = name
    @songs = []
    # binding.pry
  end

  def add_song(song)
    # binding.pry
    @songs << song
    song.artist = self
    song.genre.songs << song
  end

  def songs
    @songs
  end

  def genres
    @songs.map {|song| song.genre}
  end
end

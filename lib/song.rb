class Song
  attr_reader :title, :genre
  attr_accessor :artist
  def initialize(title, genre)
    @title = title
    @genre = genre
    @artist
    @genre.songs << self
  end
end

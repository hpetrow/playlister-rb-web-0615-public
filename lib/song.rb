# code song here
class Song
  attr_accessor :name, :artist
  attr_reader :genre

  def genre=(genre)
    @genre = genre
    genre.songs << self
  end
end

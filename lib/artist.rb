# code artist here
class Artist
  attr_accessor :name, :songs, :genres
  @@artists = []

  def initialize
    @songs = []
    @genres = []
    @@artists << self
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @genres << song.genre
    if song.genre != nil
      song.genre.add_artist(self)
    end
  end

  def self.reset_artists
    @@artists = []
  end

  def self.all
    @@artists
  end

  def self.count
    @@artists.length
  end
end

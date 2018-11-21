

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  # @@genre_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre

  end

  def self.count
    @@count
  end

  def self.artists
    @non_unique_artists = @@artists
    @@artists.uniq
  end

  def self.genres
    @non_unique_genres = @@genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      genre_count[genre] = @non_unique_genres.count(genre)
    end

    genre_count
  end

  def self.artist_count
    artist_count = {}

    @@artists.each do |artist|
      artist_count[artist] = @non_unique_artists.count(artist)
    end

    artist_count
  end
end

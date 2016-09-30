class Song

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name

    @artist = artist
    @@artists << artist

    @genre = genre
    @@genres << genre

    @@count += 1
  end

  @@count = 0
  @@genres = []
  @@artists = []

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.each_with_object(Hash.new(0)) do |genre, genre_hash|
      genre_hash[genre] += 1
    end
  end

  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) do |artist, artist_hash|
      artist_hash[artist] += 1
    end
  end



end

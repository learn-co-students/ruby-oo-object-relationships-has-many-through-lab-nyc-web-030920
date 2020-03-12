class Genre
  attr_accessor :name
  
  @@all = []

  def initialize(name)
    @name = name
    Genre.all << self 
  end

  def self.all
    @@all
  end

  #collection of songs belonging to this genre
  def songs
    Song.all.select do |song|
      song.genre == self
    end 
  end
#iterates over the genre's collection of songs and collects the artist that owns each song.
  def artists
    songs.map do |song|
      song.artist
    end
  end
  
end

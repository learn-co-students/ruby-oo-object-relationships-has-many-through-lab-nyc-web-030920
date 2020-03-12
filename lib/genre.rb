class Genre
@@all =[]
attr_accessor :name, :artist
def initialize(name)
    @name = name
    @artist = artist
    Genre.all << self
end

def songs
    Song.all.select {|songs| songs.genre == self}
end

def self.all
    @@all
end

def artists
    songs.map {|songs| songs.artist}
end

end
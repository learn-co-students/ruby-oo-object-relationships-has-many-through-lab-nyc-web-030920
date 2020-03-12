class Song
@@all =[]
attr_accessor :name, :genre, :artist
def initialize(name, artist=nil, genre = nil)
    @name = name
    @genre = genre
    @artist = artist
    Song.all << self
end

def new(name, artist, genre)
    Song.new(name, artist, genere)
end

def self.all
    @@all
end

end
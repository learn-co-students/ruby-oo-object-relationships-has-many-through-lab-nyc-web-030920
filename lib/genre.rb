class Genre
attr_accessor :name, :artist, :song
@@all = []

def initialize(name)
    @name = name
    @artist = artist
    @song = song
    @@all << self
end

def songs
Song.all.select do |song|
    song.genre == self
    end
end

def artists
self.songs.map do |song|
    song.artist
    end
end


def self.all
    @@all
end


end
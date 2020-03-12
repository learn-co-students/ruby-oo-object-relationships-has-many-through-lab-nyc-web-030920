class Artist
attr_accessor :name, :genre, :song
@@all = []

def initialize(name)
    @name = name
    @genre = genre
    @song = song
    @@all << self
end


def new_song(name=nil, genre=nil)
Song.new(self, name, genre)
end

def songs
Song.all.select do |song|
    song.artist == self
    end
end

def genres
    songs.all.each do |song|
        song.genre
    end
end

def self.all
    @@all
end


end

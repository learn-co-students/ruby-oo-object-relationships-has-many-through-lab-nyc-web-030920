class Artist
attr_reader :name, :genre, :song
@@all = []

def initialize(name)
    @name = name
    @genre = genre
    @song = song
    @@all << self
end


def new_song(name, genre)
Song.new(name, self, genre)
end

def songs
Song.all.select do |song|
    song.artist == self
    end
end

def genres
    self.songs.map do |song|
        song.genre
    end
end

def self.all
    @@all
end


end

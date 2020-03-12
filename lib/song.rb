class Song
    attr_accessor :artist, :genre, :name
    @@all =[]
    def initialize(name,artist, genre)
        @artist= artist
        @genre = genre
        @name = name
        Song.all << self
    end
    def self.all
        @@all
    end

    
end
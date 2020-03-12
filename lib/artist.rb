class Artist 
    attr_accessor :name 
    @@all = []
    def initialize(name)
        @name = name 
        Artist.all << self
    end 

    def self.all 
        @@all
    end

    def songs
        songs = Song.all.select do |song|
            song.artist 
        end 
    end 

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        self.songs.map do |song|
            song.genre 
        end 
    end 
end 
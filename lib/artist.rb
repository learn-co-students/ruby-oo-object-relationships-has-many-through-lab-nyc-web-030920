class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
        # given a name and genre, creates a new song associated with that artist
    end

    def genres
       songs.map(&:genre)
    end
end
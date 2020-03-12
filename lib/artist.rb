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
        Song.all.select do |song_instance|
            song_instance.artist == self 
        end

    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
    end

    #know this artist's genres
    def genres 
        songs.map do |song_instance|
            song_instance.genre
        end

    end

end
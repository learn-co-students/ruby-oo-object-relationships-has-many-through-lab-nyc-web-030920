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

    def songs
        Song.all.select do |song_instance|
            song_instance.genre == self 
        end
    end

    #know it's artists
    def artists
        songs.map do |song_instance|
            song_instance.artist
        end

    end

end

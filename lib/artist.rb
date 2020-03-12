class Artist 
    attr_reader :name 
    @@all = []

    def initialize(name)
        @name = name 
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
        genres = self.songs.reduce([].to_set) do |memo, song| 
            if !memo.include?(song.genre) 
                memo.add(song.genre) 
            end 
            memo 
        end 
        genres.to_a 
    end 
    def self.all 
        @@all 
    end 
end 

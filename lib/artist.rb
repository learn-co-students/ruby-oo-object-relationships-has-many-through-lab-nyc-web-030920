class Artist

    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name 
        @@all << self
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
        # binding.pry
        # TODO: apply song to artist
    end
    def songs
        Song.all.select {|song| song.artist == self}
    end
    def genres
        genres = self.songs.reduce([].to_set) do |memo, song|
            if !memo.include?(song.genre)
                memo.add(song.genre)
            end
            return memo
        end
        return genres.to_a
    end

    def self.all
        return @@all
    end
end
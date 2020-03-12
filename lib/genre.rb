require 'pry'

class Genre

    @@all = []
    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end
    def artists
        artists = self.songs.reduce([].to_set) do |memo, song|
            if !memo.include?(song.artist)
                memo.add(song.artist)
            end
            memo
        end
        # binding.pry
        return artists.to_a
    end

    def self.all
        return @@all
    end
end
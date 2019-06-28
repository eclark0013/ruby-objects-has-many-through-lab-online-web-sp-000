class Genre

    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
      @name = name
      @songs = []
      @@all<<self
    end

    def self.all
      @@all
    end

    def new_song(name, genre)
      new_song = Song.new(name, self, genre)
      @songs << new_song
    end

    def songs
      Song.all.each.select {|song| song.genre == self}
    end

    def artists
      self.songs.collect {|song| song.artist}
    end



end

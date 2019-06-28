class Artist

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
    new_song = Song.new(self, name, genre)
    @songs << new_song
  end

  def songs
    Songs.all.each.select {|song| song.artist == self}
  end

  def genres
    self.songs.each.genre
  end


end

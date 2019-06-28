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


end

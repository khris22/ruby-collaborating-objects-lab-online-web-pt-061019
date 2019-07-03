class Song
  attr_accessor :name
  attr_reader :artist
  @@all = []

  def initialize(name)
    @name = name

    @@all = []
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end

  def self.new_from_filename(filename)

  end

end

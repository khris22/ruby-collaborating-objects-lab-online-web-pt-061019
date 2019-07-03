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

  def self.new_by_filename(filename)
    artist_name, song_name, genre_name = filename.chomp(.mp3).split(" - ")
  end

end

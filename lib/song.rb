class Song
  attr_accessor :name, :genre
  attr_reader :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all = []
  end

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end


  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end

  def self.new_by_filename(filename)
    artist_name, song_name, genre_name = filename.chomp(".mp3").split(" - ")
    song = self.new(song_name)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song.genre = genre_name
    song.save
  end

end

class Song
  attr_accessor :name 
  attr_reader :artist
  @@all = []

  def initialize(name)
    @name = name

    @@all = []
  end

  def artist=(artist)

  end
  
  def self.new_from_filename(filename)
    
  end

end

class Artist
  attr_accessor :name,:artist

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    Artist.all << self
    self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    if self.all.find {|artist| artist.name == name}
      self.all.find {|artist| artist.name == name}
    else
      self.new(name).save
    end
  end

  def print_songs
    puts self.songs.map {|song| song.name}
  end

end

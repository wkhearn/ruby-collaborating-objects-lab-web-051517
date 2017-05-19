class Song
  attr_accessor :name,:artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    artist_name, title = file_name.split(" - ")
    song = self.new(title)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(song)
    song
  end

end

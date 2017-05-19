class MP3Importer
  attr_accessor :path,:files,:artist

  def initialize(test_music_path)
    @path = test_music_path
    @files = []
    #@song_list = []
  end

  def files
    @files
    Dir[path + "/*.mp3"].each do |file|
      @files << File.basename(file)
    end
    @files
  end

  def import
    files.each{|file| Song.new_by_filename(file)}

  #   self.files
  #   #binding.pry
  #   @files.each do |file|
  #     @artist = Artist.find_or_create_by_name(file.split(" - ")[0])
  #     @artist = add_song(file.split(" - ")[1])
  #   end
  #   #binding.pry
  end

end

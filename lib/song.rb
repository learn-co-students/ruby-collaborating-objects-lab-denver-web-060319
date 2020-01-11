class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    temp = file_name.split(" - ")
    song = Song.new(temp[1])
    song.artist = Song.artist_name(temp[0])
    song
  end

  def self.artist_name(artist_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
    artist
  end
end
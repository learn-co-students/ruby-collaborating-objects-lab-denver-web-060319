class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artists_name)
    temp = @@all.find do |artist|
      artist.name == artists_name
    end
    temp ||= Artist.new(artists_name)
    temp
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
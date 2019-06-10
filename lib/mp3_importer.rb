require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    temp = Dir.glob(path + "/*.mp3")
    @files = temp.map do |file|
      file.slice!(path + "/")
      file
    end
  end

  def import
    @files.each do |file_name|
      Song.new_by_filename(file_name)
    end
  end

end
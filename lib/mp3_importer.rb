require 'pry'

class MP3Importer
    attr_accessor :path 
    
    def initialize(path)
        @path = path
    end

    def files
        Dir.entries(@path).find_all do | file |
            file if file.size > 2
        end
    end

    def import
        files.map { |filename| Song.new_by_filename(filename) }
    end
end
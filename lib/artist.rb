class Artist 
    attr_accessor :name
    @@all = []


    def initialize(name)
        @name = name
        @song = []
        save
      end

      def save
        @@all << self
      end
    

end
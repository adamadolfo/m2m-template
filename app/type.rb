class Type

    attr_reader :element, :effective, :weakness
    
    @@all = []

    def initialize(element, effective, weakness)
        @element = element
        @effective = effective
        @weakness = weakness
        @@all << self
    end

    def pokemon

    end
    

    def self.all
        @@all
    end






end

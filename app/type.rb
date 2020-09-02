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
        PokemonType.all.select {|inst_pokemon| inst_pokemon.type == self}
    end
    




    def type_weakness #find the number of weaknesses that a given type has
        self.weakness.count
    end
    
    def self.all
        @@all
    end
    
end

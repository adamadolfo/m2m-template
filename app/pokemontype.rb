class PokemonType

    attr_reader :pokemon, :type
    attr_accessor 
    @@all = []

    def initialize(pokemon, type)
        @pokemon = pokemon
        @type = type
        @@all << self
    end

    def self.all 
        @@all
    end

    
    
end

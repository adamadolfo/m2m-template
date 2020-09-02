class PokemonType


    attr_reader :pokemon, :type

    @@all = []

    def initialize(pokemon, type, type2=nil)
        @pokemon = pokemon
        @type = type
        @type2 = type2
        @@all << self
    end

    def self.all 
        @@all
    end


end

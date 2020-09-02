class Pokemon

    attr_reader :name, :color, :strength, :thickness
    @@all_pokemon = []

    def initialize(name, color, strength, thickness)
        @name = name
        @color = color
        @strength = strength
        @thickness = thickness
        @@all_pokemon << self
    end

    def types
        PokemonType.all.select do |complete|
            complete.pokemon == self
        end.map do |pair|
        pair.type
        end
    end

    def self.total_strength
        total_strength = 0
        self.all.select {|inst_pokemon| total_strength += inst_pokemon.strength}
        return total_strength
    end

    def self.highest_individual_strength
        self.all.max {|pokemon_challenger, pokemon_champion| 
        pokemon_challenger.strength <=> pokemon_champion.strength
        }
    end

    def self.all
        @@all_pokemon
    end

end

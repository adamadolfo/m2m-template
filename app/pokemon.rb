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
            # binding.pry
        end.map do |pair|
        pair.type
        end
        

    end


    def self.all
        @@all
    end




end

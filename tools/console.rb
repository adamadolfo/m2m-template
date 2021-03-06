require_relative '../config/environment.rb'


# create test data/variables here
charizard = Pokemon.new("Charizard", "Orange", 700, 400)
blaziken = Pokemon.new("Blaziken", "red", 750, 400)
slowbro = Pokemon.new("Slowbro", "pink", 500, 900)
mewtwo = Pokemon.new("Mewtwo", "grey", 1000, 900)
tyranitar = Pokemon.new("Tyranitar", "green", 900, 800)


psychic = Type.new("Psychic", ["fighting", "poison"], ["dark", "ghost", "bug"])
water = Type.new("Water", ["fire", "ground", "rock"], ["electric", "grass"])
fire = Type.new("Fire", ["ice", "grass", "steel", "bug"], ["water", "ground", "rock"])
flying = Type.new("Flying", ["bug", "grass", "fighting"], ["electric", "ice", "rock"])
fighting = Type.new("Fighting", ["dark", "ice", "normal", "rock", "steel"], ["fairy", "flying", "psychic"])
dark = Type.new("Dark",["ghost", "psychic"], ["fighting", "bug", "fairy"])
rock = Type.new("Rock", ["fire", "flying", "ice", "bug"], ["fighting", "ground", "water", "grass", "steel" ])

mewtwo_type = PokemonType.new(mewtwo, psychic)
charizard_type = PokemonType.new(charizard, fire)
blaziken_type = PokemonType.new(blaziken, fire)
slowbro_type = PokemonType.new(slowbro, water)
tyranitar_type = PokemonType.new(tyranitar, rock)

# puts "returns the pokemon that belong to a type"
# p fire.pokemon
p Pokemon.total_strength
p Pokemon.highest_individual_strength
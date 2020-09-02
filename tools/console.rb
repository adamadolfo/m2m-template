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

mewtwo_complete = PokemonType.new(mewtwo, psychic)
charizard_complete = PokemonType.new(charizard, fire, flying)
blaziken_complete = PokemonType.new(blaziken, fire, fighting)
slowbro_complete = PokemonType.new(slowbro, water, psychic)
tyranitar_complete = PokemonType.new(tyranitar, dark, rock)



puts "pokemon knows its types"
puts mewtwo.types == [psychic]
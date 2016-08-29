require_relative 'engine'
require_relative 'players/perrodactilo'
require_relative 'players/pupudrilo'
require_relative 'players/tom_cruise'
require_relative 'players/ninjaloco'
require_relative 'players/zombieloco'
require_relative 'players/mageloco'

engine = Engine.new

#char1 = Perrodactilo.new("Pedro", :green, engine)
char1 = Pupudrilo.new("Pupi", :red, engine)
char2 = TomCruise.new("Samurai", :green, engine)

engine.init_game char1, char2
engine.go!

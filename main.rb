require_relative 'engine'

#importar jugadores
require_relative 'players/pupudrilo'
require_relative 'players/tom_cruise'
require_relative 'players/velocirockstar'
require_relative 'players/perrodactilo'

engine = Engine.new

# char1 = Perrodactilo.new("Pedro", :green, engine)
# char1 = Pupudrilo.new("Pupudrilo", :yellow, engine)
char1 = Velocirockstar.new("Raptor", :yellow, engine)
char2 = TomCruise.new("Samurai", :green, engine)

engine.init_game char1, char2
engine.go!

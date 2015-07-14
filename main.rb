require_relative 'engine'
require_relative 'players/perrodactilo'
require_relative 'players/pupudrilo'
require_relative 'players/tom_cruise'

engine = Engine.new

#char1 = Perrodactilo.new("Pedro", :green, engine)
char1 = Pupudrilo.new("Pupudrilo", :yellow, engine)
char2 = TomCruise.new("Samurai", :green, engine)

engine.init_game char1, char2
engine.go!

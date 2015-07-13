require_relative 'engine'
require_relative 'players/perrodactilo'
require_relative 'players/pupudrilo'

engine = Engine.new

char1 = Perrodactilo.new("Perrodactilo", engine)
char2 = Pupudrilo.new("Pupudrilo", engine)

engine.init_game char1, char2
engine.go!

require_relative 'engine'
require_relative 'players/pupudrilo'
require_relative 'players/perrito'

#importar jugadores
require_relative 'players/RF'
require_relative 'players/SB'
require_relative 'players/RW'
require_relative 'players/IC'
require_relative 'players/BA'
require_relative 'players/MS'
require_relative 'players/LP'
require_relative 'players/HV'
require_relative 'players/DP'
require_relative 'players/MJ'
require_relative 'players/YO'
require_relative 'players/JR'
require_relative 'players/ML'
require_relative 'players/EJ'
require_relative 'players/SC'
require_relative 'players/NA'
require_relative 'players/JB'
require_relative 'players/DC'
require_relative 'players/OG'
require_relative 'players/AC'





engine = Engine.new





#char1 = Perrodactilo.new("Pedro", :green, engine)
player1 = Pupudrilo.new("Humberto", :orange, engine)
player2 = TomCruise.new("Samurai", :green, engine)

engine.init_game player1, player2
engine.go!

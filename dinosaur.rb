require_relative "character"
require_relative "special_action"

class Dinosaur < Character

  def turn
  end

  def roar!
    #Baja la defensa del oponente en 1 punto. 0 Cooldown
    SpecialAction.new "Rugido!!", 1, {health: 20, defense: 1, push: 0}
  end

  def earth_quake!
    #Ataca -5 puntos de la salud de un oponente. 1 Cooldown
    SpecialAction.new "Terremoto!!", 3, {health: 30, defense: 0, push: 1}
  end

end

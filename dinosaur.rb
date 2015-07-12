require_relative "character"

class Dinosaur < Character

  def turn
  end

  def roar!
    #Baja la defensa del oponente en 1 punto. 0 Cooldown

  end

  def crush!
    #Ataca -5 puntos de la salud de un oponente. 1 Cooldown
  end

  def sprint!
    #Avanza 2 posiciones y ataca -6 puntos de la salud de un oponente. 3 Cooldown
  end

end

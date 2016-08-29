require_relative '../characters/dinosaur'

class Lagartija < Dinosaur
  def turn
    # la plantilla basica.
    tile = self.detect
    if tile.empty?
      self.move!
    else
      self.attack!
    end
  end
end

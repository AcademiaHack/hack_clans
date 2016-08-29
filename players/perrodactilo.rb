require_relative '../characters/dinosaur'

class Perrodactilo < Dinosaur
  def turn
    tile = self.detect
    if tile && tile.empty?
      self.move!
    else
      self.attack!
    end
  end
end

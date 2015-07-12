require_relative '../dinosaur'

class Pupudrilo < Dinosaur
  def turn
    tile = self.detect
    if tile && tile.empty?
      self.move!
    else
      self.rotate
    end
  end
end

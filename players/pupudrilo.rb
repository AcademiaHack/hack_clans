require_relative '../characters/dinosaur'

class Pupudrilo < Dinosaur
  def turn
    tile = self.detect
    if tile && tile.empty?
      @count = 0
      self.move!
    else
      if @count > 1
        self.earth_quake!
      else
        @count += 1
        self.roar!
      end
    end
  end
end

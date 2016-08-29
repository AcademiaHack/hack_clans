require_relative '../characters/ninja'

class TomCruise < Ninja
  def turn
    tile = self.detect
    if tile && tile.empty?
      self.rest!
    else
      self.shuriken!
    end
  end
end

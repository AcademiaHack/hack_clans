require_relative '../ninja'

class TomCruise < Ninja
  def turn
    tile = self.detect
    if tile && tile.empty?
      self.rest!
    else
      self.attack!
    end
  end
end

require_relative '../ninja'

class NinjaLoco < Ninja
  def turn
    tile = self.detect
    if self.health <= 50 && tile.empty? == false
      self.rotate
      self.move!
    elsif tile && tile.empty?
      if self.health <= 90
        if self.side == -1
          self.rotate
        end
        self.rest!
      else
        self.move!
      end
    else
      self.kick!
    end
  end
end

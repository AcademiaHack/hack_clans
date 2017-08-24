require_relative '../dinosaur'

class Velocirockstar < Dinosaur
  def turn
    tile = self.detect
    not_facing_something = tile && tile.empty?
    healthy = self.health >= 60

    if not_facing_something
	  if healthy
	  	self.move!
	  else
	  	self.rest!
	  end
    else
	  if healthy
      	self.attack!
      else
      	self.rotate
      	self.move!
      	self.rotate
      end
    end

  end
end

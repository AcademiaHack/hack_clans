require_relative '../mage'

class MagoLoco < Mage
  @@count = 10
  def turn
    if @@count >= 10
      @@count -= 1 
      self.avada_kedavra!
    elsif @@count >= 5
      @@count -= 1
      self.water_drill!
    elsif @@count >= 3
      @@count -= 1
      self.flipendo!
    else
      @@count -= 1
      self.fire_ball!
      if @@count >= 0
        @@count = 10
      end
    end
  end
end

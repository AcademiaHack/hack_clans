require_relative "character"
require_relative "special_action"

class  Ninja < Character

  def turn
  end

  def shuriken!
    SpecialAction.new "Shuriken!!", 1, {health: 10, defense: 10, push: 0}
  end

  def kick!
    SpecialAction.new "Patada!!", 3, {health: 20, defense: 0, push: 1}
  end

  def rest!
    :rest_full
  end

  def to_s

    @color_original = self.color
    if defense > 15
      self.color = :light_blue
    else
      self.color = @color_original
    end

    if @side == 1
      "#{@name}".colorize(self.color) + ">".red
    elsif @side == -1
      "<".red + "#{@name}".colorize(self.color)
    end
  end
end

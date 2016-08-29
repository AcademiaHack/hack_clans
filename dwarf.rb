require_relative "character"
require_relative "special_action"

class Dwarf < Character

  def turn
  end

  def hammer_blow!
    SpecialAction.new "Hammer Blow!!", 1, {health: 10, defense: 5, push: 1}
  end

  def pickaxe_throwing!
    SpecialAction.new "This isn't just for getting gold, you know. Pickaxe Throwing!!", 3, {health:20, defense: 20, push: 0}
  end

  def bom!
    SpecialAction.new "BAAAAAAAAANG!!", 4, {health: 25, defense: 15, push: 1} 
  end

end

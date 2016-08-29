require_relative "character"
require_relative "special_action"

class Zombie < Character

  def turn
  end

  def infected_bite!
    SpecialAction.new "Braiiiiiiiiiiiiinsssss", 1, {health: 25, defense: 1, push: 0}
  end

  def blood_suck!
    SpecialAction.new "BRAAAAAINNNSS", 2, {health: 20, defense: 2, push: 0}
  end

  def gimme_your_brain!
    SpecialAction.new "GIMME YOUR BRAAAAAIN", 4, {health: 40, defense: 5, push: 0} 
  end

end

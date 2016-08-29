require_relative "character"
require_relative "special_action"

class Zombie < Character

  def turn
  end

  def infected_bite!
    SpecialAction.new "Now you're like me!", 1, {health: 10, defense: 0, push: 0}
  end

  def blood_suck!
    SpecialAction.new "Gimme your bloood...", 3, {health: 30, defense: 10, push: 1}
  end

  def brains_eat!
    SpecialAction.new "LOOK AT THAT BRAIN!", 5, {health: 50, defense: 20, push: 0} 
  end

end

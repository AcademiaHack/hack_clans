class SpecialAction
  attr_accessor :name, :cooldown, :ready, :effect

  def initialize name, cooldown, effect
    @name = name
    @cooldown = cooldown
    @effect = effect
    #Cuando ready == 0 quiere decir que puede ser utilizada la accion!
    @ready = 0    
  end
end

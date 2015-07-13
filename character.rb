class Character
  attr_accessor :health, :side, :sight, :name_test

  def initialize name_test, context
    @name_test = name_test
    @sight = 3
    @health = 100
    @side = 1

    @context = context
  end

  def rotate
    #rotarse 180 grados
    if @side == 1
      @side = -1
    elsif @side == -1
      @side = 1
    end
    :free_action
  end

  def detect
    #detectar la casilla frente al char
    @context.detect_tile self
  end

  def look
    #detectar las tres casillas frente al char
    @context.look_titles self
  end

  def attack!
    #atacar la casilla frente al char
    :attack
  end

  def move!
    #moverse a la casilla frente al char
    :move
  end

  def to_s
    if @side == 1
      "#{@name_test}>"
    elsif @side == -1
      "<#{@name_test}"
    end
  end

  def turn
  end
end

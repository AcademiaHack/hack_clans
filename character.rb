class Character
  attr_accessor :health, :side, :sight, :name_test

  def initialize name_test, engine
    @name_test = name_test
    @sight = 3
    @health = 100
    @side = 1

    @engine = engine
  end

  def rotate
    #rotarse 180 grados
    if @side == 1
      @side = -1
    elsif @side == -1
      @side = 1
    end
  end

  def move!
    #moverse 1 casilla
    :move
  end

  def detect
    #detectar la casilla frente al char
    @engine.detect_tile self
  end

  def look
    #detectar las tres casillas frente al char
    @engine.look_titles self
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

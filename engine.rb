require_relative 'board'

class Engine
  attr_accessor :char1, :char2, :board
  BOARD_LENGTH = 10

  def initialize
    @board = Board.new BOARD_LENGTH
  end

  def init_game char1, char2
    @char1 = char1
    @char2 = char2
    @board.place_character @char1, 0

    @board.place_character @char2, BOARD_LENGTH - 1
    @char2.rotate
  end

  def keep_playing
    self.char1.health > 0 && self.char2.health > 0
  end

  def boundaries_check position
    position >= 0 && position < BOARD_LENGTH
  end

  def collision_check position
    self.board.get(position).empty?
  end

  def attack_player char, oponent
    actual_position = self.board.find_character char
    next_postion = actual_position + char.side

    if(boundaries_check next_postion)
      tile = self.board.get next_postion
      if tile.type_of == "Character"
          oponent.health -= 10
      end
    end

  end

  def move_player char
    actual_position = self.board.find_character char
    next_postion = actual_position + char.side

    if(boundaries_check next_postion)
      if(collision_check next_postion)
        self.board.blank actual_position
        self.board.place_character(char, next_postion)
      else
        puts "Casilla ocupada!"
      end
    else
      puts "Pared detectada!"
    end
  end

  def detect_tile char
    actual_position = self.board.find_character char
    next_postion = actual_position + char.side
    if(boundaries_check next_postion)
      self.board.get(next_postion)
    else
      puts "Siguiente casilla fuera del tablero!"
    end
  end

  def look_titles char
    titles = []
    aux_sight = char.sight-1
    aux_side = 0

    actual_position = self.board.find_character char
    next_postion = actual_position + char.side

    for i in (0..aux_sight)
      aux_side = i * char.side
      if(boundaries_check(next_postion + aux_side))
        titles << self.board.get(next_postion + aux_side)
      end
    end
    titles
  end

  def do_action action, char, oponent
    case action
    when :free_action
      puts "Accion gratuita"
    when :move
      move_player char
    when :attack
      attack_player char, oponent
    else
      puts "La accion #{action} no es reconocida!"
    end
  end

  def go!
    while true
      self.board.draw

      action = self.char1.turn
      do_action action, char1, char2
      puts "Turno de #{char1.name_test}"
      puts "Health #{char1.health}"

      action = self.char2.turn
      do_action action, char2, char1
      puts "Turno de #{char2.name_test}"
      puts "Health #{char2.health}"

      sleep 2
      break if !action || self.char1.health < 0 || self.char2.health < 0
    end
  end
end

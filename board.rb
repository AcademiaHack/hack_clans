require_relative 'tile'

class Board
  attr_accessor :length

  def initialize length = 5
    @tiles = []
    @length = length

    @length.times do
      tile = Tile.new
      @tiles.push tile
    end
  end

  def blank position
    @tiles[position].content = "_"
  end

  def get position
    @tiles[position]
  end

  def draw
    puts "\n-----------------------------------------------------------------"
    @tiles.each do |tile|
      print "[#{tile.to_s}]"
    end
    puts "\n-----------------------------------------------------------------"
  end

  def find_character char
    @tiles.each_with_index do |tile, i|
      return i if tile.content.to_s == char.to_s
    end
    return -1
  end

  def place_character char, position
    @tiles[position].content = char
  end
end

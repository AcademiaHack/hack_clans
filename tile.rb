class Tile
  attr_accessor :content

  def initialize
    @content = "_"
  end

  def empty?
    @content && @content == "_"
  end

  def to_s
    @content.to_s
  end

end

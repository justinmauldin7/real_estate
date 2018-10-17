class Room
  def initialize(room, length, width)
    @room = room
    @length = length
    @width = width
  end

  def category
    @room
  end

  def area
    @length * @width
  end
end

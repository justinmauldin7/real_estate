require './lib/room'

class House
  attr_reader :price, :address, :rooms_in_house
  def initialize(price, address)
    @price = price.split("$")[1].to_i
    @address = address
    @rooms_in_house = []
  end

  def rooms
    @rooms_in_house
  end

  def add_room(room)
   @rooms_in_house << room
  end

end

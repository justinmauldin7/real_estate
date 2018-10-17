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

  def rooms_from_category(room_category)
    #don't thing this is working yet. Maybe close? Not sure.
    room_from_room = @rooms_in_house.each do |category|
      category.room
    end
    if room_from_room == room_category
      #return the room
    end
  end

  def area
    #maybe this is close too?
    @rooms_in_house.each do |area|
      area = room.length * room.width
    end
    #find a way to add the area of each room together
  end

end

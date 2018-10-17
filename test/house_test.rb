require './lib/room'
require './lib/house'
require 'minitest/autorun'
require 'minitest/pride'

class HouseTest < Minitest::Test
  def test_a_house_exists
    house = House.new("$400000", "123 sugar lane")
    assert_instance_of House, house
  end

  def test_a_house_has_a_price
    house = House.new("$400000", "123 sugar lane")
    assert_equal 400000, house.price
  end

  def test_a_house_has_an_address
    house = House.new("$400000", "123 sugar lane")
    assert_equal "123 sugar lane", house.address
  end

  def test_a_house_has_rooms
    house = House.new("$400000", "123 sugar lane")
    assert_equal [], house.rooms
  end

  def test_rooms_get_added_to_house
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    assert_equal [room_1], house.add_room(room_1)
  end

  def test_another_room_can_be_added_to_house
    house = House.new("$400000", "123 sugar lane")
    room_2 = Room.new(:bedroom, 11, 15)
    assert_equal [room_2], house.add_room(room_2)
  end

  def test_you_can_see_all_rooms_in_the_house
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)

    house.add_room(room_1)
    house.add_room(room_2)

    assert_equal [room_1, room_2], house.rooms
  end

end

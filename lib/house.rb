class House
  attr_reader :price, :address
  def initialize(price, address)
    @price = price.split("$")[1].to_i
    @address = address
  end

  
end

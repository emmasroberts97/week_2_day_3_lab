class Food

  attr_accessor :name, :price, :rejuvenation

  def initialize(name, price, rejuvenation_level)
    @name = name
    @price = price
    @rejuvenation = rejuvenation_level
  end
  
end

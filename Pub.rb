class Pub

attr_accessor :name, :till, :drinks

def initialize(name, drinks)
  @name = name
  @till = 0
  @drinks = drinks
end

def increase_money(drink)
  @till += drink.price
end


end

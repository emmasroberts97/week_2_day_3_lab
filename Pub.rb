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

def customer_buys_drink(customer, drink)
  increase_money(drink)
  customer.reduce_money(drink)
end

end

class Pub

attr_accessor :name, :till, :drinks

def initialize(name, drinks)
  @name = name
  @till = 0
  @drinks = drinks
end

def increase_money(item)
  @till += item.price
end

def customer_buys_drink(customer, drink)
  if (customer.show_id() >= 18) && (customer.drunkenness < 50)
    increase_money(drink)
    customer.reduce_money(drink)
    customer.increase_drunkenness(drink)
  end
  return "I can't serve you!"
end

def customer_buys_food(customer, food)
  increase_money(food)
  customer.reduce_money(food)
  customer.reduce_drunkenness(food)
end   

end

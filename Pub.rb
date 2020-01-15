class Pub

attr_accessor :name, :till, :drinks, :stock

def initialize(name, drinks, stock)
  @name = name
  @till = 0
  @drinks = drinks
  @stock = stock
end

def increase_money(item)
  @till += item.price
end

def remove_drink_from_stock(drink_name)
  for drink in @stock
    if drink == drink_name
      @stock.delete_at(@stock.index(drink))
    end
  end
end


def customer_buys_drink(customer, drink)
  if (customer.show_id() >= 18) && (customer.drunkenness < 50)
    increase_money(drink)
    remove_drink_from_stock(drink)
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

def stock_count
  return @stock.count
end

def stock_value
  total = 0
  for stock in @stock
    total += stock.price
  end
  return total
end


end

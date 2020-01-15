class Customer

attr_accessor :name

def initialize(name, wallet_amount)
@name = name
@wallet = wallet_amount
end

def get_wallet
  return @wallet
end

def reduce_money(drink)
  @wallet -= drink.price
end

end

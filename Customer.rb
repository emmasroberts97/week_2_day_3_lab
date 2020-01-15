class Customer

  attr_accessor :name, :drunkenness

  def initialize(name, wallet_amount, age)
    @name = name
    @wallet = wallet_amount
    @age = age
    @drunkenness = 0
  end

  def get_wallet()
    return @wallet
  end

  def reduce_money(item)
    @wallet -= item.price
  end

  def show_id()
    return @age
  end

  def increase_drunkenness(drink)
    @drunkenness += drink.level
  end

  def reduce_drunkenness(food)
      @drunkenness -= food.rejuvenation
  end

end

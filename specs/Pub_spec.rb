require('minitest/autorun')
require('minitest/reporters')

require_relative("../Pub.rb")
require_relative("../Drink.rb")
require_relative("../Customer.rb")
require_relative("../Food.rb")


Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class PubTest < MiniTest::Test

def setup()
  @drink = Drink.new("Screw driver", 5, 20)
  @drink1 = Drink.new("Surfer on acid", 6, 25)
  @drink2 = Drink.new("Cosmopolition", 8, 30)

  @drinks = [@drink, @drink, @drink, @drink1, @drink2]

  @stock = @drinks

  @pub = Pub.new("Main Street Pub", @drinks, @stock)

  @food1 = Food.new("Pizza", 5, 10)
  @food2 = Food.new("Garlic Bread", 3, 20)

end

def test_add_money
  @pub.increase_money(@drink)
  assert_equal(5, @pub.till)
end

def test_customer_buys_drink
  customer = Customer.new("Peter", 25, 21)
  @pub.customer_buys_drink(customer, @drink2)
  assert_equal(8, @pub.till)
  assert_equal(17, customer.get_wallet)
  assert_equal(4, @pub.stock_count)
end

def test_customer_buys_drink__age_denied
  customer = Customer.new("Sally", 100, 16)
  value = @pub.customer_buys_drink(customer, @drink)
  assert_equal("I can't serve you!", value)
end

def test_customer_buys_drink__drunkenness_denied
  customer = Customer.new("Josh", 100, 23)
  @pub.customer_buys_drink(customer, @drink2)
  @pub.customer_buys_drink(customer, @drink1)
  value = @pub.customer_buys_drink(customer, @drink)
  assert_equal("I can't serve you!", value)
end

def test_customer_buys_food
  customer = Customer.new("Emma", 50, 22)
  @pub.customer_buys_drink(customer, @drink)
  assert_equal(20, customer.drunkenness)
  @pub.customer_buys_food(customer, @food2)
  assert_equal(0, customer.drunkenness)
  assert_equal(8, @pub.till)
end

def test_stock_count
  assert_equal(5,@pub.stock_count)
end

def test_stock_value
  value = @pub.stock_value
  assert_equal(29, value)
end

end

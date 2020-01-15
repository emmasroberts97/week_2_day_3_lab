require('minitest/autorun')
require('minitest/reporters')

require_relative("../Pub.rb")
require_relative("../Drink.rb")
require_relative("../Customer.rb")



Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class PubTest < MiniTest::Test

def setup()
  @drink = Drink.new("Screw driver", 5)
  @drink1 = Drink.new("Surfer on acid", 6)
  @drink2 = Drink.new("Cosmopolition", 8)

  @drinks = [@drink, @drink1, @drink2]

  @pub = Pub.new("Main Street Pub", @drinks)
end

def test_add_money
  @pub.increase_money(@drink)
  assert_equal(5, @pub.till)
end

def test_customer_buys_drink
  customer = Customer.new("Peter", 25)
  @pub.customer_buys_drink(customer, @drink2)
  assert_equal(8, @pub.till)
  assert_equal(17, customer.get_wallet)
end

end

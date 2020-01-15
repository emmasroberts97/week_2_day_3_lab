require('minitest/autorun')
require('minitest/reporters')

require_relative("../Customer.rb")
require_relative("../Drink.rb")
require_relative("../Food.rb")
require_relative("../Pub.rb")


Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class CustomerTest < MiniTest::Test

def setup()
  @customer = Customer.new("Emma", 50, 22)
end


def test_reduce_money()
  drink = Drink.new("Surfer on acid", 6, 25)
  @customer.reduce_money(drink)
  assert_equal(44, @customer.get_wallet)
end



end

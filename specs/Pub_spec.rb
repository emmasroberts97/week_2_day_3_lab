require('minitest/autorun')
require('minitest/reporters')

require_relative("../Pub.rb")
require_relative("../Drink.rb")


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

end

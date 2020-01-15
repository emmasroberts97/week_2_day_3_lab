require('minitest/autorun')
require('minitest/reporters')

require_relative("../Pub.rb")
require_relative("../Drink.rb")
require_relative("../Customer.rb")
require_relative("../Food.rb")



Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class FoodTest < MiniTest::Test
end 

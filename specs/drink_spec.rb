require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../pub.rb')
require_relative('../customer.rb')
require_relative('../drink.rb')

class   DrinkTest < MiniTest::Test
    def setup()
        @drink = Drink.new("Stella", 5)
    end 

    def test_drink_name
        assert_equal("Stella", @drink.drink_name)
    end 

end 
require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer.rb')
require_relative('../pub.rb')
require_relative('../drink.rb')

class PubTest < MiniTest::Test

    def setup()
        @pub = Pub.new("The Coders Arms", 1000,)
        @drink1 = Drink.new("Stella", 5)
        @drink2 = Drink.new("White wine", 7)
        @drink3 = Drink.new("Gin", 8)
        @drink4 = Drink.new("Rum", 4)
        @drink5 = Drink.new("Red wine", 8)
    end 

    def test_pub_name
        assert_equal("The Coders Arms", @pub.name)
    end 

    
end 


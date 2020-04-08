require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../pub.rb')

class CustomerTest < MiniTest::Test

    def setup()
        @customer = Customer.new("Dave Kennet", 500)
        @customer2 = Customer.new("Britney", 1)
        @drink = Drink.new("Stella", 5)
    end 

    def test_name()
        assert_equal("Dave Kennet", @customer.name)
    end 
    
    def test_wallet_current_total
        assert_equal(500, @customer.wallet_current_total)
    end 
    
    def test_wallet_total_decrease
        @customer.wallet_total_decrease(5)
        assert_equal(495, @customer.wallet_current_total)
    end 
       
    def test_check_funds__sufficient_funds
        @customer.check_funds(5)
        assert_equal(true, @customer.check_funds())
    end 
    
    def test_check_funds__insufficient_funds
        @customer.check_funds(5)
        assert_equal(false, @customer.check_funds)
    end 
        # - A `Customer` should be able to buy a `Drink` from the `Pub`,
    #  reducing the money in its `wallet` and increasing the money in 
    #  the `Pub`'s `till`
end 


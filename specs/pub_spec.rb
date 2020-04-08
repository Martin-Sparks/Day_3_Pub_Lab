require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer.rb')
require_relative('../pub.rb')
require_relative('../drink.rb')

class PubTest < MiniTest::Test

    def setup()
        @customer = Customer.new("Dave", 500)
        @customer2 = Customer.new("Britney", 1)
        @drink1 = Drink.new("Stella", 5)
        @drink2 = Drink.new("White wine", 7)
        @drink3 = Drink.new("Gin", 8)
        @drink4 = Drink.new("Rum", 4)
        @drink5 = Drink.new("Red wine", 8)
        drinks = [@drink1, @drink2, @drink3, @drink4, @drink5]
        @pub = Pub.new("The Coders Arms", 1000, drinks)
    end 

    def test_pub_name
        assert_equal("The Coders Arms", @pub.name)
    end 

    def test_till_count
        assert_equal(1000, @pub.till_count)
    end
    
    def test_till_increase
        @pub.till_increase(5)
        assert_equal(1005, @pub.till_count)
    end 

    def test_remove_drink()
        @pub.remove_drink(@drink1)
        assert_equal(4, @pub.stock_count)
    end


    # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    # def test_customer_can_afford_pet__sufficient_funds
    #     customer = @customers[0]
    #     can_buy_pet = customer_can_afford_pet(customer, @new_pet)
    #     assert_equal(true, can_buy_pet)
    #   end
    # def test_customer_can_afford_pet__insufficient_funds
    #     customer = @customers[1]
    #     can_buy_pet = customer_can_afford_pet(customer, @new_pet)
    #     assert_equal(false, can_buy_pet)
    #   end
    #   ~~~~~~~~~~~~~~?~~~~~~~~~~~~~~~~~~~~~~~~~~

    def test_sell_drink_to_customer
       @pub.sell_drink_to_customer(@drink1, @customer)
        assert_equal(495, @customer.wallet)
        assert_equal(1005, @pub.till)
        assert_equal(4, @pub.stock_count)
    end  

end 


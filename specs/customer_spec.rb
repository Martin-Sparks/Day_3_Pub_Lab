require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../pub.rb')

class CustomerTest < MiniTest::Test

    def setup()
        @customer = Customer.new("Dave Kennet", 500)
    end 

    def test_name()
        assert_equal("Dave Kennet", @customer.name)
    end 


end 
class Pub

    attr_accessor :name, :till
  
    def initialize(name, till, drink_selection = [])
      @name = name
      @till = till
      @drink_selection = drink_selection
    end 

    def pub_name
        return @name
    end 

    def till_count
        return @till
    end 
    
    def till_increase(amount)
        @till += amount
    end
    
    def stock_count
        return @drink_selection.count
    end 

    def remove_drink(drink)    
        @drink_selection.delete(drink) 
    end  
    
    def sell_drink_to_customer(drink, customer)
        customer.wallet_total_decrease(drink)
        till_increase(drink.price)
        remove_drink(drink)
    end


end 
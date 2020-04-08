class Customer

    attr_accessor :name, :wallet
  
    def initialize(name, wallet)
      @name = name
      @wallet = wallet
    end 

    def name
      return @name
    end 

    def wallet_current_total
      return @wallet
    end 

    def wallet_total_decrease(drink)
        @wallet -= drink
    end  

    def check_funds(drink)
      if drink <= wallet_current_total
          true
      else 
          false 
      end 
  end
    # def buy_drink(drink)
    #   @wallet -= drink.price
    # end customer will pay for drink and get drink 


    # def  
    # end

end 
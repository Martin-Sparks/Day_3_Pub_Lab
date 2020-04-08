class Pub

    attr_accessor :name, :till
  
    def initialize(name, till)
      @name = name
      @till = till
      @drink_selection = []
    end 

    def pub_name
        return @name
    end 
end 
class Review
  
    attr_reader :customer, :restaurant 

    @@reviews = []

    def self.all
        @@reviews
    end 

    def initialize(customer, restaurant)
        @customer = customer
        @restaurant = restaurant
        @@reviews << self 
    end 

    def rating(int)
        rating.new(int)
    end 

    

end


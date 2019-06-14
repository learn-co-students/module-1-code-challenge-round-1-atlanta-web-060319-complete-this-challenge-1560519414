class Review


    attr_accessor :rating, :content
    attr_reader :customer, :restaurant

    @@reviews = []

    def initialize (customer, restaurant, content, rating)
        @customer = customer 
        @restaurant = restaurant
        @rating = rating
        @content = content
        @@reviews << self
    end

    def self.all
        @@reviews
    end

    

  
end


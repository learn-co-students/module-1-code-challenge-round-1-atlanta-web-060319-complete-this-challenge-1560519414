class Review

    attr_accessor :content, :rating
    attr_reader :customer, :restaurant

    @@all_reviews = []

    def initialize(customer, reataurant, rating, content)
        @customer = customer
        @restaurant = restaurant
        @content = content
        @rating = rating
        @@all_reviews << self
    end

    def self.all
        @@all_reviews
    end
  
end


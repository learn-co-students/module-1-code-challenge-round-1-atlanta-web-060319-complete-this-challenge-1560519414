class Customer
  attr_reader :first_name, :last_name

  @@customers = []

    def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@customers << self
    end

    def full_name
    "#{first_name} #{last_name}"
    end

    def self.all 
    @@customers
    end

    # - `Customer#add_review(restaurant, content, rating)`
    # - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), 
    #   creates a new review and associates it with that customer and restaurant.

    def add_review(restaurant, content, rating)
      Review.new(self, restaurant, content, rating)
    end

    # `Customer#num_reviews`
    # - Returns the total number of reviews that a customer has authored

    # def num_reviews
    #   Review.all.find do |i|
    #     i.customer == review
    #   end
    # end

     # - `Customer#restaurants`
  # - Returns a **unique** array of all restaurants a customer has reviewed

    def restaurants
       my_reviews = Review.all.select do |rest|
        rest.content == self
      end
      my_reviews.map do |rest|
        rest.restaurant 
      end
    end

    # `Customer.find_by_name(name)`
    # - given a string of a **full name**, returns the **first customer** whose full name matches

    def self.find_by_name(name)
      Review.all.find do |i|
        i.content == name
       return i.customer
      end
    end
end

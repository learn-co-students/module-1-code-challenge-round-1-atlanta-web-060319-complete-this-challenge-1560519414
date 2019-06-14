class Restaurant
  attr_reader :name

  @@restaurants = []

  def initialize(name)
    @name = name
    @@restaurants << self
  end

  def self.all
    @@restaurants
  end

  

#   - `Restaurant#customers`
#   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
# - `Restaurant#reviews`

  # def customers 
  #   my_restaurants = Review.all.select do |i|
  #   i.content == self
  #     end
  #     my_restaurants.map do |i|
  #       i.customers
  #     end
  #   end

  # - `Restaurant.find_by_name(name)`
  # - given a string of restaurant name, returns the first restaurant that matches


    def self.find_by_name(new_restaurant)
      Review.all.find do |i|
        i.content == new_restaurant
        return i.restaurant
      end
    end

end

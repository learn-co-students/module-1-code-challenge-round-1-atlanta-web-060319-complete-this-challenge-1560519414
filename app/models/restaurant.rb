class Restaurant
  attr_reader :name

  @@restaurants = []

  def self.all
    @@restaurants
  end 

  def initialize(name)
    @name = name
    @@restaurants << self 
  end

  def find_by_name(name)
    restaurants.find do |resto| resto = self 
    end 
  end

  def customers
    Restaurant.all.uniq do |customer| customer.restaurant == self 
    end 
  end 

end 

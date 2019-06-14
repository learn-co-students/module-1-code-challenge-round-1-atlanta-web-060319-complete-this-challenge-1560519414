class Restaurant
  attr_reader :name

  @@all_restaurants = []

  def initialize(name)
    @name = name
    @@all_restaurants << self
  end

  def self.all
    @@all_restaurants
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
   Review.all.select {|rev| rev.customer == self}.uniq
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end
end

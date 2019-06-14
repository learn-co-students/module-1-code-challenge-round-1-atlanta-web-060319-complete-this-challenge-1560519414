class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end 

  def reviews
    Review.all.select do |review| review.restaurant == self 
    end 
  end 
   
  def customers
    reviews.map do |review| review.customer
    end 
  end 

  def average_star_rating
    total = 0
    num_of_ratings = 0
    reviews.collect { |rev|
      total += rev.rating 
      num_of_ratings += 1
    } 
    total/num_of_ratings
  end 

  def longest_review
    reviews.max_by {|rev| rev.content.length}
  end 

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end 
  end



end 
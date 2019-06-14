

# COULDN'T REMEMBER HOW TO LIMIT THE RATING TO 1-5. RATING "WORKS", BUT ISN'T LIMITED


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

  def reviews
    Review.all.select {|r| r.restaurant == self}
  end 

  def customers
    self.reviews.map {|r| r.restaurant}
  end

  def average_star_rating
    ratings = self.reviews.map {|r| r.rating}
    ratings.inject{ |sum, el| sum + el }.to_f / ratings.size
  end

  def review_content
    self.reviews.map {|r| r.content}
  end

  def longest_review
    self.review_content.max_by {|r| r.length}
  end

  def self.find_by_name(name)
    self.all.select {|r| r.name == name}
  end

end

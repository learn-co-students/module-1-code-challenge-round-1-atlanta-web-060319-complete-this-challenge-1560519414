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
    Review.all.select {|review| review.restaurant == self} 
  end

  def customers
    reviews.collect {|review| review.customer}.uniq
  end

  def average_star_rating
   all_ratings = reviews.collect {|review| review.rating}
   all_ratings.inject {|sum, el| sum + el}.to_f / all_ratings.size
  end

  def longest_review
    longest_review = reviews.max_by {|review| review.content.length}
    longest_review.content
  end

  def self.find_by_name(name)
    @@all.find {|restaurant| restaurant.name == name}
  end




end

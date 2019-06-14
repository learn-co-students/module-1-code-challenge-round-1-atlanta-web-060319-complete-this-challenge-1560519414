class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all <<  self
  end

  def self.all
      @@all
  end

  def restaurants
    Review.all.map {|review| review.customer}.uniq
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
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
    reviews.map {|review| review.content}.max_by {|content| content.length}
    end
  

end

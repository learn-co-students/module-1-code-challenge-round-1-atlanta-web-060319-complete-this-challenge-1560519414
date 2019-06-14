class Restaurant
  attr_reader :name
  @@all_rest = []

  def initialize(name)
    @name = name
    @@all_rest.push(self)
  end

  def self.all
  	@@all_rest
  end

  def customers
  	customers = []
  	Review.all.each {|review|
  		customers.push(review.customer) if review.restaurant == self
  	}
  	customers.uniq
  end

  def reviews
  	Review.all.select {|review|
  		review.restaurant == self
  	}
  end

  def average_star_rating
  	all_stars = 0
  	self.reviews.each {|review|
  		all_stars += review.rating
  	}
  	(all_stars.to_f/(self.reviews.length.to_f))
  end

  def longest_review
  	sorted_reviews_by_length = self.reviews.sort {|review1, review2|
  		review2.content.length <=> review1.content.length
  	}
  	sorted_reviews_by_length[0].content
  end

  def self.find_by_name(name)
  	self.all.each {|restaurant|
  		return restaurant if restaurant.name == name
  	}
  	return
  end

end

class Customer
  attr_reader :first_name, :last_name
  @@all_cust = []
  
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all_cust.push(self)
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
  	@@all_cust
  end

  def add_review(restaurant, content, rating)
  	Review.new(self, restaurant, content, rating)
  end

  def num_reviews
  
  	count = Review.all.count {|review|
  		review.customer == self
  	}
  	count
  end

  def restaurants
  	restaurants = []
  	Review.all.each {|review|
  		restaurants.push(review.restaurant) if review.customer == self
  	}
  	restaurants.uniq
  end

  def self.find_by_name(name)
  	self.all.each {|customer|
  		return customer if customer.full_name == name
  	}
  	return
  end

  def self.find_all_by_first_name(name)
  	self.all.select {|customer|
  		customer.first_name == name
  	}
  end

  def self.all_names
  	self.all.map {|customer|
  		customer.full_name
  	}
  end

end

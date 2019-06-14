class Review
  	attr_reader :customer, :restaurant
  	attr_accessor :content, :rating
  	@@all_rev = []
	

	def initialize(customer, restaurant, content, rating)
		@customer = customer
		@restaurant = restaurant
		@content = content
		if rating >= 5
			@rating = 5
		elsif rating <= 1
			@rating = 1
		else
			@rating = rating
		end
		@@all_rev.push(self)
	end

	def self.all
		@@all_rev
	end
end


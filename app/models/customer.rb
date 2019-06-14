class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end 

  # becomes a helper method for find_by_name(name)
  def full_name
    "#{first_name} #{last_name}"
  end
  

  def reviews
    Review.all.select do |rev| rev.customer == self 
    end 
  end 
   
  # Returns a **unique** array of all restaurants a customer has reviewed
  def restaurants
    reviews.map do |review| review.restaurant
    end 
  end 

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end 

  def num_reviews
    self.reviews.count 
  end 

  def self.find_by_name(full_name)
    self.all.find do |customer|
      customer.full_name == full_name
    end 
  end

  def self.find_all_by_first_name(first_name)
    cust = self.all.select do |cust| cust.first_name == first_name 
    end
  end  

  def self.all_names
    self.all.map {|customer| customer.full_name}
  end 

end 
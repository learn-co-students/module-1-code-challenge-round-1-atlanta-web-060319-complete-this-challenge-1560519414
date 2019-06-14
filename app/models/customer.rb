class Customer
  attr_reader :first_name, :last_name

  @@all_customers = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all_customers << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all_customers
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def restaurants
    Review.all.select {|review| review.customer == self}.uniq
  end

  def num_reviews
    self.restaurants.size
  end

  def self.all_names
    self.all.map {|name| name}
  end

  def self.find_by_name(name)
    self.all.find {|customer| customer.name == name}
  end

end

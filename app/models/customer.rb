class Customer
  
  @@all = []
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    Review.all.select {|rev| rev.customer == self}.total
  end
  
  def restaurants
    self.reviews.map {|rev| rev.restaurant}.uniq
  end

  def reviews
    Review.all.select {|rev| rev.customer == self}
  end

  def self.find_by_name(full_name)
    self.all.find {|x| x.full_name == name}
  end


end

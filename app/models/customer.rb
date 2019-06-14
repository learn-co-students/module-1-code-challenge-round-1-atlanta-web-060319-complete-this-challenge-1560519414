class Customer
  attr_reader :first_name, :last_name

  @@customers = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@customers << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@customers
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def reviews 
    Review.all.select {|r| r.customer == self}
  end

  def num_reviews 
    self.reviews.count
  end

  def restaurants
    self.reviews.map {|r| r.restaurant}.uniq
  end

  def self.all_names
    Customer.all.map {|c| "#{c.first_name} #{c.last_name}"}
  end

  def self.find_by_first_name(name)
    Customer.all.select {|c| c.first_name == name}
  end
    


  def self.find_by_name(fullname)
      names = fullname.split
      names[0] = @first_name
      names[1] = @last_name
      binding.pry
      Customer.find_by_first_name(names[0])
  end
  #  WAS HAVING TROUBLE TESTING THIS METHOD "FIND_BY_NAME", NOT SURE IF IT WORKS...

end

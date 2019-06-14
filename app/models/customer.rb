class Customer
  attr_reader :first_name, :last_name

  @@all = []

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
    Review.new(restaurant, self, content, rating)
  end

  def num_reviews
    all_revs = Review.all.select do |rev|
      rev.customer == self
    end
    all_revs.count
  end

  def restaurants
    my_revs = Review.all.select do |rev|
      rev.customer == self
    end
    my_rest = my_revs.map do |rest|
      rest.restaurant
    end
    my_rest.uniq
  end




end

class Restaurant
  attr_reader :name

  @@all = []
  @@reviews = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all
  end

  def customers
    #refactor
    all_revs = Review.all.select do |rev|
      rev.restaurant == self
    end
    our_cust = all_revs.map do |rev|
      rev.customer
    end
    our_cust.uniq
  end

  def reviews
    all_revs = Review.all.select do |rev|
      rev.restaurant == self
    end
  end

  # def average_star_rating
  #   all_revs = Review.all.select do |rev|
  #     rev.restaurant == self
  #   end
  #   sum = all_revs.rating.sum
  #   sum/(all_revs.count)
  # end

end


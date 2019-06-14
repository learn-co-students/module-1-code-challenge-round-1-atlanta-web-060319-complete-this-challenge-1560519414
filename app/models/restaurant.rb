class Restaurant
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    self.reviews.map { |rev| rev.album }.uniq
  end

  def reviews
    Review.all.select { |rev| rev.user == self }
  end

  def self.find_by_name(name)
    self.all.find {|x| x.full_name == name}
  end
  

end
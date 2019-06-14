class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
      @@all <<  self
    end
  
    def self.all
        @@all
    end

    def full_name
      "#{first_name} #{last_name}"
    end

    def add_review(restaurant, rating, content)
      Review.new(restaurant, self, rating, content)
    end

    def num_reviews
      Review.all.select {|review| review.customer == self}.count
    end

    def restaurants
      Review.all.map {|review| review.restaurant}.uniq
    end

  # def self.find_by_name(name)
  #   self.all.select {|customer| customer.full_name == name}
  # end

end



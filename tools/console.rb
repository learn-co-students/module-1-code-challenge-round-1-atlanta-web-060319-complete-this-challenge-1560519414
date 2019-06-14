require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
mike = Customer.new("Mike", "Larry")
alan = Customer.new("Alan", "Johnson")
lord = Customer.new("Lord", "Helpme")

eats = Restaurant.new("Eats")
taste = Restaurant.new("Taste")
toast = Restaurant.new("Toast")

review1 = Review.new(mike, eats, "Good Eating", 5)
review2 = Review.new(alan, taste, "Poor Service", 1)
review3 = Review.new(lord, toast, "Great Thinks are happening", 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

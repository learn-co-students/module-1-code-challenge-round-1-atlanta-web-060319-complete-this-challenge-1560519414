require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
Dan = Customer.new("Dan", "A")
Greg = Customer.new("Greg", "B")
Jen = Customer.new("Jen", "C")


KingDuke = Restaurant.new("KingDuke")
Optimist = Restaurant.new("Optimist")
Superica = Restaurant.new("Superica")

Review1 = Review.new("Dan", "KingDuke")
Review2 = Review.new("Greg", "Superica")
Review3 = Review.new("Jen", "Optimist")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
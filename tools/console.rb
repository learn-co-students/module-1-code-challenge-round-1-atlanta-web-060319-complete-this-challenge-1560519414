require_relative '../config/environment.rb'
# require_relative 'models/customer'
# require_relative 'models/review'
# require_relative 'models/restaurant'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

bob = Customer.new("Bob", "Smith")
brooke = Customer.new("Brooke", "Jones")
lauren = Customer.new("Lauren", "Johnson")

eat_here = Restaurant.new("Eat Here")
burrito = Restaurant.new("Burritos are sold here")
taco_joint = Restaurant.new("Mmmmm tacos")

review1 = Review.new(bob, eat_here, "You should eat here.", 5)
review2 = Review.new(brooke, burrito, "Buuurrrrrriitttoooosssssss.", 4)
review3 = Review.new(lauren, taco_joint, "Tacos tacos tacos tacos, I like tacos.", 3)
review4 = Review.new(bob, eat_here, "Why would you eat here?", 1)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line

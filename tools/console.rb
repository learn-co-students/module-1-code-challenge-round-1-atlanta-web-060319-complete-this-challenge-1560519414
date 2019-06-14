require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


joe = Customer.new("Joe", "Blow")
jane = Customer.new("Jane", "Doe")
uncle = Customer.new("Uncle", "Sam")

bk = Restaurant.new("Burger King")
vecino = Restaurant.new("Tacqueria El Vecino")
fox = Restaurant.new("Fox Bros")

review_1 = Review.new(joe, vecino, "Place is awesome!", 5)
review_2 = Review.new(joe, bk, "Place is terrible!", 1)
review_3 = Review.new(uncle, vecino, "Place is pretty good!", 4)
review_4 = Review.new(jane, fox, "Some of the best BBQ in the ATL!", 5)
review_5 = Review.new(joe, vecino, "Place is REALLY awesome!", 5)

Customer.find_by_name("Jane Doe")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
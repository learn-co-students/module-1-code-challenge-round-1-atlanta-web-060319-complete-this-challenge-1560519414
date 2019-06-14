require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#customer

ben = Customer.new("Ben", "Bam")
suzy = Customer.new("Suzy", "John")

#restaurant
restaurant1 = Restaurant.new("Red Lobster")
restaurant2 = Restaurant.new("Pappadeaux")
restaurant3 = Restaurant.new("Little Caesar")

#reviews customer, restaurant, content, rating

review1 = Review.new(ben, restaurant1, 2,"Some words")
review2 = Review.new(suzy, restaurant2, 5, "Some more words")
review3 = Review.new(suzy, restaurant3, 3, "Best place ever")
review3 = Review.new(suzy, restaurant3, 3, "Just ok")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
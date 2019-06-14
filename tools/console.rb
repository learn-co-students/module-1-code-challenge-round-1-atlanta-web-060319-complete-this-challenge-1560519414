require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

conrad = Customer.new("Conrad", "Casper")
blake = Customer.new("Blake", "Stoner")
corey = Customer.new("Corey", "Booker")
mike = Customer.new("Mike", "Smith")




cicis = Restaurant.new("cicis")
arbys = Restaurant.new("arby's")
olive_garden = Restaurant.new("Olive Garden")
pizza_hut = Restaurant.new("pizza hut")



review1 = Review.new(conrad, cicis, 5, "i really liked this place!")
review2 = Review.new(blake, cicis, 1, "i hated it.")
review3 = Review.new(corey, cicis, 2, "really enjoyed. would highly recommend!")
review4 = Review.new(mike, cicis, 4, "it was really good but there was a hair in my food.")
review5 = Review.new(conrad, arbys, 5, "i really liked this place!")
review6 = Review.new(blake, arbys, 3, "i hated it.")
review7 = Review.new(corey, arbys, 4, "really enjoyed. would highly recommend!")
review8 = Review.new(mike, arbys, 4, "it was really good but there was a hair in my food.")
review9 = Review.new(conrad, olive_garden, 2, "i really liked this place!")
review10 = Review.new(blake, olive_garden, 3, "i hated it.")
review11 = Review.new(corey, olive_garden, 2, "really enjoyed. would highly recommend!")
review12 = Review.new(mike, olive_garden, 1, "it was really good but there was a hair in my food.")
review13 = Review.new(conrad, pizza_hut, 1, "i hated it.")
review14 = Review.new(blake, pizza_hut, 2, "really enjoyed. would highly recommend!")
review15 = Review.new(corey, pizza_hut, 3, "it was really good but there was a hair in my food.")
review16 = Review.new(mike, pizza_hut, 4, "i really liked this place!")
review17 = Review.new(conrad, cicis, 3, "the customer service was horrible today.")










binding.pry
0 #leave this here to ensure binding.pry isn't the last line



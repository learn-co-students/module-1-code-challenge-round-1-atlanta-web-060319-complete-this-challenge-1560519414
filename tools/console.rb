require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("a", "a")
customer2 = Customer.new("b", "b")
customer3 = Customer.new("8", "8")
customer4 = Customer.new("8", "4")

rest1 = Restaurant.new("c")
rest2 = Restaurant.new("d")
rest3 = Restaurant.new("omg")

customer1.add_review(rest1, "asdf", 5)
customer1.add_review(rest2, "qwer", 8)
customer1.add_review(rest2, "zxcv", 3)

customer2.add_review(rest2, "iririrddddddddddddddddddddddddi", -10000)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
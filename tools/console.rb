require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

new_customer = Customer.new("Dylan", "Harris")
second_customer = Customer.new("Chaundria", "Harris")
outback = Restaurant.new("Outback")
ihop = Restaurant.new("Ihop")
in_n_out = Restaurant.new("In n out")
first_review = Review.new(new_customer, outback, 4, "My food was great!")
second_review = Review.new(second_customer, ihop, 2, "Terrible service!")
third_review = Review.new(new_customer, in_n_out, 5, "Awesome!")
new_review = new_customer.add_review("Chili's", 3, "The food was subpar.")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
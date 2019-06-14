require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

chipotle = Restaurant.new("Chipotle")
chopt = Restaurant.new("Chopt")

cat = Customer.new("cat" , "cherubin")
jack = Customer.new("jack", "jones")

Review.new(chipotle, cat, 5, "yummmmmm")
Review.new(chopt, cat, 5, "bbq")
Review.new(chipotle, jack, 3, "rice n beans")
Review.new(chopt, jack, 3, "salads r the best")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
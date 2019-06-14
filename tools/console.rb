require 'pry'
require_relative '../config/environment.rb'



def reload
  load 'config/environment.rb'
end


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jerryGarcia = Customer.new("Jerry", "Garcia")
neilYoung = Customer.new("Neil", "Young")
jimiHendrix = Customer.new("Jimi", "Hendrix")

mcDonalds = Restaurant.new("McDonalds")
burgerKing = Restaurant.new("Burger King")
wendys = Restaurant.new("Wendys")

review1 = Review.new(jerryGarcia, mcDonalds, "Ronald McDonalds beard isnt as nice as mine", 1)
review2 = Review.new(neilYoung, burgerKing, "its fine", 2)
review3 = Review.new(jimiHendrix, wendys, "I can dig it", 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
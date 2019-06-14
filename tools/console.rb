require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

alex = Customer.new('Alex', 'Siler')
mom = Customer.new('Yr', 'Momma')

meauxbar = Restaurant.new('meauxbar')
primo = Restaurant.new('Primitivo')

alex_review = Review.new(meauxbar, alex, 'sooooo', 5)
alex_review2 = Review.new(primo, alex, 'gooooo', 5)

alex_review3 = alex.add_review(meauxbar, 'go', 5)

mom_review = Review.new(meauxbar, mom, 'sgsrg', 5)
mom_review = Review.new(primo, mom, 'srgsrg', 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
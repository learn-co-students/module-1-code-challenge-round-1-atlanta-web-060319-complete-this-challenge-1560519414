class Customer
  
  
  attr_reader :first_name, :last_name

  @@customers = []

  def self.all
    @@customers
  end 

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@customers << self 
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def all_names
    customers.full_name.all.select 
  end 




  


end 

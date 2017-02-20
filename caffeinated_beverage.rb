class Caffeinated_Beverage
  
  attr_accessor :num_ounces
  
  def initialize(num_ounces)
    @num_ounces = num_ounces
  end # end initialize
  
  def caffeinate(num_ounces)
    num_ounces = (num_ounces * 10.75)
  end # end caffeinate
  
  def to_s
    puts "The average #{num_ounces} ounce caffeinated beverage has #{caffeinate(num_ounces)} mg of caffeine."
  end # end to_s
  
end 
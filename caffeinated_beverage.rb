class Caffeinated_Beverage
  
  attr_accessor :num_ounces
  
  def initialize(num_ounces)
    # Code School used self.num_ounces instead of @num_ounces. Is one better than the other?
    @num_ounces = num_ounces
  end 
  
  def caffeinate(num_ounces)
    num_ounces *= 10.75
  end 
  
  def to_s
    puts "The average #{num_ounces} ounce caffeinated beverage has #{caffeinate(num_ounces)} mg of caffeine."
  end 
  
end 
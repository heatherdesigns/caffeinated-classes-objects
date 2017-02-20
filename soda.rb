# Soda has an average of 3.75 mg of caffeine per ounce 

require_relative "./caffeinated_beverage.rb"

class Soda < Caffeinated_Beverage
  
  def caffeinate(num_ounces)
    num_ounces *= 3.75
  end
  
  def to_s
    puts "The average #{num_ounces} soda has #{caffeinate(num_ounces)} of caffeine."
  end
  
end

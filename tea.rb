# Tea has an average of 3.5 mg of caffeine per ounce

require_relative "./caffeinated_beverage.rb"

class Tea < Caffeinated_Beverage
  
  def caffeinate(num_ounces)
    num_ounces *= 3.5
  end
  
  def ouput
    puts "The average #{num_ounces} ounce tea has #{caffeinate(num_ounces)} mg of caffeine."
  end
  
end
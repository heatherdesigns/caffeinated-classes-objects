class Caffeinated_Beverage
  
  attr_accessor :beverage, :num_ounces
  
  def initialize(beverage, num_ounces) 
    @beverage = beverage
    @num_ounces = num_ounces
  end 
  
  def caffeinate(beverage, num_ounces)
    if beverage == "coffee" 
      caffeine_per_oz = 18.0
    elsif beverage == "tea"
      caffeine_per_oz = 3.5
    elsif beverage == "soda"
      caffeine_per_oz = 3.75 
    else
      caffeine_per_oz = 0.0
    end
    num_ounces *= caffeine_per_oz
  end
  
  def output
    puts "The average #{num_ounces} ounce #{beverage} has #{caffeinate(num_ounces)} mg of caffeine."
  end 
  
  def display_order(order)
    order.each do |key, value|
      puts "#{key}: #{value}" 
    end
  end
  
end 
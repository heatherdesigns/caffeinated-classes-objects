# Caffeine per oz
# coffee = 25 mg
# tea = 3.5 mg
# soda = 3.75 mg


class Caffeinated_Beverage
  
  attr_accessor :beverage, :num_ounces, :caffeine_per_oz, :milk, :flavor, :shot
  
  def initialize(beverage, num_ounces, caffeine_per_oz) 
    @beverage = beverage
    @num_ounces = num_ounces
    @caffeine_per_oz = caffeine_per_oz
  end 
  
  def caffeinate(num_ounces)
    num_ounces *= caffeine_per_oz
  end 
  
  def add_espresso(shot) # 75 mg in a 1 ounce shot of espresso
    @shot = shot * 75.0
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
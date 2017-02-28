# Caffeine per oz
# coffee = 25 mg
# tea = 3.5 mg
# soda = 3.75 mg


class Caffeinated_Beverage
  
  attr_accessor :beverage, :num_ounces, :caffeine_per_oz, :milk, :flavor
  
  def initialize(beverage, num_ounces, caffeine_per_oz) # idea from Yock: option to serve hot or serve cold
    @beverage = beverage
    @num_ounces = num_ounces
    @caffeine_per_oz = caffeine_per_oz
  end 
  
  def caffeinate(num_ounces)
    num_ounces *= caffeine_per_oz
  end 
  
  def add_espresso(shot) # 75 mg in a 1 ounce shot of espresso
    shot *= 75.0
  end
  
  def add_milk(milk)
    @milk = milk
  end
  
  def add_flavor(flavor)
    @flavor = flavor
  end
  
  def output
    puts "The average #{num_ounces} ounce #{beverage} has #{caffeinate(num_ounces)} mg of caffeine."
  end 
  
end 

=begin
drink = Caffeinated_Beverage.new("coffee", 8, 25)
drink.output

another_drink = Caffeinated_Beverage.new("tea", 16, 3.5)
another_drink.output

puts "Add "  + another_drink.add_flavor("vanilla") + " to " + another_drink.beverage + "."
puts "Add " + another_drink.add_milk("almond milk") + " to " + another_drink.beverage + "."
puts "The customer order is " + another_drink.beverage + " with " + another_drink.milk + " and " + another_drink.flavor + "." 
=end
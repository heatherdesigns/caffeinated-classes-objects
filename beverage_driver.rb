# Heather Taylor
# Last revision: March 17, 2017
# Make drinks with different amounts of caffeine & see the affects on the user.
# Reference doc: https://cspinet.org/eating-healthy/ingredients-of-concern/caffeine-chart

require_relative "./caffeinated_beverage.rb"
require_relative "./milk.rb"
require_relative "./flavor.rb"

eight_oz_drink = Caffeinated_Beverage.new("coffee", 8, 25)
eight_oz_drink.output

eight_oz_coffee = Caffeinated_Beverage.new("coffee", 8, 3.75) 
eight_oz_coffee.output

puts "1 shot of espresso is " + eight_oz_drink.add_espresso(1).to_s + " mg."
puts "3 shots of espress is " + eight_oz_drink.add_espresso(3).to_s + " mg."

puts "An eight ounce coffee with 2 shots of espresso is " + (eight_oz_coffee.caffeinate(8) + eight_oz_coffee.add_espresso(2)).to_s + " mg."

type = Milk.new("almond milk")
puts type.milk.to_s



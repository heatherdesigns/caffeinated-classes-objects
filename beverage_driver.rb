# Heather Taylor
# Last revision: February 22, 2017
# Practicing objects & classes using caffeine as the topic.
# Make drinks with different amounts of caffeine & see the affects on the user.
# Reference doc: https://cspinet.org/eating-healthy/ingredients-of-concern/caffeine-chart

require_relative "./caffeinated_beverage.rb"
require_relative "./coffee.rb"
require_relative "./tea.rb"
require_relative "./soda.rb"

eight_oz_drink = Caffeinated_Beverage.new(8)
eight_oz_drink.to_s

eight_oz_coffee = Coffee.new(8) 
eight_oz_coffee.to_s

eight_oz_tea = Tea.new(8) 
eight_oz_tea.to_s

eight_oz_soda = Soda.new(8) 
eight_oz_soda.to_s

puts "1 shot of espresso is " + eight_oz_coffee.add_espresso(1).to_s + " mg."
puts "3 shots of espress is " + eight_oz_coffee.add_espresso(3).to_s + " mg."

puts "An eight ounce coffee with 2 shots of espresso is " + (eight_oz_coffee.caffeinate(8) + eight_oz_coffee.add_espresso(2)).to_s + " mg."



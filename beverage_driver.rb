# Heather Taylor
# Last revision: February 19, 2017
# Practicing objects & classes using caffeine as the topic.
# Make drinks with different amounts of caffeine & see the affects on the user.
# Reference doc: https://cspinet.org/eating-healthy/ingredients-of-concern/caffeine-chart

require_relative "./caffeinated_beverage.rb"
require_relative "./coffee.rb"
require_relative "./tea.rb"
require_relative "./soda.rb"

eight_oz_drink = Caffeinated_Beverage.new(8).to_s
eight_oz_coffee = Coffee.new(8).to_s
eight_oz_tea = Tea.new(8).to_s
eight_oz_soda = Soda.new(8).to_s



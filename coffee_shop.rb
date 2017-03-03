# Caffeine per oz
# coffee = 25 mg
# tea = 3.5 mg
# soda = 3.75 mg

require_relative "./caffeinated_beverage.rb"
require_relative "./milk.rb"
require_relative "./flavor.rb"

class CoffeeShop
  
  # create hash to store a single customer's order
  customer_order = Hash.new(0)
 
  # first customer order
  order_1 = Caffeinated_Beverage.new("coffee", 12, 25)
  customer_order["beverage"] = order_1.beverage   # move hash into caffeinated beverage class and create method to do this automatically
  customer_order["ounces"] = order_1.num_ounces
  customer_order["caffeine (mg)"] = order_1.caffeine_per_oz
  
  add_milk = Milk.new("coconut milk")
  customer_order["milk"] = add_milk.milk
  
  add_flavor = Flavor.new("vanilla")
  customer_order["flavor"] = add_flavor.flavor
  
  puts "-" * 20; puts "Customer 1:"
  order_1.display_order(customer_order)
  
  # second customer order  
  order_2 = Caffeinated_Beverage.new("tea", 16, 3.5)
  customer_order.clear # clear hash from previous order contents
  customer_order["beverage"] = order_2.beverage
  customer_order["ounces"] = order_2.num_ounces
  customer_order["caffeine (mg)"] = order_2.caffeine_per_oz
  
  puts "-" * 20; puts "Customer 2:"
  order_2.display_order(customer_order)  

  # third customer order
  order_3 = Caffeinated_Beverage.new("soda", 32, 3.75)
  add_flavor = Flavor.new("cherry")
  customer_order.clear
  customer_order["beverage"] = order_3.beverage
  customer_order["ounces"] = order_3.num_ounces
  customer_order["caffeine (mg)"] = order_3.caffeine_per_oz
  customer_order["flavor"] = add_flavor.flavor
  
  puts "-" * 20; puts "Customer 3:"
  order_3.display_order(customer_order)  
  
  # fourth customer order
  order_4 = Caffeinated_Beverage.new("chai", 8, 3.5)
  #order_4.add_flavor("hazelnut")
  add_flavor = Flavor.new("hazelnut")
  customer_order.clear
  customer_order["beverage"] = order_4.beverage
  customer_order["ounces"] = order_4.num_ounces
  customer_order["caffeine (mg)"] = order_4.caffeine_per_oz
  add_milk = Milk.new("skim milk")
  customer_order["milk"] = add_milk.milk.to_s
  customer_order["flavor"] = add_flavor.flavor  
  
  puts "-" * 20; puts "Customer 4:"
  order_4.display_order(customer_order)   
  
  # fifth customer order
  order_5 = Caffeinated_Beverage.new("coffee", 24, 25)
  order_5.add_espresso(2)
  customer_order.clear
  customer_order["beverage"] = order_5.beverage
  customer_order["ounces"] = order_5.num_ounces
  customer_order["caffeine (mg)"] = (order_5.caffeine_per_oz + order_5.shot) # add caffeine in espresso
  
  puts "-" * 20; puts "Customer 5:"
  order_5.display_order(customer_order)     
    
  # create array to store queue of customer order's
  orders = []
  
  # caffeine content is calculated and saved for future reference
  # get customer name
  # internal order id is created
  # order pushes onto the queue (an array that stores customer orders)
  # order is made.......... Perhaps a statement prints processing order # for customer XYZ.
  # customer is alerted that their order is ready, pops off the queue
  # customer receives snarky comment regarding their caffeinated beverage based upon the amount of caffeine
  
end

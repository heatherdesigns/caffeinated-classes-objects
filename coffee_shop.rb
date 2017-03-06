# Approximate values for caffeine per oz
# coffee = 18 mg
# tea = 3.5 mg
# soda = 3.75 mg

require_relative "./caffeinated_beverage.rb"
require_relative "./milk.rb"
require_relative "./flavor.rb"
require_relative "./espresso.rb"

class CoffeeShop
  
  # create hash to store a single customer's order
  customer_order = Hash.new(0) # creating a class to replace this!!!!!
  
  # create an array to collect and store all customer orders
  store_orders = Array.new(0)
 
  # first customer order
  order_1 = Caffeinated_Beverage.new("coffee", 12)
  customer_order["beverage"] = order_1.beverage
  customer_order["ounces"] = order_1.num_ounces
  customer_order["caffeine (mg)"] = order_1.caffeinate(order_1.beverage, order_1.num_ounces)
  add_milk = Milk.new("coconut milk")
  customer_order["milk"] = add_milk.milk
  add_flavor = Flavor.new("vanilla")
  customer_order["flavor"] = add_flavor.flavor
  
  puts "-" * 20; puts "Customer 1:"
  order_1.display_order(customer_order)
  
  store_orders.push(customer_order) #push first order onto array
  
  puts "This is the hash of order 1: #{customer_order.each { |key, value| puts "#{key}: #{value}" }}"
  puts "Order 1 in the array: #{store_orders[0]}"
  
  # second customer order  
  order_2 = Caffeinated_Beverage.new("tea", 16)
  customer_order.clear # clear hash from previous order contents
  customer_order["beverage"] = order_2.beverage
  customer_order["ounces"] = order_2.num_ounces
  customer_order["caffeine (mg)"] = order_2.caffeinate(order_2.beverage, order_2.num_ounces)
  
  puts "-" * 20; puts "Customer 2:"
  order_2.display_order(customer_order)  
  
  store_orders.push(customer_order) # push 2nd order onto array
  puts "Order 2 in the array: #{store_orders[1]}"

  # third customer order
  order_3 = Caffeinated_Beverage.new("soda", 32)
  add_flavor = Flavor.new("cherry")
  customer_order.clear
  customer_order["beverage"] = order_3.beverage
  customer_order["ounces"] = order_3.num_ounces
  customer_order["caffeine (mg)"] = order_3.caffeinate(order_3.beverage, order_3.num_ounces)
  customer_order["flavor"] = add_flavor.flavor
  
  puts "-" * 20; puts "Customer 3:"
  order_3.display_order(customer_order)  
  
  store_orders.push(customer_order) # push 3rd order onto array
  
  # fourth customer order
  order_4 = Caffeinated_Beverage.new("tea", 8)
  add_flavor = Flavor.new("hazelnut")
  customer_order.clear
  customer_order["beverage"] = order_4.beverage
  customer_order["ounces"] = order_4.num_ounces
  customer_order["caffeine (mg)"] = order_4.caffeinate(order_4.beverage, order_4.num_ounces)
  add_milk = Milk.new("skim milk")
  customer_order["milk"] = add_milk.milk.to_s
  customer_order["flavor"] = add_flavor.flavor  
  
  puts "-" * 20; puts "Customer 4:"
  order_4.display_order(customer_order)  
  
  store_orders.push(customer_order) # push 4th order onto array 
  
  # fifth customer order
  order_5 = Caffeinated_Beverage.new("coffee", 24)
  add_espresso = Espresso.new(2)
  customer_order.clear
  customer_order["beverage"] = order_5.beverage
  customer_order["ounces"] = order_5.num_ounces
  customer_order["caffeine (mg)"] = (order_5.caffeinate(order_5.beverage, order_5.num_ounces) + add_espresso.shot_espresso)
  
  puts "-" * 20; puts "Customer 5:"
  order_5.display_order(customer_order)   
  
  store_orders.push(customer_order) # push 5th order onto array 
    
  # loops through array of orders and print - nope. 
  store_orders.each do |order|
    puts "#{order}"
  end
  
  
  # get customer name
  # internal order id is created
  # order pushes onto the queue (an array that stores customer orders)
  # order is made.......... Perhaps a statement prints processing order # for customer XYZ.
  # customer is alerted that their order is ready, pops off the queue
  # customer receives snarky comment regarding their caffeinated beverage based upon the amount of caffeine
  
end

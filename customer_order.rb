require_relative "./caffeinated_beverage"
require_relative "./milk"
require_relative "./flavor"
require_relative "./espresso"
require_relative "./size"
require 'time'

class CustomerOrder
  
  attr_accessor :name, :order_id, :time, :beverage, :size, :num_ounces, :milk, :flavor, :shot_espresso
  
      
      # need: customer name, time, beverage, size, num_ounces, caffeine, espresso, milk, flavor
      def place_order
        
        puts "What is your name?"
        @name = gets.chomp
        
        # create internal order id
        
        # set time order was taken
        @time = Time.now
        
        puts "What would you like to drink?"
        @beverage = gets.chomp
        
        puts "What size? (small, medium or large)"
        @size = gets.chomp
        
        puts "Would you like to add milk? (y/n)"
        answer = gets.chomp
        unless answer.upcase != "Y"
          puts "What kind of milk would you like?"
          @milk = gets.chomp
        end
        
        # flavor
        
        # shots of espresso
  
      end
   
end


drink = CustomerOrder.new
drink.place_order
puts drink.name
puts drink.time
puts drink.beverage
puts drink.size
puts drink.milk







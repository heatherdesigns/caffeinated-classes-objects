require_relative "./caffeinated_beverage"
require_relative "./milk"
require_relative "./flavor"
require_relative "./espresso"
require_relative "./size"

class CustomerOrder
      
      # need: beverage, size, num_ounces, caffeine, espresso, milk, flavor
      
      puts "What would you like to drink?"
      @beverage = gets.chomp
      
      puts "What size? (small, medium or large)"
      @size = gets.chomp
      
      @num_ounces = ounces_make_size
      
end

order = CustomerOrder.new





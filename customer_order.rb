require_relative "./caffeinated_beverage.rb"
require_relative "./milk.rb"
require_relative "./flavor.rb"
require_relative "./espresso.rb"

# see Treehouse contact list

class CustomerOrder < Caffeinated_Beverage
      
=begin  
    def ask(question, kind = "string")
      print question + " "
      answer = gets.chomp
      answer = answer.to_i if kind == "number"
      return answer
    end
=end
    
    def add_order
      
      puts "What would you like to drink?"
      beverage = gets.chomp
      
      puts "What size?"
      num_ounces = gets.chomp
      
      return CustomerOrder.new(beverage, num_ounces)
      
    end
 
end

drink = CustomerOrder.new("", 0) # start with blank slate
drink.output
new_drink = drink.add_order # assign output of new add_order to a new_drink
new_drink.output




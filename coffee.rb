# Coffee has an average of 25 mg of caffeine per ounce

require_relative "./caffeinated_beverage.rb"

class Coffee < Caffeinated_Beverage
  
  attr_accessor :shot
  
  def initialize(num_ounces, shot)
    super(num_ounces)
    @shot = shot
  end
  
  def caffeinate(num_ounces)
    num_ounces *= 25.0
  end
  
  def add_espresso(shot) # 75 mg in a 1 ounce shot of espresso
    shot *= 75.0
  end
  
  def to_s
    puts "The average #{num_ounces} ounce coffee has #{caffeinate(num_ounces)} mg of caffeine."
  end
  
end
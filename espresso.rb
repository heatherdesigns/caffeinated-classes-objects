class Espresso
  
  attr_accessor :shot_espresso
  
  def initialize(shot_espresso)
    @shot_espresso = shot_espresso * 75  # there are 75 mg of espresso in one shot
  end
  
end
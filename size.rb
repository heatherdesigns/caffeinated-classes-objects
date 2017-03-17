class Size
  
  attr_accessor :size
  
  def ounces_make_size
    while @size != "small" && @size != "medium" && @size != "large"
      puts "Please enter small, medium or large for size of drink: "
      @size = gets.chomp
        if @size == "small"
          @num_ounces = 8
        elsif @size == "medium"
          @num_ounces = 12
        else
          @num_ounces = 16
        end
  end
  
end
class Triangle
  attr_accessor :equilateral, :isosceles, :scalene 
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1 
    @side_2 = side_2
    @side_3 = side_3
  end 
  
  def kind
    return :equilateral, :isosceles, :scalene
  end 
end

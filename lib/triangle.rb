class Triangle
  attr_accessor :equilateral, :isosceles, :scalene 
  
  def initialize(one, two, three)
    @one = one 
    @two = two 
    @three = three
  end 
  
  def kind
  end
  
  class TriangleError < StandardError
    # triangle error code
  end
end

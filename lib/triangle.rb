class Triangle
  attr_accessor :equilateral, :isosceles, :scalene 
  
  #initialize triangle with sides
  def initialize(one, two, three)
    @one = one 
    @two = two 
    @three = three
  end 
  
  #returns the type of triangle based on triangle parameters
  def kind
  end
  
  class TriangleError < StandardError
    # triangle error code
  end
end

class Triangle
  attr_accessor :equilateral, :isosceles, :scalene 
  #initialize triangle with sides
  def initialize(one, two, three)
    @one = one 
    @two = two 
    @three = three
  end 

  #returns the type of triangle based on triangle parameters
  def kind()
  #if any side of triangle is less than or equal to zero, raise error
    
  end
  
  class TriangleError < StandardError
    # triangle error code
    def message
      "The triangle side lengths you entered are not valid."
    end 
  end
end

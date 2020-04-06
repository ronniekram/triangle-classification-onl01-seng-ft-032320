class Triangle
  attr_accessor :equilateral, :isosceles, :scalene 
  #initialize triangle with sides
  def initialize(one, two, three)
    @one = one 
    @two = two 
    @three = three
  end 

  def kind
    if valid? 
      true
    else 
      raise TriangleError
    end
   
    if one == two && two == three && one == three
      :equilateral
    elsif one != two && two != three && one != three
      :scalene 
    else 
      :isosceles
    end 
  end

  def valid?
    (x.positive? && y.positive? && z.positive?) && (x + y > z && x + z > y && y + z > x) ? true : false 
  end
    
end
  
  class TriangleError < StandardError
    # triangle error code
    def message
      "The triangle side lengths you entered are not valid."
    end 
  end
end

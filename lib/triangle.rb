class Triangle
  attr_accessor :equilateral, :isosceles, :scalene 
    @@sides = []
  #initialize triangle with sides
  def initialize(one, two, three)
    @one = one 
    @two = two 
    @three = three
    @@sides << self
  end 
  
  def self.all
    @@all
  end 
  
  #returns the type of triangle based on triangle parameters
  def kind
    if one == two == three 
      :equilateral
    elsif (one == two || two == three || one == three) && !(one == two == three)
      :isosceles
    elsif one != two != three
      :scalene
    end
  end
  
  class TriangleError < StandardError
    # triangle error code
  end
end

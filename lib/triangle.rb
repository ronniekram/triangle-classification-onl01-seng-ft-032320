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
  def kind()
  #if any side of triangle is less than or equal to zero, raise error
    if (@side_1 <= 0) || (@side_2 <= 0) || (@side_3 <= 0)
      raise TriangleError
        rescue TriangleError => error
          puts error.message
    #if triangle violates triangle inequality, raise error
    elsif (@side_1+@side_2 <= @side_3) || (@side_1+@side_3 <= @side_2) || (@side_2+@side_3 <= @side_1)
      raise TriangleError
          rescue TriangleError => error
          puts error.message
    else
      if (@side_1 == @side_2) && (@side_2 == @side_3)
        :equilateral
      elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
        :isosceles
      elsif (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_1 != @side_3)
        :scalene
      end
    end
  
  class TriangleError < StandardError
    # triangle error code
  end
end

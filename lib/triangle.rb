class Triangle
  # write code here
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3

    def kind
      validate_triangle
      if side_1 == side_2 && side_2 == side_3
        :equilateral
      elsif side_1 == side_2 || side_2 == side_3 || side_1 == side_2
        :isosceles
      else
        :scalene
      end
end

def validate_triangle
  real_triangle = [(side_1 + side_2 > side_3), (side_1 + side_2 > side_3), (side_2 + side_3 > side_1)]
  [side_1, side_2, side_3].each do |side|
    real_triangle << false if side <= 0

    riase TriangleError if real_triangle.include?(false)
  end
end

class TriangleError < StandardError
end
end
end

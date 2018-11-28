class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if ((self.a || self.b || self.c) <= 0) | (self.a + self.b <= self.c || self.b + self.c <= self.a || self.a + self.c <= self.b)
        raise TriangleError
    elsif self.a == self.b && self.b == self.c && self.c == self.a
      return :equilateral
    elsif
      self.a == self.b || self.b == self.c || self.c == self.a
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError

  end

end

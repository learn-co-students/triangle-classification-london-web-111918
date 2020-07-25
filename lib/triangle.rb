class Triangle

  attr_accessor :one, :two, :three, :kind

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    if @one <= 0 || @two <= 0 || @three <= 0
      begin
        raise TriangleError
      rescue Triangle => error
        puts error.message
      end
    elsif @one + @two <= @three || @two + @three <= @one || @one + @three <= @two
        begin
          raise TriangleError
        rescue Triangle => error
          puts error.message
        end
      else
    if @one == @two && @two == @three
      @kind = :equilateral
    elsif @one == @two || @one == @three || @two == @three
      @kind = :isosceles
    else @kind = :scalene
    end
  end
end

class TriangleError < StandardError
    def message
      "all sides must be greater than 0 and the sum of the lengths of any two sides must exceed the length of the third side!"
  end
end

end

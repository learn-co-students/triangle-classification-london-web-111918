class Triangle
  attr_accessor :adj, :hyp, :opp

  def initialize(adj, hyp, opp)
    @adj = adj
    @hyp = hyp
    @opp = opp
  end

  def kind
    #check for any violations
    if !(adj > 0 || hyp > 0 || opp > 0)
      raise TriangleError
    elsif adj == 0 || hyp == 0 || opp == 0
      raise Triangle
    elsif (adj+hyp <= opp || adj+opp <= hyp || opp+hyp <= adj)
      raise TriangleError
    else
    #check for the kind of triangle
      if (adj == hyp && hyp == opp)
        return :equilateral
      elsif adj == hyp || hyp == opp || opp == adj
        return :isosceles
      else
        return :scalene
      end
    end
  end

  class TriangleError < StandardError
     # triangle error code
     def message
       return "Length of a triangle cannot be 0, and cannot violate the triangle inequality"
     end
   end
end

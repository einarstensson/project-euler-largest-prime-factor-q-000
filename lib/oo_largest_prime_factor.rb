class LargestPrimeFactor
  attr_accessor :number

  def initialize(max)
    @max = max
    @number = find_largest_factor
  end

  def find_largest_factor
    divisor = 2

    while true

      if divisor > @max
        return nil
      end

      if @max / divisor == 1
        return @max
      end

      if @max % divisor == 0
        @max = @max / divisor
        divisor = 2
      else
        divisor += 1
      end

    end
  end

end
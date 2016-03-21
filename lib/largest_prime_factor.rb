def largest_prime_factor(max)
  divisor = 2
  number = max 

  while true

    if divisor > number
      return nil
    end

    if number / divisor == 1
      return number
    end

    if number % divisor == 0
      number = number / divisor
      divisor = 2
    else
      divisor += 1
    end

  end
end

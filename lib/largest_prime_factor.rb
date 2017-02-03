# Enter your procedural solution here!
def largest_prime_factor(input)
  prime_factors(input).max
end

def prime_factors (natural_number)
  prime_decomposition([natural_number]).flatten
end

def prime_decomposition (factors)
  factors.collect do |factor|
    if factor == 1 || factor.prime?
       factor
    else
      divisor = 2
      until factor % divisor == 0 do
        divisor += 1
      end
      dividend = factor / divisor
       prime_decomposition([divisor, dividend])
    end
  end
end

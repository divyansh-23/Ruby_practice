def is_prime(num)
  return true if num == 2
  
  return false if num % 2 == 0
  
  divisor = 3
  while divisor <= Math.sqrt(num)
    return false if num % divisor == 0
    divisor += 2
  end
  return true
end


def is_prime(num)
  return true if num == 2

  return false if num % 2 == 0

  (3..sqrt(num))
    
  end

end

def get_prime_factors(n)
  output = []
  # Return all unique prime factors of n in ascending order using a time complexity of O(√n).
  (2..Math.sqrt(n).to_i).each do |number|
    if n % number == 0
      output << number if is_prime(number)
      cofactor = n / number
      output << cofactor if cofactor != number && is_prime(cofactor)
    end
  end
  output.uniq!
  output.sort!
  output
end


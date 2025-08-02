=begin
You are given a number n. Your task is to write a method that will return the n-th prime number. The expected complexity is 
O(n⋅sqrt(n))
For example, if n is 1, the method should return 2. If n is 3, the method should return the third prime number, which is 5.
=end

def is_prime(number)
  return false if number % 2 == 0

  i = 3
  while i <= Math.sqrt(number)
    return false if number % i == 0
    i += 2
  end
  true
end

def nth_prime(n)
  # TODO: Return the n-th prime number using an efficient approach with a complexity of O(n * √n).
  return 2 if n == 1
  
  prime_count = 1
  i = 3
  while prime_count <= n
    prime_count += 1 if is_prime(i)
    return i if prime_count == n
    i += 2
  end

  
end
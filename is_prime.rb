=begin
You are given an integer number, 
1
≤
n
≤
10
6
1≤n≤10 
6
 . Your task is to write a function next_prime(n), that takes an integer n as input and returns the smallest prime number larger than n.

Here are some examples:

next_prime(7) should return 11, because 11 is the next prime number after 7.
next_prime(13) should return 17, because 17 is the next prime number after 13.
next_prime(50) should return 53, because 53 is the next prime number after 50.

=end

=begin

#this is the iterative solution

def next_prime(n)
  candidate = n + 1
  loop do
    is_prime = true
    if candidate < 2
      is_prime = false
    else
      (2..Math.sqrt(candidate).to_i).each do |i|
        if candidate % i == 0
          is_prime = false
          break
        end
      end
    end
    return candidate if is_prime
    candidate += 1
  end
end
=end

def is_prime(num)
  # return false if num % 2
  divisor = 3
  while divisor <= Math.sqrt(num)
    return false if num % divisor == 0
    divisor += 2
  end
  return true
end

def next_prime(n)
  return 2 if n <= 1
  return 3 if n == 2

  # TODO: Find and return the smallest prime number greater than n.
  if n % 2 == 0
    return n + 1 if is_prime(n+1)
    next_prime(n+1)
  else
    return n+2 if is_prime(n+2)
    next_prime(n+2)  
  end
end
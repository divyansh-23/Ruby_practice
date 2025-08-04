=begin
You are tasked with creating a function get_sum(n) that calculates the sum of all the numbers from n to 1 using recursion.

For instance, get_sum(5) should result in 15 (5 + 4 + 3 + 2 + 1 = 15), while get_sum(1) should yield 1.
=end

def get_sum(n)
  # TODO: Calculate the sum of all numbers from n to 1 using recursion.
  return 1 if n == 1
  
  return n + get_sum(n-1)
end
# The logic of the code is to recursively call get_sum with n-1 until it reaches 1, adding n to the result of the recursive call.

# Example usage:
# puts get_sum(5) # Output: 15
# puts get_sum(1) # Output: 1
# puts get_sum(10) # Output: 55
# puts get_sum(100) # Output: 5050
# puts get_sum(0) # Output: 0 (if you want to handle the case where n is 0, you can add a condition to return 0)
# puts get_sum(-5) # Output: -15 (if you want to handle negative numbers, you can modify the function accordingly)
# Note: The function assumes n is a positive integer. If you want to handle negative numbers or zero, you can add additional conditions.
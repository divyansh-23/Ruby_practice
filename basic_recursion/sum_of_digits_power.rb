=begin
You are provided with a positive integer n. Write a recursive function that returns the sum of all digits in n, where each digit is raised to the power of its respective position (1-indexed from the right).

In other words, take each digit in n, raise it to the power of its position, and sum these values. Note that positions start from 1 and count from the rightmost digit.

For example, if n = 253, the calculation will be as follows: 3^1 = 3 (3 is in the 1st position), 5^2 = 25 (5 is in the 2nd position), and 2^3 = 8 (2 is in the 3rd position). The result is 3 + 25 + 8 = 36.

=end

def sum_of_digits_power(n, pos = 1)
  # TODO: Calculate the sum of each digit in n raised to the power of its positional index using recursion.
  return 0 if n == 0
  
  return ((n % 10) ** pos) + (sum_of_digits_power(n / 10, pos + 1))
  
  
end

# Example usage:
# puts sum_of_digits_power(253) # Output: 36
# puts sum_of_digits_power(1234) # Output: 1^1 +



#logic of the code is to recursively call sum_of_digits_power with n divided by 10 (to remove the last digit) and incrementing the position by 1 until n becomes 0.
# the base case is when n is 0, in which case it returns 0.
# the function calculates the sum of each digit raised to the power of its position and returns the total sum.
# the function can be tested with various values of n to ensure it works correctly.
# the function can handle any positive integer n and will return the correct sum of digits raised to their respective positions.
# the function can be used in various applications where such calculations are needed, such as mathematical problems or coding challenges.
# the function is efficient and has a time complexity of O(log n) since it processes each digit of n once.
# the space complexity is O(log n) due to the recursive call stack.

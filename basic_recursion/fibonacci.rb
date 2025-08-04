=begin
You are given a number n. Write a function that uses recursion to find the Fibonacci number at index n, with an optimized complexity of (O(n)).

A Fibonacci sequence is a sequence where each number is the sum of the two preceding ones, usually starting with 0 and 1. Thus, the sequence begins as follows: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, ....

For example, if n = 3, the function should return 2, and if n = 10, the function should return 55, which is the 10th number in the Fibonacci sequence.

You are required to solve this problem using recursion and optimize it to have a complexity of 
O
(
n
)
O(n), so an iterative approach is not allowed.
=end


def fibonacci(n, memo = {})
  # TODO: Implement a recursive Fibonacci function using memoization to achieve O(n) complexity.
  return 0 if n == 0
  return 1 if n == 1 or n == 2
  
  return memo[n] if memo.key?(n)

  memo[n] = fibonacci(n - 1, memo) + fibonacci(n - 2, memo)  
  return memo[n]
end


# Example usage:
# puts fibonacci(3)  # Output: 2
# puts fibonacci(10) # Output: 55
# puts fibonacci(0)  # Output: 0
# puts fibonacci(1)  # Output: 1

# logic of the code is to use recursion to calculate the Fibonacci number at index n, while using a hash (memo) to store previously calculated Fibonacci numbers to avoid redundant calculations.
# The base cases are when n is 0 or 1, where the function returns 0 and 1 respectively.
# For other values of n, the function checks if the Fibonacci number for that index is already calculated and stored in the memo hash.
# If it is, it returns the stored value; otherwise, it calculates it recursively and stores it in the memo hash before returning it.
# This approach ensures that each Fibonacci number is calculated only once, achieving O(n) complexity.
# The function can be tested with various values of n to ensure it works correctly.
# The function can handle any non-negative integer n and will return the correct Fibonacci number at that index.
# The function can be used in various applications where Fibonacci numbers are needed, such as mathematical problems or coding challenges.
# The function is efficient and has a time complexity of O(n) due to memoization, which avoids redundant calculations.
# The space complexity is also O(n) due to the memo hash storing previously calculated Fibonacci numbers.
# The function can be easily integrated into larger programs or systems that require Fibonacci number calculations.
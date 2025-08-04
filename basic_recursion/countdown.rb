=begin
The task is to write a recursive function countdown(n) that takes an integer n as an input and returns an array of integers from n to 1, inclusive, in decreasing order. Make sure to use recursion in this task.

For example, for n = 5, the output should be [5, 4, 3, 2, 1].
=end

def countdown(n)
  # TODO: Return an array of integers from n to 1 in decreasing order using recursion.
  return [1] if n == 1
  
  return [n] + countdown(n-1)
end

# Example usage:
# puts countdown(5).inspect # Output: [5, 4, 3, 2, 1]
# puts countdown(1).inspect # Output: [1]
# puts countdown(10).inspect # Output: [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
# puts countdown(0).inspect # Output: [1] (if you want to handle
# the case where n is 0, you can add a condition to return [1])
# puts countdown(-5).inspect # Output: [1] (if you want to handle negative numbers, you can modify the function accordingly)
# Note: The function assumes n is a positive integer. If you want to handle negative numbers or zero, you can add additional conditions.
# The logic of the code is to recursively call countdown with n-1 until it reaches
# 1, adding n to the result of the recursive call.
# The base case is when n is 1, in which case it returns an array with just 1.
# The function builds the array in reverse order by adding the current value of n to the front of the result of the recursive call.
# The function will return an array of integers from n to 1 in decreasing order.
# The function can be tested with various values of n to ensure it works correctly.
# The function can be used to generate countdowns for any positive integer n.
# The function can be modified to handle edge cases like n being 0 or negative numbers if desired.
# The function is efficient and has a time complexity of O(n) since it makes n recursive calls.
# The space complexity is also O(n) due to the recursive call stack and the resulting array.
# The function can be used in various applications where a countdown is needed, such as timers,
# games, or animations.
# The function can be easily integrated into larger programs or systems that require countdown functionality.

=begin
Create a recursive function reverse_string(s) that reverses a given string s without using Ruby's built-in methods like reverse.

For example, reverse_string("hello") should return "olleh".


=end

def reverse_string(s)
  # TODO: Recursively reverse the string without using built-in methods like reverse.
  return "" if s.length == 0
  return s if s.length == 1
  
  return s[-1] + reverse_string(s[0..-2])
end

# The logic of the code is to take the last character of the string and concatenate it with the result of the reverse_string function called on the rest of the string.

# Example usage:
# puts reverse_string("hello") # Output: "olleh"
# puts reverse_string("world") # Output: "dlrow"
# puts reverse_string("ruby") # Output: "ybur"
# puts reverse_string("recursion") # Output: "noisrucer"
# puts reverse_string("") # Output: "" (empty string)
# puts reverse_string("a") # Output: "a" (single character string)

# Note: The function assumes the input is a string. If you want to handle other types of inputs, you can add additional conditions.

# we are not using any built-in methods like reverse, so the function is implemented using recursion.
# The function works by recursively calling itself with the string minus the last character until it reaches the base case of an empty string or a single character string.
# The function builds the reversed string by concatenating the last character with the result of the recursive call.
# The function can handle any string input and will return the reversed string as output.
# The function is efficient and has a time complexity of O(n) since it processes each character of the string once.
# The space complexity is also O(n) due to the recursive call stack and the resulting string.

require 'set'

original_string = "Hello"
reversed_string = ""
i = original_string.length - 1

while i >= 0
  reversed_string << original_string[i]
  i -= 1
end

sets = Set["a", "e", "i", "o", "u"]

puts sets
puts reversed_string #output should be olleH
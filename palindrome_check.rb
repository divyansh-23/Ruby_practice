=begin
You are given a string, and your task is to check whether the provided string is a palindrome. A string is a palindrome if it reads the same forward and backward, ignoring the casing of letters ('A' and 'a' are considered the same) and ignoring non-letter characters.

You may use match (with /[a-zA-Z0-9]/ to check for alphanumeric characters) and downcase methods, but try to solve it without any other Ruby built-in string methods.

Return a boolean value: true if the string is a palindrome and false if it is not.

=end


def palindrome_check(input_string)
  # TODO: Check if the string is a palindrome, ignoring case and non-alphanumeric characters.
  regexp = /[a-zA-Z0-9]/
  
  p1 = 0
  p2 = input_string.length - 1
  
  while p1 < p2 do
    until p1 < p2 && regexp.match(input_string[p1]) do
      p1 += 1
    end
    
    until p2 > p1 && regexp.match(input_string[p2]) do
      p2 -= 1
    end
    
    
    return false if input_string[p1].downcase != input_string[p2].downcase
    
    p1+= 1
    
    p2 -= 1
   
  end  
  
  return true
end


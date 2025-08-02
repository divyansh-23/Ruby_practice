

def replace_character(input_string, c1, c2)
  # TODO: Replace all occurrences of character c1 in input_string with c2

  # =begin
  # input_string_formatted = input_string.chars.map do |char|
  #   if char == c1
  #     char = c2
  #   else
  #     char
  #   end
  # end

  # return input_string_formatted.join
  # =end

  output_string = ""
  
  input_string.each_char do |char|
    if char == c1
      output_string << c2
    else
      output_string << char
    end
  end
  
  return output_string
end


# Question:
# Write a Ruby method called `replace_character` that takes three arguments:
#   1. input_string: a string in which you want to replace characters
#   2. c1: the character to be replaced
#   3. c2: the character to replace with
# The method should return a new string where every occurrence of c1 in input_string is replaced with c2.
#
# Examples:
# replace_character("Hello World", "o", "a") => "Hella Warld"
# replace_character("Ruby is Fun", "u", "i") => "Riby is Fin"
# replace_character("12345!@#$%^&*()_+", "1", "9") => "92345!@#$%^&*()_+"
#
# Test Cases:
puts replace_character("banana", "a", "o") == "bonono"
puts replace_character("mississippi", "s", "z") == "mizzizzippi"
puts replace_character("abcdef", "x", "y") == "abcdef"
puts replace_character("", "a", "b") == ""
puts replace_character("aaaaa", "a", "b") == "bbbbb"
puts replace_character("Hello World", "o", "a") # Output: "Hella Warld"
puts replace_character("Ruby is Fun", "u", "i") # Output: "Riby is Fin"
puts replace_character("12345!@#$%^&*()_+", "1", "9") # Output: "923


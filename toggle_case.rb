=begin
Question: Given a string input_string, your task is to write a method that transforms all the lowercase letters to uppercase and all the uppercase letters to lowercase. If the character is not a letter, do not transform it.

The transformation should be done without using any built-in Ruby methods, it is not allowed to use built-in Ruby functions like downcase, upcase, or similar in your code.

For example, for the input string "HelLo WoRld 123", the output should be "hELlO wOrLD 123".
=end

def toggle_case(input_string)
  # TODO: Convert all uppercase letters to lowercase and all lowercase letters to uppercase without using built-in methods.
  input_string_formatted = input_string.chars.map do |char|
    
    char_ascii = char.ord

    if (97..122).include?(char_ascii)
      char = (65 + (char_ascii - 97)).chr
    elsif (65..90).include?(char_ascii)
      char = (97 + (char_ascii - 65)).chr
    else
      char
    end
  end
  return input_string_formatted.join
end

puts toggle_case("HelLo WoRld 123") # Output: "hELlO wOrLD 123"
puts toggle_case("aBcDeFgHiJkLmNoPqRsTuVwXyZ") # Output: "AbCdEfGhIjKlMnOpQrStUvWxYz"
puts toggle_case("12345!@#$%^&*()_+") # Output: "12345!@#$%^&*()_+"
puts toggle_case("Ruby is Fun!") # Output: "rUBY IS fUN
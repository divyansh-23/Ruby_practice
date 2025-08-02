# Question: Swap Adjacent Characters in String

# Write a Ruby method `swap_adjacent_characters(str)` that takes a string as input and returns a new string 
# where every pair of adjacent characters is swapped. If the string has an odd length, the last character remains unchanged.

# Examples:
# swap_adjacent_characters("abcd") => "badc"
# swap_adjacent_characters("abcde") => "badce"
# swap_adjacent_characters("a") => "a"
# swap_adjacent_characters("") => ""

# Test Cases:
require 'minitest/autorun'

def swap_adjacent_characters(str)
  # Your implementation here
  i = 0 
  length_str = str.length
  swapped_string = ""
  if length_str == 0
    return swapped_string
  end

  while i < length_str
    if i + 1 < length_str
      swapped_string += str[i+1]
      swapped_string += str[i]
      i+= 2
    else
      swapped_string[i] += str[i]
      i += 1
    end      
  end
  return swapped_string
end

class TestSwapAdjacentCharacters < Minitest::Test
  def test_even_length
    assert_equal "badc", swap_adjacent_characters("abcd")
    assert_equal "BAAB", swap_adjacent_characters("ABBA")
  end

  def test_odd_length
    assert_equal "badce", swap_adjacent_characters("abcde")
    assert_equal "ehllo", swap_adjacent_characters("hello")
  end

  def test_single_character
    assert_equal "a", swap_adjacent_characters("a")
  end

  def test_empty_string
    assert_equal "", swap_adjacent_characters("")
  end

  def test_special_characters
    assert_equal "!354", swap_adjacent_characters("3!45")
    assert_equal "1213", swap_adjacent_characters("1231")
  end
end

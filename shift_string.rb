def shift_string(s)
  # TODO: Shift each letter in the string to the next in the alphabet, with wrap-around for 'z' and 'Z'.
  # =begin
  # lenw = s.length - 1

  # for i in 0..lenw do
  #   if (97..121).include?(s[i].ord) || (65..89).include?(s[i].ord)
  #     s[i] = (s[i].ord + 1).chr
  #   elsif s[i] == "Z"
  #     s[i] = "A"
  #   elsif s[i] == "z"
  #     s[i] = "a"
  #   end
  # end
  # return s
  # =end
  # s_char_array = s.chars
  
  shifted_string = s.chars.map do |char|
    case char
    when "A".."Y", "a".."y"
      (char.ord + 1).chr
    when "Z"
      "A"
    when "z"
      "a"
    else
      char
    end
  end
  shifted_string.join
end

puts shift_string("helloz")
puts shift_string("hellozADCS2423SDDzzzZZZZ")
puts shift_string("hellozAZZAA3de3e0;[]")
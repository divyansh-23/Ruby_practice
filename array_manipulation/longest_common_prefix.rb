# solve the longest common prefix among an array of string
def longest_common_prefix(strs)
  return "" if strs.empty?

  shortest = strs.min_by(&:length)

  shortest.chars.each_with_index do |char, i|
    strs.each do |str|
      return shortest[0..i] if str[i] != char
    end
  end

  shortest
end

=begin
def longest_common_prefix(strs) #with builtin methods
  return "" if strs.empty?
  strs.reduce do |prefix, str|
    prefix = prefix[0, str.size] if prefix.size > str.size
    prefix.chars.each_with_index do |char, i|
      if str[i] != char
        prefix = prefix[0...i]
        break
      end
    end
    prefix
  end || ""
end

def longest_common_prefix(strs)
  return "" if strs.length == 0

  # Find the shortest string length
  min_length = strs[0].length
  i = 1
  while i < strs.length
    j = 0
    count = 0
    while j < strs[i].length && j < min_length
      count += 1
      j += 1
    end
    min_length = count if count < min_length
    i += 1
  end

  # Compare characters one by one
  prefix = ""
  i = 0
  while i < min_length
    char = strs[0][i]
    j = 1
    while j < strs.length
      if strs[j][i] != char
        return prefix
      end
      j += 1
    end
    prefix += char
    i += 1
  end

  prefix
end

=end

# Example usage
strs = ["flower", "flow", "flight"]
puts longest_common_prefix(strs)  # Outputs: "fl"

# Example usage with built-in methods
strs = ["dog", "racecar", "car"]
puts longest_common_prefix(strs)  # Outputs: ""
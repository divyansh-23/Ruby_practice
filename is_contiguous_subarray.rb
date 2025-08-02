=begin
You are provided with two arrays of integers, arrayA and arrayB. Your task is to determine if arrayB is a contiguous subarray of arrayA. You need to return true if arrayB is a contiguous subarray of arrayA, and false otherwise.

A subarray is defined as a subset of consecutive elements within an array. For instance, [2, 3] is a subarray of [1, 2, 3, 4] but not a subarray of [1, 3, 2, 4].

Note that you are not allowed to use any built-in Ruby functions for this task except for the length method to get the length of an array. All other operations should be executed with basic Ruby programming constructs.

=end

def is_contiguous_subarray(arrayA, arrayB)
  # TODO: Check if arrayB is a contiguous subarray of arrayA without using built-in methods.
  
  arrayA.each_with_index do |num, index|
    if num == arrayB[0]
      index1 = index
      index2 = 0
      while index1 < arrayA.length and index2 < arrayB.length and arrayA[index1] == arrayB[index2] do
        index1 += 1
        index2 += 1
      end

      return true if index2 == arrayB.length
    end
  end
  return false

end


# better code using sliding window technique

def is_contiguous_subarray(arrayA, arrayB)
  # TODO: Check if arrayB is a contiguous subarray of arrayA without using built-in methods.
  return true if arrayB.length == 0
  return false if arrayB.length > arrayA.length
  
  for i in 0..(arrayA.length - arrayB.length) do
    is_match = true
    
    for j in 0..(arrayB.length - 1) do 
      if arrayA[i+j] != arrayB[j] 
        is_match = false
        break
      end
    end
    return true if is_match
  end
  return false
  
end
=begin 

An array A consisting of N integers is given. Rotation of the array means that each element is shifted right by one index, and the last element of the array is moved to the first place. For example, the rotation of array A = [3, 8, 9, 7, 6] is [6, 3, 8, 9, 7] (elements are shifted right by one index and 6 is moved to the first place).

The goal is to rotate array A K times; that is, each element of A will be shifted to the right K times.

Write a function:

def solution(a, k)
content_copy

that, given an array A consisting of N integers and an integer K, returns the array A rotated K times.

For example, given

A = [3, 8, 9, 7, 6] K = 3
content_copy
the function should return [9, 7, 6, 3, 8]. Three rotations were made:

[3, 8, 9, 7, 6] -> [6, 3, 8, 9, 7] [6, 3, 8, 9, 7] -> [7, 6, 3, 8, 9] [7, 6, 3, 8, 9] -> [9, 7, 6, 3, 8]
content_copy
For another example, given

A = [0, 0, 0] K = 1
content_copy
the function should return [0, 0, 0]

Given

A = [1, 2, 3, 4] K = 4
content_copy
the function should return [1, 2, 3, 4]

Assume that:

N and K are integers within the range [0..100];
each element of array A is an integer within the range [−1,000..1,000].
In your solution, focus on correctness. The performance of your solution will not be the focus of the assessment.

=end


# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def reverse_array(left, right, array)
  # left = 0
  # right = array.length - 1

  # puts array
  while left < right
    array[left], array[right] = array[right], array[left]
    left += 1
    right -= 1
  end
  # puts array  
  return array
end

def solution(a, k)
  # Implement your solution here

  k = k % a.length

  a = reverse_array(0, a.length - 1, a)
  a = reverse_array(0, k - 1, a)
  
  a = reverse_array(k, a.length - 1, a)
  

  return a
end


=begin
#logic

Method 1 (The one I provided)
This method first reverses the elements that are not going to be shifted, and then the elements that are going to be shifted.

Reverse the subarray from index 0 to (n - k - 1).

Reverse the subarray from index (n - k) to (n - 1).

Reverse the entire array from 0 to (n - 1).

In this method, the range 0..k-1 is never used directly. The two subarrays you reverse are of lengths n-k and k, but they are located at different positions.

Method 2 (The one that uses 0..k-1)
This method reverses the entire array first, and then fixes the two parts.

Reverse the entire array from 0 to (n - 1).

Reverse the first k elements, which are at indices 0 to (k - 1).

Reverse the remaining (n-k) elements, which are at indices k to (n - 1).

This method directly uses the range 0..k-1 in its second step.



=end

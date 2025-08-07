=begin
This is a demo task.

Write a function:

def solution(a)

that, given an array A of N integers, returns the smallest positive integer (greater than 0) that does not occur in A.

For example, given A = [1, 3, 6, 4, 1, 2], the function should return 5.

Given A = [1, 2, 3], the function should return 4.

Given A = [−1, −3], the function should return 1.

Write an efficient algorithm for the following assumptions:

N is an integer within the range [1..100,000];
each element of array A is an integer within the range [−1,000,000..1,000,000].


=end

# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

require 'set'

def solution(a)
  # Implement your solution here
  sety = Set.new()
  a.each do |value|
    sety.add(value) if value > 0
  end

  return 1 if sety.empty?

  n = a.length
  result = 1
  (1..n+1).each do |set_value|
    return set_value if !sety.include?(set_value)
  end

end

=begin

GPT BETTER VERSION

Can it be more efficient?
Yes — we can reduce space usage to O(1) (excluding input size), by modifying the array in-place.

This approach is similar to a classic trick called the "Index as Hash" or Cyclic Sort pattern.

✅ Optimized O(N) time, O(1) space solution (in-place array marking)
Key Idea:
Use the index positions of the array to record which numbers from 1 to N exist, without extra memory.

Steps:
Ignore any value <= 0 or > N — they're not useful.

For every valid value val in range 1..N, mark A[val - 1] as negative to indicate presence.

Finally, scan the array:

The first index i where A[i] > 0 → means i+1 is missing.

✅ Ruby Code:

def solution(a)
  n = a.size

  # Step 1: Replace negatives, 0, and too-large numbers with 0 (irrelevant)
  a.map! { |x| (x > 0 && x <= n) ? x : 0 }

  # Step 2: Use index marking
  a.each do |val|
    if val > 0
      index = val - 1
      a[index] = -a[index].abs if a[index] != 0
    end
  end

  # Step 3: Find the first missing positive
  a.each_with_index do |val, i|
    return i + 1 if val >= 0
  end

  # If all 1..N are present
  return n + 1
end
🔍 Example Walkthrough
For:

ruby
Copy
Edit
a = [1, 3, 6, 4, 1, 2]
Size = 6 → we care about values 1 to 6

After processing:

All values 1,2,3,4 are marked present

First unmarked index is 4 → answer = 5

✅ Summary
Approach	Time Complexity	Space Complexity	Notes
Your Set-based	O(N)	O(N)	Clean and easy to implement
In-place	O(N)	O(1)	Trickier, but space-optimized

=end


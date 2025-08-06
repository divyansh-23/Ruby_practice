=begin
You are given N counters, initially set to 0, and you have two possible operations on them:

increase(X) − counter X is increased by 1,
max counter − all counters are set to the maximum value of any counter.
A non-empty array A of M integers is given. This array represents consecutive operations:

if A[K] = X, such that 1 ≤ X ≤ N, then operation K is increase(X),
if A[K] = N + 1 then operation K is max counter.
For example, given integer N = 5 and array A such that:

A[0] = 3 A[1] = 4 A[2] = 4 A[3] = 6 A[4] = 1 A[5] = 4 A[6] = 4
content_copy
the values of the counters after each consecutive operation will be:

(0, 0, 1, 0, 0) (0, 0, 1, 1, 0) (0, 0, 1, 2, 0) (2, 2, 2, 2, 2) (3, 2, 2, 2, 2) (3, 2, 2, 3, 2) (3, 2, 2, 4, 2)
content_copy
The goal is to calculate the value of every counter after all operations.

Write a function:

def solution(n, a)
content_copy

that, given an integer N and a non-empty array A consisting of M integers, returns a sequence of integers representing the values of the counters.

Result array should be returned as an array of integers.

For example, given:

A[0] = 3 A[1] = 4 A[2] = 4 A[3] = 6 A[4] = 1 A[5] = 4 A[6] = 4
content_copy
the function should return [3, 2, 2, 4, 2], as explained above.

Write an efficient algorithm for the following assumptions:

N and M are integers within the range [1..100,000];
each element of array A is an integer within the range [1..N + 1
content_copy
].
=end

# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

=begin
logic == 
Perform operations in A efficiently on N counters:

increase(X): counter X goes up by 1.

max_counter: all counters should become equal to the current max counter value.

We want to avoid doing max_counter with a full loop each time.

🧩 HINT 1: What’s the problem with max_counter?
If you do this every time:

ruby
Copy
Edit
counters.map! { max_value }
And you have many max_counter ops, you’ll hit O(N * M) time.

🔍 Can we avoid applying max_counter to all counters immediately?

💡 HINT 2: What if you remember the last max value instead?
Let’s say you do:

ruby
Copy
Edit
last_update = current_max
Then when you go to increase counter X, you check:

Has this counter been updated since the last max_counter?

If not, bring it up to date first:

ruby
Copy
Edit
counters[X] = last_update if counters[X] < last_update
This is called lazy updating.

🧩 HINT 3: What if there are still counters that were never touched after the last max_counter?
After the loop, you do one final pass:

ruby
Copy
Edit
counters.map! { |val| [val, last_update].max }
This ensures every untouched counter gets at least the last_update value.

✅ Final Plan (O(N + M)) — Step by Step:
Create an array counters = [0] * N

Track:

max_counter → the current maximum value of any counter

last_update → the last value to which all counters should be raised

Loop through array A:

If 1 <= A[K] <= N:

Before incrementing, make sure counters[A[K] - 1] is at least last_update

Increment it and update max_counter

If A[K] == N + 1:

Set last_update = max_counter (don’t apply it yet)

After loop, apply last_update to all counters that are still below it.



=end

def solution(n, a)
  # Implement your solution here
  counters = Array.new(n, 0)

  last_update = 0
  max_counter = 0

  a.each do |counter|
    if counter <= n
      index = counter - 1 
      counters[index] = last_update if counters[index] < last_update
      counters[index] += 1
      max_counter = counters[index] if counters[index] > max_counter
    else
      last_update = max_counter
    end
  end


  (0...n).each do |index|
    counters[index] = last_update if counters[index] < last_update
  end
  return counters
end


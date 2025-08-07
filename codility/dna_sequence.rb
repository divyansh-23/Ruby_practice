=begin
A DNA sequence can be represented as a string consisting of the letters A
content_copy
, C
content_copy
, G
content_copy
 and T
content_copy
, which correspond to the types of successive nucleotides in the sequence. Each nucleotide has an impact factor, which is an integer. Nucleotides of types A
content_copy
, C
content_copy
, G
content_copy
 and T
content_copy
 have impact factors of 1, 2, 3 and 4, respectively. You are going to answer several queries of the form: What is the minimal impact factor of nucleotides contained in a particular part of the given DNA sequence?

The DNA sequence is given as a non-empty string S = S[0]S[1]...S[N-1]
content_copy
 consisting of N characters. There are M queries, which are given in non-empty arrays P and Q, each consisting of M integers. The K-th query (0 ≤ K < M) requires you to find the minimal impact factor of nucleotides contained in the DNA sequence between positions P[K] and Q[K] (inclusive).

For example, consider string S = CAGCCTA
content_copy
 and arrays P, Q such that:

P[0] = 2 Q[0] = 4 P[1] = 5 Q[1] = 5 P[2] = 0 Q[2] = 6
content_copy
The answers to these M = 3 queries are as follows:

The part of the DNA between positions 2 and 4 contains nucleotides G
content_copy
 and C
content_copy
 (twice), whose impact factors are 3 and 2 respectively, so the answer is 2.
The part between positions 5 and 5 contains a single nucleotide T
content_copy
, whose impact factor is 4, so the answer is 4.
The part between positions 0 and 6 (the whole string) contains all nucleotides, in particular nucleotide A
content_copy
 whose impact factor is 1, so the answer is 1.
Write a function:

def solution(s, p, q)
content_copy

that, given a non-empty string S consisting of N characters and two non-empty arrays P and Q consisting of M integers, returns an array consisting of M integers specifying the consecutive answers to all queries.

Result array should be returned as an array of integers.

For example, given the string S = CAGCCTA
content_copy
 and arrays P, Q such that:

P[0] = 2 Q[0] = 4 P[1] = 5 Q[1] = 5 P[2] = 0 Q[2] = 6
content_copy
the function should return the values [2, 4, 1], as explained above.

Write an efficient algorithm for the following assumptions:

N is an integer within the range [1..100,000];
M is an integer within the range [1..50,000];
each element of arrays P and Q is an integer within the range [0..N - 1
content_copy
];
P[K] ≤ Q[K], where 0 ≤ K < M;
string S consists only of upper-case English letters A, C, G, T
content_copy
.
=end

# n * m solution which is not efficient

def solution(s, p, q)
  # Implement your solution here
  impact_factors = {
    "A" => 1,
    "C" => 2,
    "G" => 3,
    "T" => 4
  }  

  result = Array.new(p.length, 0)

  (0..(p.length - 1)).each do |index|
    left = p[index]
    right = q[index]
    mini = impact_factors[s[left]]
    s[left]..s[right].each_char do |impact|
      mini = impact_factors[impact] if mini > impact_factors[impact]
    end
    result[index] = mini
  end
  return result
end





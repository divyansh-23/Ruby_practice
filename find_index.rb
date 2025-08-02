=begin
You are given a list of n integers. Your task is to find the zero-based index of the first occurrence of this specific value in the list. If the provided value isn't found in the list at all, return -1 instead.

In this task, you must implement the solution without using any built-in functions or methods. Specifically, the use of Ruby's index method of an array is not allowed in your solution.

=end

def find_index(lst, val)
  # TODO: Return the zero-based index of the first occurrence of val in lst, or -1 if not found, without using built-in methods.
  lst.each_with_index.each do |num, index|
    return index if num == val
  end
  return -1
end


#logic of the code is to iterate through the list and check each element against the value.

# *** remember to return -1 if the value is not found in the list.


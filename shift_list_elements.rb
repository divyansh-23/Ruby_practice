=begin
In this problem, you are given a list of n integers. Additionally, you are given an integer shift, which represents the number of positions each element in the list should be moved.

Your task is to create a function that should shift every element in the list to the right (for a positive shift) or to the left (for a negative shift) by shift positions. The shift should be circular — the last element should be moved to the start of the list if shift is positive, and vice versa.

Please implement this without the usage of any built-in functions of Ruby to shift, sort, or move items in the list. Your solution’s efficiency should be 
O(n).
=end

def shift_list_elements(ls, shift)
  # TODO: Shift the elements in the list circularly by the given shift value without using built-in methods.
  n = ls.length
  if shift < 0
    shift = - (shift.abs % n)
    shift = n + (shift) 
  end  
  shift = shift % n
  
  output = Array.new(n)

  index = 0
  while index < n do
    new_index = (index + shift) % n 
    output[new_index] = ls[index]
    index += 1
  end
  output
end

#logic of the code is to iterate through the list and shift each element by the given shift value, wrapping around if necessary.
#the logic when shift is negative is to convert it to a positive shift by adding the length of the list to it, and then taking the modulo with the length of the list.

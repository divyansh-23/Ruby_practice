class Heap
  def initialize
    @heap = []
  end

  def insert(value)
    @heap << value
    bubble_up(@heap.size - 1)
  end

  def extract_min
    return nil if @heap.empty?
    min_value = @heap[0]
    last_value = @heap.pop
    if !@heap.empty?
      @heap[0] = last_value
      bubble_down(0)
    end
    min_value
  end

  def peek
    @heap[0]
  end

  def empty?
    @heap.empty?
  end

  private

  def bubble_up(index)
    parent_index = (index - 1) / 2
    while index > 0 && @heap[index] < @heap[parent_index]
      @heap[index], @heap[parent_index] = @heap[parent_index], @heap[index]
      index = parent_index
      parent_index = (index - 1) / 2
    end
  end

  def bubble_down(index)
    size = @heap.size
    while true
      left_child_index = index * 2 + 1
      right_child_index = index * 2 + 2
      smallest_index = index

      if left_child_index < size && @heap[left_child_index] < @heap[smallest_index]
        smallest_index = left_child_index
      end

      if right_child_index < size && @heap[right_child_index] < @heap[smallest_index]
        smallest_index = right_child_index
      end

      break if smallest_index == index

      @heap[index], @heap[smallest_index] = @heap[smallest_index], @heap[index]
      index = smallest_index
    end
  end
end
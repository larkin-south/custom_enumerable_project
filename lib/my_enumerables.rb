module Enumerable
  # Your code goes here
  def my_each_with_index
    i = 0
    until i == self.length
      yield self[i], i
      i += 1
    end
    self
  end

  def my_select
    i = 0
    filter = []
    until i == self.length
      filter << self[i] if yield self[i]
      i += 1
    end
    filter
  end

  def my_all?
    i = 0
    match = []
    until i == self.length
      match << self[i] if yield self[i]
      i += 1
    end
    match == self
  end

  def my_any?
    i = 0
    until i == self.length
      return true if yield self[i]
    end
  end

  def my_none?
    i = 0
    until i == self.length
      return false if yield self[i]

      i += 1
    end
    true
  end

  def my_count
    i = 0
    count = 0
    return (self.index(self[-1]) + 1) unless block_given?
    until i > self.index(self[-1])
      count += 1 if yield self[i]
      i += 1
    end
    count
  end

  def my_map
    i = 0
    new_array = []
    until i == self.length
      new_array.push(yield self[i])
      i += 1
    end
    new_array
  end

  def my_inject(start_value)
    i = 0
    acc = start_value
    until i == self.length
      acc = yield(acc, self[i])
      i += 1
    end
    acc
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    i = 0
    until i == self.length
      yield self[i]
      i += 1
    end
    self
  end
end

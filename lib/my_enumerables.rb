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

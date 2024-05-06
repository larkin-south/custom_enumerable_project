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
      if (yield self[i])
        filter << self[i]
      end
      i += 1
    end
    filter
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

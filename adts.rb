class Stack
  def initialize
    @array = []
  end

  def push(el)
    array.push(el)
    el
  end

  def pop
    array.pop      # removes one element from the stack
  end

  def peek
    array.last  # returns, but doesn't remove, the top element in the stack
  end

  private

  attr_reader :array
end


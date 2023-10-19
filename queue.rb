class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    queue.push(el)
    el
  end

  def dequeue
    queue.shift
  end

  def peef
    queue.first
  end

  private

  attr_reader :queue
end

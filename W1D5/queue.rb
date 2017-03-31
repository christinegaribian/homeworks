class Queue
  def initialize(queue = [])
    @queue = queue
  end

  def enqueue(el)
    @queue.push(el)
  end

  def dequeue
    @queue.shift
  end

  def show
    p @queue
  end
end


queue = Queue.new([1,2,3])
queue.show
queue.enqueue(4)
queue.show
queue.enqueue(5)
queue.show
queue.dequeue
queue.show
queue.dequeue
queue.show

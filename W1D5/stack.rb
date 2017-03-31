class Stack

  def initialize(stack = [])
    @stack = stack
  end

  def add(el)
    @stack.push(el)
  end

  def remove
    @stack.pop
  end

  def show
    p @stack
  end
end

stack = Stack.new([1,2,3])
stack.show
stack.add(4)
stack.show
stack.remove
stack.show
stack.remove
stack.show

class Stack
  def initialize(stack = [])
    @stack = stack
  end

  def push(el)
    @stack << el
  end

  def pop
    last = @stack.last
    @stack = @stack[0..-2]
    last
  end

  def peek
    @stack.last
  end
end
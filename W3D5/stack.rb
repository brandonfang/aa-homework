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

s = Stack.new
p s
p s.push("hello")
p s.push(4)
p s.push(false)
p s.push([1,2,3,4])
p s.pop
p s.peek

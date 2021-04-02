class Queue
    def initialize(queue = [])
        @queue = queue
    end

    def enqueue(ele)
        @queue << ele
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue.first
    end
end
require "set"

class GraphNode
  attr_reader :value
  attr_accessor :neighbors

  def initialize(value)
    @value = value
    @neighbors = []
  end

  def inspect
    "GraphNode #{@value}, #{@neighbors}"
  end
end

def bfs(starting_node, target_value, visited = Set.new)
  queue = [starting_node]
  until queue.empty?
    node = queue.shift
    return node if node.value == target_value
    visited.add(node)
    node.neighbors.each { |neighbor| queue << neighbor if !visited.include?(neighbor) }
  end
  nil
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a, "b")
p bfs(a, "f")
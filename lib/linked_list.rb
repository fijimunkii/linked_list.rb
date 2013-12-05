require_relative 'node'

class LinkedList

  attr_reader :root

  def unshift(value)
    node = Node.new(value)
    node.nxt = @root
    @root = node
  end

  def print_all
    current = @root
    while current
      p current
      current = current.nxt
    end
  end

end

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

  def to_a
    array = Array.new
    current = @root
    while current
      array << current.value
      current = current.nxt
    end
    array
  end

end

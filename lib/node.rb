class Node

  attr_accessor :value, :next

  def initialize(value)
    @value = value
  end

end


root = nil

a = Node.new("A")
a.next = nil

root = a

b = Node.new("B")
b.next = root
root = b

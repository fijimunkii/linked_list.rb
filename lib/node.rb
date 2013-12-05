class Node

  attr_accessor :value, :nxt

  def initialize(value)
    @value = value
  end

end


root = nil

a = Node.new("A")
a.nxt = root
root = a

b = Node.new("B")
b.nxt = root
root = b



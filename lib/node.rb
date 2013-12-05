class Node

  attr_accessor :value, :nxt

  def initialize(value)
    @value = value
  end

  def to_s
    if @nxt.nil?
      nxt_value = 'nil'
    else
      nxt_value = @nxt.value
    end

    "<value: #{@value}, next: #{nxt_value}>"
  end

end


root = nil

a = Node.new("A")
a.nxt = root
root = a

b = Node.new("B")
b.nxt = root
root = b

c = Node.new("C")
c.nxt = root
root = c

d = Node.new("D")
d.nxt = root
root = d





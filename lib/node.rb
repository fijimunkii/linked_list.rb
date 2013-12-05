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


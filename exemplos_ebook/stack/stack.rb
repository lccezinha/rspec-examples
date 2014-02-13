class Stack
  attr_reader :elements

  def initialize
    @elements = []
  end

  def add(element)
    @elements << element
  end

  def top
    @elements.last
  end

  def remove
    @elements.pop
  end

end
class SimpleSet

  def initialize
    @items = []
  end

  def empty?
    @items.empty?
  end

  def push(*items)
    @items |= items
  end
  #alias_method :<<, :push

  def <<(item)
    push item
  end

  def include?(item)
    @items.include? item
  end

  def size
    @items.size
  end

  def each(&block)      # => block to proc
    @items.each(&block) # => proc to block
  end

end
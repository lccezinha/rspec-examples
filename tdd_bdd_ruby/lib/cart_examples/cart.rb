class Cart
  attr_accessor :products

  def initialize
    @products = []
  end

  def add(item)
    @products << item
  end
end
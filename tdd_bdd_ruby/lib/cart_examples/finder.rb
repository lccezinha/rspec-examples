class Finder
  attr_accessor :high, :low

  def find(cart)
    cart.products.each do |product|
      @low  = cart.products.sort_by { |item| item.price }.first
      @high = cart.products.sort_by { |item| item.price }.last
    end
  end
end
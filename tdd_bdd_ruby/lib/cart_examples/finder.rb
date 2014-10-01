class Finder
  attr_accessor :high, :low

  def find(cart)
    cart.products.each do |product|
      if(@low.nil? || product.price < @low.price)
        @low = product
      end
      if(@high.nil? || product.price > @high.price)
        @high = product
      end
    end
  end
end
# all instance method finish with '?' will be generate one matcher
# def some?; end => have_some

class Cart
  attr_reader :products
  def initialize
    @products = []
  end
  def add(product)
    @products << product
  end
  def has_products?
    @products.any?
  end
  def cart?
    true
  end
end

describe Cart do

  it do
    cart = Cart.new
    product = Struct.new(:name)
    cart.add(product)
    expect(cart).to have_products
    # OR
    expect(cart.products).not_to be_empty

    cart = Cart.new
    expect(cart).not_to have_products
    expect(cart.products).to be_empty

    cart = Cart.new
    expect(cart).to be_an_cart
  end
end

RSpec::Matchers.define :be_a_multiple_of do |expected|
  match { |actual| (actual % expected).eql?(0) }
  failure_message_for_should do |actual|
    "expected that #{actual} would be a multiple of #{expected}"
  end
end

describe Numeric do
  it { expect(21).to be_a_multiple_of(3) } # actual: 21 expect: 3
  it { expect(21).to be_a_multiple_of(7) }
end

# ===============

RSpec::Matchers.define :contain_products do |*products|
  match do |category|
    subs = category.subs.map { |sub| sub.products }
    subs.flatten!
    expect(subs & products).to eq(products)
  end

  failure_message_for_should do |category|
    "expected category #{category.name} to contain products #{products}"
  end

end


class Category
  attr_reader :subs, :name
  def initialize(name)
    @name, @subs = name, []
  end
  def add_sub(*sub)
    @subs += sub
  end
end

class Sub
  attr_reader :name, :products
  def initialize(name)
    @name, @products = name, []
  end
  def add_product(product)
    @products << product
  end
end

describe 'Categories' do
  it do
    category = Category.new 'eletronics'
    computers = Sub.new 'computers'
    smarts = Sub.new 'smarts'

    computers.add_product 'macbook'
    smarts.add_product 'motog'

    category.add_sub computers, smarts
    expect(category).to contain_products('macbook', 'motog')
  end
end
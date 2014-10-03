require_relative '../../lib/cart_examples/product.rb'
require_relative '../../lib/cart_examples/cart.rb'
require_relative '../../lib/cart_examples/finder.rb'

require 'spec_helper'

describe 'Finder' do

  it 'finder the lower and higher with 3 products' do
    cart = Cart.new

    cart.add Product.new 'milk', 20
    cart.add Product.new 'ball', 10
    cart.add Product.new 'meat', 6

    finder = Finder.new
    finder.find cart

    expect(finder.low.name).to eq('meat')
    expect(finder.high.name).to eq('milk')
  end

  it 'finder the lower and higher are the same' do
    cart = Cart.new

    cart.add Product.new 'milk', 20

    finder = Finder.new
    finder.find cart

    expect(finder.low.name).to eq('milk')
    expect(finder.high.name).to eq('milk')
  end
end
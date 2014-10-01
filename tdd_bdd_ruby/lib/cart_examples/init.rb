require_relative 'product'
require_relative 'cart'
require_relative 'finder'

cart = Cart.new

cart.add Product.new 'milk', 20
cart.add Product.new 'ball', 10
cart.add Product.new 'meat', 6

finder = Finder.new
finder.find cart

puts "Higher: #{finder.high.name}"
puts "Lowe: #{finder.low.name}"
class Order
  attr_reader :customer, :total, :quantity
  def initialize(customer, total, quantity)
    @customer = customer
    @total = total
    @quantity = quantity
  end
end
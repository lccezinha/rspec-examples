class Note
  attr_reader :customer, :value, :date
  def initialize(customer, value, date)
    @customer = customer
    @value = value
    @date = date
  end
end
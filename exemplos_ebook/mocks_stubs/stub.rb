class Customer
  def has_amount?() true end
end

class Movimentation
  def execute?(customer)
    true if customer.has_amount?
  end
end

describe Customer do
  it 'can get money if money > 0' do
    # customer = Customer.new
    customer = double('customer')
    allow(customer).to receive(:has_amount?).and_return(true)
    movimentation = Movimentation.new()

    expect(movimentation.execute?(customer)).to be_true
  end
end
describe Numeric do
  it do
    a = 10
    expect(a).to eq(10)
    expect(a).to be < 20
    expect(a).to be > 5
    expect(a).to be <= 10
    expect(a).to be >= 10
    expect(Math::PI).to be_within(0.1).of(3.14)
  end
end
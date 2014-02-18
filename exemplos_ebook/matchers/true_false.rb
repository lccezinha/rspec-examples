# Matchers truthy and falsy

# expect(obj).to be_true
# expect(obj).to be_false
# expect(obj).to be_empty
# expect(obj).not_to be_empty
# expect(obj).to be

describe Struct do
  object = Struct.new(:name)
  array = Array.new
  array_2 = Array.new(1, 'Ola')
  it do
    expect(object).to be_true
    # expect(object).to be_false
    expect(array).to be_empty
    expect(array_2).not_to be_empty
  end
end
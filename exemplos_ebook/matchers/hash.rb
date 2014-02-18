# included: is used to ask if a key or a pair are present in Hash
#   hash = { a: 1, b: 2 }
#   expect(hash).to include(:a) => true
#   expect(hash).to include(:a, :b) => true
#   expect(hash).to include(a: 1) => false

# have_key: check if key exists
#   expect(hash).to have_key(:a) => true
# same thing of: expect(hash).to include(:a) => true

# have_value: check if value exists
#   expect(hash).to have_value(1) => true
# same thing of: expect(hash.values).to include(1) => true
#
describe Hash do
  it do
    hash = { a: 1, b: 2 }
    expect(hash).to include(:a)
    expect(hash).to include(:a, :b)
    expect(hash).to include(a: 1)
    expect(hash.values).to include(1)
    expect(hash.keys).to include(:b)
    expect(hash).to have_key(:a)
    expect(hash).to have_value(1)
  end
end
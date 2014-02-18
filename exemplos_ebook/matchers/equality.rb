# Equality Matchers

# If 'a' and 'b' object are the same object
#     a.equal?(b)

# If 'a' and 'b' have the same value
#     a.eql?(b)

# If 'a' and 'b' have the same value with value convesion
#     a == b

#     expect(a).to equal(b) => a.equal?(b)
#     expect(a).to be(b)    => a.equal?(b)
#     expect(a).to eql(b)   => a.eql?(b)
#     expect(a).to eq(b)    => a == b

class Person; end

describe Person do
  it do
    person = Person.new
    person_2 = person
    expect(person_2).to be(person)
    expect(person_2).to equal(person)
  end

  it do
    a = 5
    b = 5
    expect(a).to eql(b)
  end
end
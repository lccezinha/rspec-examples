# be_an_instance_of: check if an object is a instance of some class
# be_kind_of: check the ancesthors of object
describe Fixnum do
  it do
    expect(1).to be_an_instance_of(Fixnum) # true
    # expect(1).to be_an_instance_of(Numeric) # false
    expect(1).to be_kind_of(Numeric) # true
  end
end
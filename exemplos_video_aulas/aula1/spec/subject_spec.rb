describe "Subject" do
  it { expect(subject).to eql("Subject") }
end

describe Object do 
  it { expect(subject).to be_an(Object) }
end

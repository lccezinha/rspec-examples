describe "Foo", :ruby_version => RUBY_VERSION do 
  it "some description" do 
    expect(example.description).to eql("some description")
    expect(example.metadata[:ruby_version]).to eql(RUBY_VERSION)
  end 
end
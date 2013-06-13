describe "Matchers" do 

  it "is equals to" do 
    expect(1).to eql(1)
    expect(1).to eq(1)
    expect(1).to equal(1)
    1.should == 1 #warning
  end

end
describe "let" do 
  let(:numbers) { puts 'numbers' }

  it "description" do 
    #let só é executado quando for chamado

    numbers
    expect(true).to be_true
  end
end
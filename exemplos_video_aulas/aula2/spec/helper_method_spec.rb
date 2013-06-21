module FlashMessage
  def flash
    @flash ||= {}
  end
end

Rspec.configure do |config|
  config.include FlashMessage
end

describe "Helpers" do
  it "set flash message" do 
    flash[:foo] = "bar"
    expect(flash[:foo]).to eql("bar")
  end
end
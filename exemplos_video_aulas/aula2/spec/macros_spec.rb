#cria o módulo com o teste
module EvenMacro
  def should_be_even(&block)
    result = block.call
    it "detect #{result.inspect} as even number" do
      expect(result).to be_even
    end
  end
end

#chama o bloco de config pra extender
RSpec.configure do |config|
  config.extend EvenMacro
end

describe "Macros" do 
  should_be_even { 2 }
  should_be_even { 4 }
  should_be_even { 6 }
end
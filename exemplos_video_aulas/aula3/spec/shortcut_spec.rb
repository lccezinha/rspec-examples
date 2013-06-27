require 'open-uri'

class Shortcuts

  def self.apps
  end

  def request
    @request ||= Request.new
  end

  class Request
    def apps
      open("http://shortcutsapp.info.apps.json").read
    end
  end

end



describe Shortcuts::Request do
  subject(:request) { described_class.new }
  
  describe "#apps" do 
    it "doing request..." do
      request.should_receive(:open)
      .with("http://shortcutsapp.info.apps.json")
      .and_return(stub.as_null_object)

      request.apps
    end

    it "returns api response" do
      request.stub :open => stub(:read => "RESPONSE")
      expect(request.apps).to eql("RESPONSE")
    end 
    
  end
end
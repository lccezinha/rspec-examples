require 'open-uri'
require "json"

class Shortcuts

  def self.json_adapter
    @json_adapter || JSON
  end

  def self.json_adapter=(adapter)
    @json_adapter = adapter
  end


  def self.apps
    App.all
  end

  class Request
    def apps
      open("http://shortcutsapp.info/apps.json").read
    end
  end

  class App
    def self.all
      payload = Shortcuts.json_adapter.load(request.apps)
      payload['apps'].map { |app| new(app) }  
    end

    def self.request
      @request ||= Request.new
    end

  end

end

describe Shortcuts::App do 
  describe ".all" do
    let(:request) { mock("Request") }
    it "parses json" do 
      request.stub :apps => "PAYLOAD"

      Shortcuts.json_adapter
        .should_receive(:load)
        .with('PAYLOAD')
        .and_return(mock .as_null_object)

      Shortcuts::App.all(request)
    end
  end
end



describe Shortcuts do 
  describe ".apps" do 

    it "return apps" do 
      Shortcuts::App.stub :all => "APPS"
      expect(Shortcuts.apps).to eql("APPS")
    end

    describe "json adapter" do 
      it "defaults to JSON" do 
        Shortcuts.json_adapter = nil
        expect(Shortcuts.json_adapter).to eql(JSON)
      end

      it "sets custom json adapter" do
        Shortcuts.json_adapter = "ADAPTER"
        expect(Shortcuts.json_adapter).to eql("ADAPTER")
      end

    end

  end
end

describe Shortcuts::Request do
  subject(:request) { described_class.new }
  
  describe "#apps" do 
    it "doing request..." do
      request.should_receive(:open)
      .with("http://shortcutsapp.info/apps.json")
      .and_return(stub.as_null_object)

      request.apps
    end

    it "returns api response" do
      request.stub :open => stub(:read => "RESPONSE")
      expect(request.apps).to eql("RESPONSE")
    end 
    
  end
end
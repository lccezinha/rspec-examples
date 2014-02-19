require_relative 'shared'

module Publishable
  attr_reader :published_on
  attr_accessor :title
  def publish!
    @published_on = Time.now.strftime("%Y-%m-%d")
  end
  def valid?
    !(@title.size > 20)
  end
end

class Fake
  attr_accessor :title
  include Publishable
end

describe Publishable do
  it { expect(Publishable).to be_kind_of(Module) }
  subject { Fake.new }

  context '#publish' do
    it 'save the publication date' do
      subject.publish!

      today = Time.now.strftime("%Y-%m-%d")
      expect(subject.published_on).to eql(today)
    end
  end
  it_behaves_like 'title'
end

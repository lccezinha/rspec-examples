require_relative 'publishable'

class Paper
  include Publishable
end

describe Paper do
  it { expect(described_class.ancestors).to include(Publishable) }
  it 'title > 20' do
    subject { BlogPost.new }

    subject.title = 'a' * 25
    expect(subject).not_to be_valid
  end
end
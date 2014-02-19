require_relative 'publishable'

class BlogPost
  include Publishable
end

describe BlogPost do
  it { expect(described_class.ancestors).to include(Publishable) }
end
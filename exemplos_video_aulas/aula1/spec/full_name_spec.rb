module Codeplane
  module User
    class FullName
      def initialize(first, last)
        @first, @last = first, last
      end
      def to_s
        "#{@first} #{@last}"
      end
    end
  end
end

describe Codeplane::User::FullName do 
  subject(:full_name) { described_class.new("Luiz", "Cezer") }
  it { expect(full_name.to_s).to eql("Luiz Cezer")}
end
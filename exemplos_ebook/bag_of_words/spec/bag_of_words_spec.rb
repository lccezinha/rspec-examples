require 'spec_helper'
require 'bag_of_words'

describe BagOfWords do
  it 'possible to add words in the bag' do
    bag = BagOfWords.new
    bag.put 'hello', 'worlds'

    # expect(bag.words.size).to eql(2)
    expect(bag).to have(2).words
  end
end
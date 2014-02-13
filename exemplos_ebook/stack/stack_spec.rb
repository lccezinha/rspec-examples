require_relative 'stack.rb'

describe Stack do
  subject(:stack) { Stack.new }

  it '#new' do
    expect(stack.elements).to be_empty
  end

  it '#add' do
    expect { stack.add(1) }.to change(stack.elements, :count).by(1)
  end

  it '#top should be the last item add' do
    stack.add(1)
    stack.add(2)
    expect(stack.top).to eql(2)
  end

  it '#remove' do
    stack.add(1)
    stack.add(5)
    stack.add(6)
    expect { stack.remove }.to change(stack.elements, :count).by(-1)
    expect(stack.top).to eql(5)
  end

end
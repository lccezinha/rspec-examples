shared_examples_for 'title' do
  it 'title > 20' do
    subject.title = 'a' * 25
    expect(subject).not_to be_valid
  end
end
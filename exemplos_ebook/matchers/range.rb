describe Range do
  it do
    expect(1..10).to cover(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
  end
end
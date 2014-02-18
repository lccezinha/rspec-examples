# match_array: is used to compare if array is equal other, without order of values
#   array = [1, 2, 3, 4]
#   expect(array).to match_array([1, 2, 3, 4]) => true
#   expect(array).to match_array([4, 3, 2, 1]) => true
#   expect(array).to match_array([4, 1]) => false

# included: is used to ask if 1 ou N elements are all included in array
#   array = [1, 2, 3, 4]
#   expect(array).to include(1) => true
#   expect(array).to match_array([4, 3, 2, 1]) => true
#   expect(array).to match_array([6, 5]) => false

# start_with: used to know if array starts with some sequence
# end_with: user to know if array ends with some sequence

# array = [1, 2, 3, 4]
# expect(array).to start_with(1, 2) => ture
# expect(array).to start_with(4) => false
# expect(array).to end_with(4) => true
# expect(array).not_to end_with(1) => true

# have(N).items: check size of itens
# have_at_least(N).items: min size of itens
# have_at_most(N).items:  max size of itens

describe Array do

  it do
    array = [1, 2, 3, 4]
    expect(array).to match_array([1, 2, 3, 4])
    expect(array).to match_array([4, 3, 2, 1])
    expect(array).not_to match_array([4, 1])
  end

  it do
    array = [1, 2, 3, 4]
    expect(array).to include(1, 2, 3, 4)
    expect(array).to include(4, 3, 2, 1)
    expect(array).not_to include(7, 5) # TRUE if include 4 AND 5
  end

  it do
    array = [1, 2, 3, 4]
    expect(array).to start_with(1, 2)
    expect(array).not_to start_with(4)
    expect(array).to end_with(4)
    expect(array).not_to end_with(1)
  end

  it do
    array = [1, 3, 4, 5]
    expect(array).to have_at_least(2).items # true
    expect(array).to have(4).items # true
    expect(array).to have(6).items # false
    expect(array).to have_at_most(10).items # true
    expect(array).to have_at_most(2).items # false
  end


end
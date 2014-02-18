# match: check if string match with some regex
# string = 'Luiz'
# expect(string).to match(/iz$/)

# include: check if some substring is present on string
# string = 'Luiz'
# expect(string).to include('uiz')

# start_with: used to know if string starts with some sequence
# end_with: user to know if string ends with some sequence

# string = 'Luiz'
# expect(string).to start_with('L')
# expect(string).to end_with('z')
# expect(string).not_to end_with(1)

describe String do

  it do
    string = 'Luiz'
    expect(string).to match(/iz$/)
    expect(string).to include('uiz')
    expect(string).to start_with('L')
    expect(string).to end_with('z')
  end
end
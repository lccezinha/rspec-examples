# after(:each)  do
#   # executado depois de cada teste
# end

# after do
#   # executado depois de cada teste
# end

# after(:all) do
#   # executado uma vez depois de todos os testes
# end

describe File do

  after do
    FileUtils.rm('./file.txt')
  end

  it do
    expect {
      File.open('./file.txt', 'w')
    }.to change { File.exists?('./file.txt') }.from(false).to(true)
  end

end
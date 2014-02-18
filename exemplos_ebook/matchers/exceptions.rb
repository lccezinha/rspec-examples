# raise_error/raise_exception: expect an exception will be raised
# it's possible to test the class of which Exception will be raised and your message
describe Exception do

  it do
    # always a block!
    expect { raise }.to raise_error
    expect { raise RuntimeError }.to raise_exception RuntimeError
    expect { raise RuntimeError, 'ERROR' }.to raise_error RuntimeError, 'ERROR'
  end

end
require 'ostruct'

describe "Matchers" do 

  it "is equals to" do 
    expect(1).to eql(1)
    expect(1).to eq(1)
    expect(1).to equal(1)
    expect(1).to be > 0
    1.should == 1 #warning
  end
  
  it "compares to truthy/falsy values" do 
    expect(1).to be
    expect(true).to be
    expect(true).to be_true

    expect(false).to be_false
    expect(false).not_to be_true

    expect(nil).to be_nil  
  end

  it "have_*" do 
    obj = OpenStruct.new(:has_name? => true)  
    expect(obj).to have_name  

    expect([]).to have(:no).items
    expect([1]).to have(1).item
    expect([1, 2]).to have_at_least(1).item 
    expect([1]).to have(1).item.exactly 
    expect([1]).to have_exactly(1).item
    expect([1, 2]).to have_at_most(2).items
  end

  it "compares Float" do
    expect(0.3 - 0.2).not_to eql(0.1) 
    
    expect(0.3 - 0.2).to be_within(0.01).of(0.1)
  end

  it "wraps exceptions" do 
    expect { raise "WTF" }.to raise_error
    expect { require 'invalid' }.to raise_error(LoadError)
    expect { raise "LOL" }.to raise_error("LOL")  
  end

  it "throw symbol" do 
    expect { throw :halt }.to throw_symbol(:halt)  
  end

  it "includes" do 
    expect([1, 2, 3]).to include(1) #include(1, 2, 3)
    expect(a: 1).to include(a: 1)
    expect("hello").to include("ll")
  end
  
  it "cover range" do 
    expect(1..10).to include(5) #gera o range todo
    expect(1..10).to include(5) #gera só o item
  end  

  it "starts with" do
    expect('hello').to start_with('he')
    expect([1, 2, 3]).to start_with([1, 2])
  end

  it "regexp" do 
    expect('hello').to match (/\Ahel/)
  end

  it "yiels" do
    mylib = Class.new do 
      def self.configure
        yield self
      end
    end

    expect { |block| mylib.configure(&block) }.to yield_with_args (mylib)
  end

  it "each and block" do
    expect { |block|
      { a: 1, b: 2 }.each(&block)
    }.to yield_successive_args([:a, 1], [:b, 2])
  end

end   

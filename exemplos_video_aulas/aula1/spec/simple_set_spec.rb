=begin 
todo método be_alguma coisa,
sempre procura o _alguma coisa com ? no fim.

Ex:

be_empty -> buscar por método => empty?
be_batata -> buscar por método => batata? 
=end

require 'simple_set'

describe SimpleSet do 
  subject(:set) { SimpleSet.new }

  context 'by default' do 
    it { expect(set).to be_empty }
  end

  context "when add items" do 
    
    it "isn't empty" do 
      set.push(1)
      expect(set).not_to be_empty
    end

    it "include items" do 
      set.push(1)
      expect(set).to include(1)
    end

    it "doesn't include item" do 
      set.push(1)
      expect(set).not_to include(2)
    end

    it "doesn't add duplicated items" do 
      set.push(1)
      set.push(1)

      expect(set.size).to eql(1)
    end

    it "add diff items" do 
      set.push(1)
      set.push(2)

      expect(set.size).to eql(2)
    end

    it "include append method with <<" do
      set << 1
      expect(set).to include(1) 
    end

    it "ignores duplicated when  using shovel method" do 
      set << 1
      set << 1

      expect(set.size).to eql(1)
    end
     
    it "add multiple items" do 
      set.push(1, 2)

      #verificar o size = 2
      expect(set.size).to eql(2)

      #verificar se inclui 1 e 2
      expect(set).to include(1)
      expect(set).to include(2)
    end

  end

  context "when iterating" do 

    it "responds to #each method" do 
      expect(set).to respond_to(:each)
    end

    it "yields item" do 
      set.push(1, 2, 3)
      actual = []

      set.each { |item| actual << item }

      expect(actual).to eql([1, 2, 3])
    end

    it "return enumerator when no block given" do 
      expect(set.each).to be_kind_of(Enumerator)
      expect(set.each).to be_instance_of(Enumerator)
    end

  end


end

=begin 
require 'simple_set'

describe SimpleSet, "emulating Ruby's SimpleSet" do 
  #subject(:nome_qualquer)
  #sempre é recriado
  subject(:set) { SimpleSet.new([]) }

  it 'starts empty' do 
    #set = SimpleSet.new

    #modo antigo
    #set.should be_empty

    #modo novo
    #espera que o objeto seja -> vazio  
    expect(set).to be_empty
  end

  #variação
  #it { expect(SimpleSet.new).to be_empty }

  #variação 2
  #it { should be_empty }

end
=end
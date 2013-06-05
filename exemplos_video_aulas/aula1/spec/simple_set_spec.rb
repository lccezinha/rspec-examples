=begin 
todo método be_alguma coisa,
sempre procura o _alguma coisa com ? no fim.

Ex:

be_empty -> buscar por método => empty?
be_batata -> buscar por método => batata? 
=end

require 'simple_set'

describe SimpleSet, "emulating Ruby's SimpleSet" do 
  
  context 'by default' do 

    subject(:set) { SimpleSet.new([])}

    it { expect(set).to be_empty }

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
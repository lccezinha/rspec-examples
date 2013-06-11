class Renderer
  AbstractMethodError = Class.new(StandardError)

  attr_reader :text

  def initialize(text)
    @text = text
  end

  def to_html
    begin
      tag_name = self.class.name.downcase
      "[#{tag_name}]#{text}[/#{tag_name}]"
    rescue AbstractMethodError => exception
      puts "Erro: #{exception.class}: #{exception.message}"
    end
  end
end

class MarkDown < Renderer
end

class Textile < Renderer
end

class BBCOde < Renderer
end

######
MARKDOWN_SAMPLE = "Markdown"

#grupos compartilhados
shared_examples_for "html renderer" do 
  subject(:renderer) do described_class
    described_class.new(example.metadata[:text])
  end

  it do 
    expect(subject.text).to eql(example.metadata[:text ]) 
  end

  it "generates html" do 
    tag_name = described_class.name.downcase
    text = example.metadata[:text]
    expect(renderer.to_html).to eql("[#{tag_name}]#{text}[/#{tag_name}]")
  end

end

describe MarkDown, :text => "markdown" do
  #usando exemplo compartilhado
  it_behaves_like "html renderer"  
end

describe Textile, :text => "textile" do 
  it_behaves_like "html renderer"  
end

describe BBCOde, :text => "bbcode" do 
  it_behaves_like "html renderer"  
end
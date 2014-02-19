# before(:each)  do
#   # executado antes de cada teste
# end

# before do
#   # executado antes de cada teste
# end

# before(:all) do
#   # executado uma vez antes de todos os testes
# end

class Game
  attr_writer :phase
  def output
    'Congratulations' if hits_target?
  end
  def score
    100 if hits_target?
  end
  protected
  def hits_target?
    @phase.eql?(:final)
  end
end

describe Game, 'in the final phase' do
  context 'when the player hits the target' do

    before do
      @game = Game.new
      @game.phase = :final
    end

    it 'contratulates the player' do
      expect(@game.output).to eql('Congratulations')
    end

    it 'set score to 100' do
      expect(@game.score).to eq(100)
    end

  end
end
class Game
  attr_reader :state, :players
  def initialize
    @state = 'initial'
    @players = []
  end
  def start
    @state = 'started'
  end
  def player(name)
    @players << name
  end
end
describe Game do
  it do
    expect(Game.new.state).to eql('initial')
  end
  it do
    game = Game.new

    expect {
      game.start
    }.to change { game.state }.to('started')

    # SAME
    game = Game.new

    expect {
      game.start
    }.to change { game.state }.from('initial').to('started')

    game = Game.new
    expect {
      game.player('Luiz')
    }.to change(game.players, :size).by(1)

  end
end
require 'views/game'

describe Game do
  let(:player1) {double :player}
  let(:player2) {double :player}
  subject(:game) {described_class.new(player1, player2)}

  it "damages player with attack" do
    expect(game.player2).to receive(:reduce_hp)
    game.attack(game.player2)
  end
end

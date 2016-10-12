require 'views/game'

describe Game do
  let(:player1) {double :player}
  let(:player2) {double :player}
  subject(:game) {described_class.new(player1, player2)}

  it "damages player with attack" do
    expect(game.players[1]).to receive(:reduce_hp)
    game.attack(game.players[1])
  end

  it "expect change to turn after an attack" do
    game.attack(game.players[game.turn[1]])
    expect(game.turn[0]).to eq 1
  end


end

require 'views/game'

describe Game do
  subject(:game) {described_class.new}
  let(:player2) {double :player}

  it "damages player with attack" do
    expect(player2).to receive(:reduce_hp)
    game.attack(player2)
  end
end

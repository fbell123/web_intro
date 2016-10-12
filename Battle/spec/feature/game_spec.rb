describe Game do

  subject(:game){described_class.new(player1, player2)}
  let(:player1){double :player}
  let(:player2){double :player}

  describe "#initialize" do
    it 'accepts two player instances' do
      expect(game.player1).to eq player1
      expect(game.player2).to eq player2
    end
  end

  describe "#attack(player)" do
    it 'attacks a player' do
      sign_in_and_play
      expect(player1).to receive(:take_damage)
      game.attack(player1)
    end
  end

end

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
      expect(player1).to receive(:take_damage)
      game.attack(player1)
    end
  end

  describe "#turn" do
    it 'starts as player1' do
      expect(game.turn).to be player1
    end

    it 'swaps to player2' do
      game.switch
      expect(game.turn).to be player2
    end
  end

end

require 'player'

describe Player do


  subject(:player1) {described_class.new("Jason")}
  subject(:player2) {described_class.new("Timmy")}
  subject(:dead_player){described_class.new("Timmy")}
  let(:dead_player){double :player, hp: 0}

  describe "#initialize" do
    it 'returns player name' do
      expect(player1.name).to eq "Jason"
    end
  end

  it 'returns player 1s hp' do
    expect(player1.hp).to eq player1.hp
  end

  it 'returns player 2s hp' do
    expect(player2.hp).to eq player2.hp
  end


  describe "#take_damage" do
    it 'reduces a players health by 10HP' do
      expect {player1.take_damage}.to change {player1.hp}.by(-10)
    end
  end

  describe "#reached_zero_health" do
    it 'shows message saying player has lost' do
      expect(player1.zero_health).to eq "#{:player1} dun, #{:player1} is dead"
    end
  end


end

require 'player'

describe Player do


  subject(:player1) {described_class.new("Jason")}
  subject(:player2) {described_class.new("Timmy")}

  describe "#initialize" do
    it 'returns player name' do
      expect(player1.name).to eq "Jason"
    end
  end

  it 'returns a players hp' do
    expect(player1.hp).to eq Player::DEFAULT_HP
  end


  describe "#take_damage" do
    it 'reduces a players health by 10HP' do
      expect {player1.take_damage}.to change {player1.hp}.by(-10)
    end
  end


end

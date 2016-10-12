require 'player'

describe Player do


  subject(:player) {described_class.new("Jason")}


  it 'returns player name' do
    expect(player.name).to eq "Jason"
  end

end
